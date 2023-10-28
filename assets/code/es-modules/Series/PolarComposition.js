/* *
 *
 *  (c) 2010-2021 Torstein Honsi
 *
 *  License: www.highcharts.com/license
 *
 *  !!!!!!! SOURCE GETS TRANSPILED BY TYPESCRIPT. EDIT TS FILE ONLY. !!!!!!!
 *
 * */
'use strict';
import A from '../Core/Animation/AnimationUtilities.js';
const { animObject } = A;
import H from '../Core/Globals.js';
import Series from '../Core/Series/Series.js';
import Pane from '../Extensions/Pane.js';
import RadialAxis from '../Core/Axis/RadialAxis.js';
import U from '../Core/Utilities.js';
const { addEvent, defined, find, isNumber, merge, pick, relativeLength, splat, uniqueKey, wrap } = U;
/* *
 *
 *  Constants
 *
 * */
const composedMembers = [];
/* *
 *
 *  Functions
 *
 * */
/**
 * @private
 */
function clipCircle(renderer, x, y, r, innerR) {
    const id = uniqueKey(), clipPath = renderer.createElement('clipPath').attr({
        id: id
    }).add(renderer.defs), wrapper = innerR ?
        renderer.arc(x, y, r, innerR, 0, 2 * Math.PI).add(clipPath) :
        renderer.circle(x, y, r).add(clipPath);
    wrapper.id = id;
    wrapper.clipPath = clipPath;
    return wrapper;
}
/**
 * Find correct align and vertical align based on an angle in polar chart
 * @private
 */
function findAlignments(angle, options) {
    let align, verticalAlign;
    if (options.align === null) {
        if (angle > 20 && angle < 160) {
            align = 'left'; // right hemisphere
        }
        else if (angle > 200 && angle < 340) {
            align = 'right'; // left hemisphere
        }
        else {
            align = 'center'; // top or bottom
        }
        options.align = align;
    }
    if (options.verticalAlign === null) {
        if (angle < 45 || angle > 315) {
            verticalAlign = 'bottom'; // top part
        }
        else if (angle > 135 && angle < 225) {
            verticalAlign = 'top'; // bottom part
        }
        else {
            verticalAlign = 'middle'; // left or right
        }
        options.verticalAlign = verticalAlign;
    }
    return options;
}
/**
 * #6212 Calculate connectors for spline series in polar chart.
 * @private
 * @param {boolean} calculateNeighbours
 *        Check if connectors should be calculated for neighbour points as
 *        well allows short recurence
 */
function getConnectors(segment, index, calculateNeighbours, connectEnds) {
    const smoothing = 1.5, denom = smoothing + 1, addedNumber = connectEnds ? 1 : 0;
    let i, leftContX, leftContY, rightContX, rightContY, jointAngle;
    // Calculate final index of points depending on the initial index value.
    // Because of calculating neighbours, index may be outisde segment
    // array.
    if (index >= 0 && index <= segment.length - 1) {
        i = index;
    }
    else if (index < 0) {
        i = segment.length - 1 + index;
    }
    else {
        i = 0;
    }
    // 1 means control points midway between points, 2 means 1/3 from
    // the point, 3 is 1/4 etc;
    const prevPointInd = ((i - 1 < 0) ? segment.length - (1 + addedNumber) : i - 1), nextPointInd = (i + 1 > segment.length - 1) ? addedNumber : i + 1, previousPoint = segment[prevPointInd], nextPoint = segment[nextPointInd], previousX = previousPoint.plotX, previousY = previousPoint.plotY, nextX = nextPoint.plotX, nextY = nextPoint.plotY, plotX = segment[i].plotX, // actual point
    plotY = segment[i].plotY;
    leftContX = (smoothing * plotX + previousX) / denom;
    leftContY = (smoothing * plotY + previousY) / denom;
    rightContX = (smoothing * plotX + nextX) / denom;
    rightContY = (smoothing * plotY + nextY) / denom;
    // distance left control point
    const dLControlPoint = Math.sqrt(Math.pow(leftContX - plotX, 2) + Math.pow(leftContY - plotY, 2)), dRControlPoint = Math.sqrt(Math.pow(rightContX - plotX, 2) + Math.pow(rightContY - plotY, 2)), leftContAngle = Math.atan2(leftContY - plotY, leftContX - plotX), rightContAngle = Math.atan2(rightContY - plotY, rightContX - plotX);
    jointAngle = (Math.PI / 2) + ((leftContAngle + rightContAngle) / 2);
    // Ensure the right direction, jointAngle should be in the same quadrant
    // as leftContAngle
    if (Math.abs(leftContAngle - jointAngle) > Math.PI / 2) {
        jointAngle -= Math.PI;
    }
    // Find the corrected control points for a spline straight through the
    // point
    leftContX = plotX + Math.cos(jointAngle) * dLControlPoint;
    leftContY = plotY + Math.sin(jointAngle) * dLControlPoint;
    rightContX = plotX + Math.cos(Math.PI + jointAngle) * dRControlPoint;
    rightContY = plotY + Math.sin(Math.PI + jointAngle) * dRControlPoint;
    // push current point's connectors into returned object
    const ret = {
        rightContX: rightContX,
        rightContY: rightContY,
        leftContX: leftContX,
        leftContY: leftContY,
        plotX: plotX,
        plotY: plotY
    };
    // calculate connectors for previous and next point and push them inside
    // returned object
    if (calculateNeighbours) {
        ret.prevPointCont = getConnectors(segment, prevPointInd, false, connectEnds);
    }
    return ret;
}
function onChartAfterDrawChartBox() {
    (this.pane || []).forEach((pane) => {
        pane.render();
    });
}
/**
 * If polar has polygonal grid lines, force start and endOnTick on radial axis
 * @private
 */
function onChartAfterInit(event) {
    const xAxis = event.args[0].xAxis, yAxis = event.args[0].yAxis, chart = event.args[0].chart;
    if (xAxis && yAxis) {
        if (yAxis.gridLineInterpolation === 'polygon') {
            xAxis.startOnTick = true;
            xAxis.endOnTick = true;
        }
        else if (xAxis.gridLineInterpolation === 'polygon' &&
            chart.inverted) {
            yAxis.startOnTick = true;
            yAxis.endOnTick = true;
        }
    }
}
function onChartGetAxes() {
    if (!this.pane) {
        this.pane = [];
    }
    this.options.pane = splat(this.options.pane);
    this.options.pane.forEach((paneOptions) => {
        new Pane(// eslint-disable-line no-new
        paneOptions, this);
    }, this);
}
/**
 * Get selection dimensions
 * @private
 */
function onPointerGetSelectionBox(event) {
    const marker = event.args.marker, xAxis = this.chart.xAxis[0], yAxis = this.chart.yAxis[0], inverted = this.chart.inverted, radialAxis = inverted ? yAxis : xAxis, linearAxis = inverted ? xAxis : yAxis;
    if (this.chart.polar) {
        event.preventDefault();
        let start = (marker.attr ? marker.attr('start') : marker.start) - radialAxis.startAngleRad;
        let r = (marker.attr ? marker.attr('r') : marker.r);
        let end = (marker.attr ? marker.attr('end') : marker.end) - radialAxis.startAngleRad;
        let innerR = (marker.attr ? marker.attr('innerR') : marker.innerR);
        event.result.x = start + radialAxis.pos;
        event.result.width = end - start;
        // innerR goes from pane's center but toValue computes values from top
        event.result.y = linearAxis.len + linearAxis.pos - innerR;
        event.result.height = innerR - r;
    }
}
/**
 * Get attrs for Polar selection marker
 * @private
 */
function onPointerGetSelectionMarkerAttrs(event) {
    const chart = this.chart;
    if (chart.polar && chart.hoverPane && chart.hoverPane.axis) {
        event.preventDefault();
        const center = chart.hoverPane.center, mouseDownX = (this.mouseDownX || 0), mouseDownY = (this.mouseDownY || 0), chartY = event.args.chartY, chartX = event.args.chartX, fullCircle = Math.PI * 2, startAngleRad = chart.hoverPane.axis.startAngleRad, endAngleRad = chart.hoverPane.axis.endAngleRad, linearAxis = chart.inverted ? chart.xAxis[0] : chart.yAxis[0], attrs = {};
        let shapeType = 'arc';
        attrs.x = center[0] + chart.plotLeft;
        attrs.y = center[1] + chart.plotTop;
        // Adjust the width of the selection marker
        if (this.zoomHor) {
            const paneRadRange = startAngleRad > 0 ?
                endAngleRad - startAngleRad :
                Math.abs(startAngleRad) + Math.abs(endAngleRad);
            let startAngle = Math.atan2(mouseDownY - chart.plotTop - center[1], mouseDownX - chart.plotLeft - center[0]) - startAngleRad, endAngle = Math.atan2(chartY - chart.plotTop - center[1], chartX - chart.plotLeft - center[0]) - startAngleRad;
            attrs.r = center[2] / 2;
            attrs.innerR = center[3] / 2;
            if (startAngle <= 0) {
                startAngle += fullCircle;
            }
            if (endAngle <= 0) {
                endAngle += fullCircle;
            }
            if (endAngle < startAngle) {
                // Swapping angles
                endAngle = [startAngle, startAngle = endAngle][0];
            }
            // If pane is not a full circle we need to let users zoom to the min
            // We do this by swapping angles after pointer crosses
            // middle angle (swapAngle) of the missing slice of the pane
            if (paneRadRange < fullCircle) {
                const swapAngle = endAngleRad + (fullCircle - paneRadRange) / 2;
                if (startAngleRad + endAngle > swapAngle) {
                    endAngle = startAngle;
                    startAngle = startAngleRad <= 0 ? startAngleRad : 0;
                }
            }
            const start = attrs.start =
                Math.max(startAngle + startAngleRad, startAngleRad), end = attrs.end =
                Math.min(endAngle + startAngleRad, endAngleRad);
            // Adjust the selection shape for polygon grid lines
            if (linearAxis.options.gridLineInterpolation === 'polygon') {
                const radialAxis = chart.hoverPane.axis, tickInterval = radialAxis.tickInterval, min = start - radialAxis.startAngleRad + radialAxis.pos, max = end - start;
                let path = linearAxis.getPlotLinePath({
                    value: linearAxis.max
                }), pathStart = radialAxis.toValue(min), pathEnd = radialAxis.toValue(min + max);
                if (pathStart < radialAxis.getExtremes().min) {
                    const { min, max } = radialAxis.getExtremes();
                    pathStart = max - (min - pathStart);
                }
                if (pathEnd < radialAxis.getExtremes().min) {
                    const { min, max } = radialAxis.getExtremes();
                    pathEnd = max - (min - pathEnd);
                }
                if (pathEnd < pathStart) {
                    // Swapping angles
                    pathEnd = [pathStart, pathStart = pathEnd][0];
                }
                // Get trimmed path
                path = trimPath(path, pathStart, pathEnd, radialAxis);
                // Add center to the path
                path.push([
                    'L', center[0] + chart.plotLeft,
                    chart.plotTop + center[1]
                ]);
                attrs.d = path;
                shapeType = 'path';
            }
        }
        // Adjust the height of the selection marker
        if (this.zoomVert) {
            const linearAxis = chart.inverted ? chart.xAxis[0] : chart.yAxis[0];
            let innerR = Math.sqrt(Math.pow(mouseDownX - chart.plotLeft - center[0], 2) +
                Math.pow(mouseDownY - chart.plotTop - center[1], 2)), r = Math.sqrt(Math.pow(chartX - chart.plotLeft - center[0], 2) +
                Math.pow(chartY - chart.plotTop - center[1], 2));
            if (r < innerR) {
                // Swapping angles
                innerR = [r, r = innerR][0];
            }
            if (r > center[2] / 2) {
                r = center[2] / 2;
            }
            if (innerR < center[3] / 2) {
                innerR = center[3] / 2;
            }
            if (!this.zoomHor) {
                attrs.start = startAngleRad;
                attrs.end = endAngleRad;
            }
            attrs.r = r;
            attrs.innerR = innerR;
            if (linearAxis.options.gridLineInterpolation === 'polygon') {
                const end = linearAxis.toValue(linearAxis.len + linearAxis.pos - innerR), start = linearAxis.toValue(linearAxis.len + linearAxis.pos - r), path = linearAxis.getPlotLinePath({
                    value: start
                }).concat(linearAxis.getPlotLinePath({
                    value: end,
                    reverse: true
                }));
                attrs.d = path;
                shapeType = 'path';
            }
        }
        if (this.zoomHor &&
            this.zoomVert &&
            linearAxis.options.gridLineInterpolation === 'polygon') {
            const radialAxis = chart.hoverPane.axis, start = attrs.start || 0, end = attrs.end || 0, min = start - radialAxis.startAngleRad + radialAxis.pos, max = end - start, pathStart = radialAxis.toValue(min), pathEnd = radialAxis.toValue(min + max);
            // Trim path
            if (attrs.d instanceof Array) {
                let innerPath = attrs.d.slice(0, attrs.d.length / 2), outerPath = attrs.d.slice(attrs.d.length / 2, attrs.d.length);
                outerPath = [...outerPath].reverse();
                const radialAxis = chart.hoverPane.axis;
                innerPath = trimPath(innerPath, pathStart, pathEnd, radialAxis);
                outerPath = trimPath(outerPath, pathStart, pathEnd, radialAxis);
                if (outerPath) {
                    (outerPath[0][0]) = 'L';
                }
                outerPath = [...outerPath].reverse();
                attrs.d = innerPath.concat(outerPath);
                shapeType = 'path';
            }
        }
        event.attrs = attrs;
        event.shapeType = shapeType;
    }
}
/**
 * @private
 */
function onSeriesAfterInit() {
    const chart = this.chart;
    if (chart.polar) {
        this.polar = new PolarAdditions(this);
        // Add flags that identifies radial inverted series
        if (chart.inverted) {
            this.isRadialSeries = true;
            if (this.is('column')) {
                this.isRadialBar = true;
            }
        }
    }
}
/**
 * Extend translate. The plotX and plotY values are computed as if the polar
 * chart were a cartesian plane, where plotX denotes the angle in radians
 * and (yAxis.len - plotY) is the pixel distance from center.
 * @private
 */
function onSeriesAfterTranslate() {
    if (this.chart.polar && this.xAxis) {
        const series = this, { xAxis, yAxis } = series, chart = series.chart;
        // Prepare k-d-tree handling. It searches by angle (clientX) in
        // case of shared tooltip, and by two dimensional distance in case
        // of non-shared.
        series.kdByAngle = chart.tooltip && chart.tooltip.shared;
        if (series.kdByAngle) {
            series.searchPoint = searchPointByAngle;
        }
        else {
            series.options.findNearestPointBy = 'xy';
        }
        const points = series.points;
        let i = points.length;
        while (i--) {
            // Translate plotX, plotY from angle and radius to true plot
            // coordinates
            if (!series.is('column') && !series.is('columnrange')) {
                series.polar.toXY(points[i]);
            }
            // Treat points below Y axis min as null (#10082)
            if (!chart.hasParallelCoordinates &&
                !series.yAxis.reversed) {
                if (pick(points[i].y, Number.MIN_VALUE) < yAxis.min ||
                    points[i].x < xAxis.min ||
                    points[i].x > xAxis.max) {
                    // Destroy markers
                    points[i].isNull = true;
                    // Destroy column's graphic
                    points[i].plotY = NaN;
                }
                else {
                    // Restore isNull flag
                    points[i].isNull =
                        points[i].isValid && !points[i].isValid();
                }
            }
        }
        // Perform clip after render
        if (!this.hasClipCircleSetter) {
            this.hasClipCircleSetter = !!series.eventsToUnbind.push(addEvent(series, 'afterRender', function () {
                let circ;
                if (chart.polar) {
                    // For clipping purposes there is a need for
                    // coordinates from the absolute center
                    circ = this.yAxis.pane.center;
                    if (!this.clipCircle) {
                        this.clipCircle = clipCircle(chart.renderer, circ[0], circ[1], circ[2] / 2, circ[3] / 2);
                    }
                    else {
                        this.clipCircle.animate({
                            x: circ[0],
                            y: circ[1],
                            r: circ[2] / 2,
                            innerR: circ[3] / 2
                        });
                    }
                    this.group.clip(this.clipCircle);
                    this.setClip = H.noop;
                }
            }));
        }
    }
}
/**
 * Search a k-d tree by the point angle, used for shared tooltips in polar
 * charts
 * @private
 */
function searchPointByAngle(e) {
    const series = this, chart = series.chart, xAxis = series.xAxis, center = xAxis.pane && xAxis.pane.center, plotX = e.chartX - (center && center[0] || 0) - chart.plotLeft, plotY = e.chartY - (center && center[1] || 0) - chart.plotTop;
    return series.searchKDTree({
        clientX: 180 + (Math.atan2(plotX, plotY) * (-180 / Math.PI))
    });
}
/**
 * Trim polygonal path
 * @private
 */
function trimPath(path, start, end, radialAxis) {
    const tickInterval = radialAxis.tickInterval, ticks = radialAxis.tickPositions;
    let lastTick = find(ticks, (tick) => tick >= end), firstTick = find([...ticks].reverse(), (tick) => tick <= start);
    if (!defined(lastTick)) {
        lastTick = ticks[ticks.length - 1];
    }
    if (!defined(firstTick)) {
        firstTick = ticks[0];
        lastTick += tickInterval;
        path[0][0] = 'L';
        // To do: figure out why -3 or -2
        path.unshift(path[path.length - 3]);
    }
    path = path.slice(ticks.indexOf(firstTick), ticks.indexOf(lastTick) + 1);
    path[0][0] = 'M';
    return path;
}
/**
 * Extend chart.get to also search in panes. Used internally in
 * responsiveness and chart.update.
 * @private
 */
function wrapChartGet(proceed, id) {
    return find(this.pane || [], function (pane) {
        // @todo remove id or define id type:
        return pane.options.id === id;
    }) || proceed.call(this, id);
}
/**
 * Align column data labels outside the columns. #1199.
 * @private
 */
function wrapColumnSeriesAlignDataLabel(proceed, point, dataLabel, options, alignTo, isNew) {
    const chart = this.chart, inside = pick(options.inside, !!this.options.stacking);
    let angle, shapeArgs, labelPos;
    if (chart.polar) {
        angle = point.rectPlotX / Math.PI * 180;
        if (!chart.inverted) {
            // Align nicely outside the perimeter of the columns
            options = findAlignments(angle, options);
        }
        else { // Required corrections for data labels of inverted bars
            // The plotX and plotY are correctly set therefore they
            // don't need to be swapped (inverted argument is false)
            this.forceDL = chart.isInsidePlot(point.plotX, point.plotY);
            // Checks if labels should be positioned inside
            if (inside && point.shapeArgs) {
                shapeArgs = point.shapeArgs;
                // Calculates pixel positions for a data label to be
                // inside
                labelPos =
                    this.yAxis.postTranslate(
                    // angle
                    ((shapeArgs.start || 0) + (shapeArgs.end || 0)) / 2 -
                        this
                            .xAxis.startAngleRad, 
                    // radius
                    point.barX +
                        point.pointWidth / 2);
                alignTo = merge(alignTo, {
                    x: labelPos.x - chart.plotLeft,
                    y: labelPos.y - chart.plotTop
                });
            }
            else if (point.tooltipPos) {
                alignTo = merge(alignTo, {
                    x: point.tooltipPos[0],
                    y: point.tooltipPos[1]
                });
            }
            options.align = pick(options.align, 'center');
            options.verticalAlign =
                pick(options.verticalAlign, 'middle');
        }
        Series.prototype.alignDataLabel.call(this, point, dataLabel, options, alignTo, isNew);
        // Hide label of a point (only inverted) that is outside the
        // visible y range
        if (this.isRadialBar && point.shapeArgs &&
            point.shapeArgs.start === point.shapeArgs.end) {
            dataLabel.hide();
        }
        else {
            dataLabel.show();
        }
    }
    else {
        proceed.call(this, point, dataLabel, options, alignTo, isNew);
    }
}
/**
 * Extend the column prototype's translate method
 * @private
 */
function onAfterColumnTranslate() {
    const series = this, options = series.options, stacking = options.stacking, chart = series.chart, xAxis = series.xAxis, yAxis = series.yAxis, reversed = yAxis.reversed, center = yAxis.center, startAngleRad = xAxis.startAngleRad, endAngleRad = xAxis.endAngleRad, visibleRange = endAngleRad - startAngleRad;
    let threshold = options.threshold, thresholdAngleRad = 0, points, point, i, yMin, yMax, start = 0, end = 0, tooltipPos, pointX, pointY, stackValues, stack, barX, innerR, r;
    // Postprocess plot coordinates
    if (xAxis.isRadial) {
        points = series.points;
        i = points.length;
        yMin = yAxis.translate(yAxis.min);
        yMax = yAxis.translate(yAxis.max);
        threshold = options.threshold || 0;
        if (chart.inverted) {
            // Finding a correct threshold
            if (isNumber(threshold)) {
                thresholdAngleRad = yAxis.translate(threshold);
                // Checks if threshold is outside the visible range
                if (defined(thresholdAngleRad)) {
                    if (thresholdAngleRad < 0) {
                        thresholdAngleRad = 0;
                    }
                    else if (thresholdAngleRad > visibleRange) {
                        thresholdAngleRad = visibleRange;
                    }
                    // Adding start angle offset
                    series.translatedThreshold =
                        thresholdAngleRad + startAngleRad;
                }
            }
        }
        while (i--) {
            point = points[i];
            barX = point.barX;
            pointX = point.x;
            pointY = point.y;
            point.shapeType = 'arc';
            if (chart.inverted) {
                point.plotY = yAxis.translate(pointY);
                if (stacking && yAxis.stacking) {
                    stack = yAxis.stacking.stacks[(pointY < 0 ? '-' : '') +
                        series.stackKey];
                    if (series.visible && stack && stack[pointX]) {
                        if (!point.isNull) {
                            stackValues = stack[pointX].points[series.getStackIndicator(void 0, pointX, series.index).key];
                            // Translating to radial values
                            start = yAxis.translate(stackValues[0]);
                            end = yAxis.translate(stackValues[1]);
                            // If starting point is beyond the
                            // range, set it to 0
                            if (defined(start)) {
                                start = U.clamp(start, 0, visibleRange);
                            }
                        }
                    }
                }
                else {
                    // Initial start and end angles for radial bar
                    start = thresholdAngleRad;
                    end = point.plotY;
                }
                if (start > end) {
                    // Swapping start and end
                    end = [start, start = end][0];
                }
                // Prevent from rendering point outside the
                // acceptable circular range
                if (!reversed) {
                    if (start < yMin) {
                        start = yMin;
                    }
                    else if (end > yMax) {
                        end = yMax;
                    }
                    else if (end < yMin || start > yMax) {
                        start = end = 0;
                    }
                }
                else {
                    if (end > yMin) {
                        end = yMin;
                    }
                    else if (start < yMax) {
                        start = yMax;
                    }
                    else if (start > yMin || end < yMax) {
                        start = end = visibleRange;
                    }
                }
                if (yAxis.min > yAxis.max) {
                    start = end = reversed ? visibleRange : 0;
                }
                start += startAngleRad;
                end += startAngleRad;
                if (center) {
                    point.barX = barX += center[3] / 2;
                }
                // In case when radius, inner radius or both are negative, a
                // point is rendered but partially or as a center point
                innerR = Math.max(barX, 0);
                r = Math.max(barX + point.pointWidth, 0);
                // Handle border radius
                const brOption = options.borderRadius, brValue = typeof brOption === 'object' ?
                    brOption.radius : brOption, borderRadius = relativeLength(brValue || 0, r - innerR);
                point.shapeArgs = {
                    x: center[0],
                    y: center[1],
                    r,
                    innerR,
                    start,
                    end,
                    borderRadius
                };
                // Fade out the points if not inside the polar "plot area"
                point.opacity = start === end ? 0 : void 0;
                // A correct value for stacked or not fully visible
                // point
                point.plotY = (defined(series.translatedThreshold) &&
                    (start < series.translatedThreshold ? start : end)) -
                    startAngleRad;
                // Non-inverted polar columns
            }
            else {
                start = barX + startAngleRad;
                point.shapeArgs = series.polar.arc(point.yBottom, point.plotY, start, start + point.pointWidth);
                // Disallow border radius on polar columns for now. It would
                // take some refactoring to work with the `scope` and the
                // `where` options. Those options would require that only
                // individual corners be rounded, in practice individual calls
                // to applyBorderRadius from the extended `arc` function. That
                // would be a viable solution, though it would not be perfect
                // until we implemented rounding that included the lower points
                // in the stack, like we have for cartesian column.
                point.shapeArgs.borderRadius = 0;
            }
            // Provided a correct coordinates for the tooltip
            series.polar.toXY(point);
            if (chart.inverted) {
                tooltipPos = yAxis.postTranslate(point.rectPlotY, barX + point.pointWidth / 2);
                point.tooltipPos = [
                    tooltipPos.x - chart.plotLeft,
                    tooltipPos.y - chart.plotTop
                ];
            }
            else {
                point.tooltipPos = [point.plotX, point.plotY];
            }
            if (center) {
                point.ttBelow = point.plotY > center[1];
            }
        }
    }
}
/**
 * Extend getSegmentPath to allow connecting ends across 0 to provide a
 * closed circle in line-like series.
 * @private
 */
function wrapLineSeriesGetGraphPath(proceed, points) {
    const series = this;
    let firstValid, popLastPoint;
    // Connect the path
    if (this.chart.polar) {
        points = points || this.points;
        // Append first valid point in order to connect the ends
        for (let i = 0; i < points.length; i++) {
            if (!points[i].isNull) {
                firstValid = i;
                break;
            }
        }
        /**
         * Polar charts only. Whether to connect the ends of a line series
         * plot across the extremes.
         *
         * @sample {highcharts} highcharts/plotoptions/line-connectends-false/
         *         Do not connect
         *
         * @type      {boolean}
         * @since     2.3.0
         * @product   highcharts
         * @apioption plotOptions.series.connectEnds
         */
        if (this.options.connectEnds !== false &&
            typeof firstValid !== 'undefined') {
            this.connectEnds = true; // re-used in splines
            points.splice(points.length, 0, points[firstValid]);
            popLastPoint = true;
        }
        // For area charts, pseudo points are added to the graph, now we
        // need to translate these
        points.forEach((point) => {
            if (typeof point.polarPlotY === 'undefined') {
                series.polar.toXY(point);
            }
        });
    }
    // Run uber method
    const ret = proceed.apply(this, [].slice.call(arguments, 1));
    // #6212 points.splice method is adding points to an array. In case of
    // areaspline getGraphPath method is used two times and in both times
    // points are added to an array. That is why points.pop is used, to get
    // unmodified points.
    if (popLastPoint) {
        points.pop();
    }
    return ret;
}
/**
 * Extend getCoordinates to prepare for polar axis values
 * @private
 */
function wrapPointerGetCoordinates(proceed, e) {
    const chart = this.chart;
    let ret = {
        xAxis: [],
        yAxis: []
    };
    if (chart.polar) {
        chart.axes.forEach((axis) => {
            // Skip colorAxis
            if (axis.coll === 'colorAxis') {
                return;
            }
            const isXAxis = axis.isXAxis, center = axis.center, x = e.chartX - center[0] - chart.plotLeft, y = e.chartY - center[1] - chart.plotTop;
            ret[isXAxis ? 'xAxis' : 'yAxis'].push({
                axis: axis,
                value: axis.translate(isXAxis ?
                    Math.PI - Math.atan2(x, y) : // angle
                    // distance from center
                    Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2)), true)
            });
        });
    }
    else {
        ret = proceed.call(this, e);
    }
    return ret;
}
/**
 * Prevent zooming on mobile devices
 * @private
 */
function wrapPointerPinch(proceed, e) {
    if (this.chart.polar) {
        return;
    }
    proceed.call(this, e);
}
/**
 * Define the animate method for regular series
 * @private
 */
function wrapSeriesAnimate(proceed, init) {
    const series = this, chart = this.chart, group = this.group, markerGroup = this.markerGroup, center = this.xAxis && this.xAxis.center, plotLeft = chart.plotLeft, plotTop = chart.plotTop;
    let animation = this.options.animation, attribs, paneInnerR, graphic, shapeArgs, r, innerR;
    // Specific animation for polar charts
    if (chart.polar) {
        if (series.isRadialBar) {
            if (!init) {
                // Run the pie animation for radial bars
                series.startAngleRad = pick(series.translatedThreshold, series.xAxis.startAngleRad);
                H.seriesTypes.pie.prototype.animate.call(series, init);
            }
        }
        else {
            animation = animObject(animation);
            // A different animation needed for column like series
            if (series.is('column')) {
                if (!init) {
                    paneInnerR = center[3] / 2;
                    series.points.forEach((point) => {
                        graphic = point.graphic;
                        shapeArgs = point.shapeArgs;
                        r = shapeArgs && shapeArgs.r;
                        innerR = shapeArgs && shapeArgs.innerR;
                        if (graphic && shapeArgs) {
                            // start values
                            graphic.attr({
                                r: paneInnerR,
                                innerR: paneInnerR
                            });
                            // animate
                            graphic.animate({
                                r: r,
                                innerR: innerR
                            }, series.options.animation);
                        }
                    });
                }
            }
            else {
                // Initialize the animation
                if (init) {
                    // Scale down the group and place it in the center
                    attribs = {
                        translateX: center[0] + plotLeft,
                        translateY: center[1] + plotTop,
                        scaleX: 0.001,
                        scaleY: 0.001
                    };
                    group.attr(attribs);
                    if (markerGroup) {
                        markerGroup.attr(attribs);
                    }
                    // Run the animation
                }
                else {
                    attribs = {
                        translateX: plotLeft,
                        translateY: plotTop,
                        scaleX: 1,
                        scaleY: 1
                    };
                    group.animate(attribs, animation);
                    if (markerGroup) {
                        markerGroup.animate(attribs, animation);
                    }
                }
            }
        }
        // For non-polar charts, revert to the basic animation
    }
    else {
        proceed.call(this, init);
    }
}
/**
 * Overridden method for calculating a spline from one point to the next
 * @private
 */
function wrapSplineSeriesGetPointSpline(proceed, segment, point, i) {
    let ret, connectors;
    if (this.chart.polar) {
        // moveTo or lineTo
        if (!i) {
            ret = ['M', point.plotX, point.plotY];
        }
        else { // curve from last point to this
            connectors = getConnectors(segment, i, true, this.connectEnds);
            const rightContX = connectors.prevPointCont &&
                connectors.prevPointCont.rightContX;
            const rightContY = connectors.prevPointCont &&
                connectors.prevPointCont.rightContY;
            ret = [
                'C',
                isNumber(rightContX) ? rightContX : connectors.plotX,
                isNumber(rightContY) ? rightContY : connectors.plotY,
                isNumber(connectors.leftContX) ?
                    connectors.leftContX :
                    connectors.plotX,
                isNumber(connectors.leftContY) ?
                    connectors.leftContY :
                    connectors.plotY,
                connectors.plotX,
                connectors.plotY
            ];
        }
    }
    else {
        ret = proceed.call(this, segment, point, i);
    }
    return ret;
}
/* *
 *
 *  Class
 *
 * */
/**
 * Extensions for polar charts. Additionally, much of the geometry required
 * for polar charts is gathered in RadialAxes.js.
 * @private
 */
class PolarAdditions {
    /* *
     *
     *  Static Functions
     *
     * */
    static compose(AxisClass, ChartClass, PointerClass, SeriesClass, TickClass, AreaSplineRangeSeriesClass, ColumnSeriesClass, LineSeriesClass, SplineSeriesClass) {
        RadialAxis.compose(AxisClass, TickClass);
        if (U.pushUnique(composedMembers, ChartClass)) {
            addEvent(ChartClass, 'afterDrawChartBox', onChartAfterDrawChartBox);
            addEvent(ChartClass, 'getAxes', onChartGetAxes);
            addEvent(ChartClass, 'init', onChartAfterInit);
            const chartProto = ChartClass.prototype;
            wrap(chartProto, 'get', wrapChartGet);
        }
        if (U.pushUnique(composedMembers, PointerClass)) {
            const pointerProto = PointerClass.prototype;
            wrap(pointerProto, 'getCoordinates', wrapPointerGetCoordinates);
            wrap(pointerProto, 'pinch', wrapPointerPinch);
            addEvent(PointerClass, 'getSelectionMarkerAttrs', onPointerGetSelectionMarkerAttrs);
            addEvent(PointerClass, 'getSelectionBox', onPointerGetSelectionBox);
        }
        if (U.pushUnique(composedMembers, SeriesClass)) {
            addEvent(SeriesClass, 'afterInit', onSeriesAfterInit);
            addEvent(SeriesClass, 'afterTranslate', onSeriesAfterTranslate, { order: 2 } // Run after translation of ||-coords
            );
            addEvent(SeriesClass, 'afterColumnTranslate', onAfterColumnTranslate, { order: 4 });
            const seriesProto = SeriesClass.prototype;
            wrap(seriesProto, 'animate', wrapSeriesAnimate);
        }
        if (ColumnSeriesClass &&
            U.pushUnique(composedMembers, ColumnSeriesClass)) {
            const columnProto = ColumnSeriesClass.prototype;
            wrap(columnProto, 'alignDataLabel', wrapColumnSeriesAlignDataLabel);
            wrap(columnProto, 'animate', wrapSeriesAnimate);
        }
        if (LineSeriesClass &&
            U.pushUnique(composedMembers, LineSeriesClass)) {
            const lineProto = LineSeriesClass.prototype;
            wrap(lineProto, 'getGraphPath', wrapLineSeriesGetGraphPath);
        }
        if (SplineSeriesClass &&
            U.pushUnique(composedMembers, SplineSeriesClass)) {
            const splineProto = SplineSeriesClass.prototype;
            wrap(splineProto, 'getPointSpline', wrapSplineSeriesGetPointSpline);
            if (AreaSplineRangeSeriesClass &&
                U.pushUnique(composedMembers, AreaSplineRangeSeriesClass)) {
                const areaSplineRangeProto = AreaSplineRangeSeriesClass.prototype;
                // #6430 Areasplinerange series use unwrapped getPointSpline
                // method, so we need to set this method again.
                areaSplineRangeProto.getPointSpline =
                    splineProto.getPointSpline;
            }
        }
    }
    /* *
     *
     *  Constructor
     *
     * */
    constructor(series) {
        this.series = series;
    }
    /* *
     *
     *  Functions
     *
     * */
    arc(low, high, start, end) {
        const series = this.series, center = series.xAxis.center, len = series.yAxis.len, paneInnerR = center[3] / 2;
        let r = len - high + paneInnerR, innerR = len - pick(low, len) + paneInnerR;
        // Prevent columns from shooting through the pane's center
        if (series.yAxis.reversed) {
            if (r < 0) {
                r = paneInnerR;
            }
            if (innerR < 0) {
                innerR = paneInnerR;
            }
        }
        // Return a new shapeArgs
        return {
            x: center[0],
            y: center[1],
            r: r,
            innerR: innerR,
            start: start,
            end: end
        };
    }
    /**
     * Translate a point's plotX and plotY from the internal angle and radius
     * measures to true plotX, plotY coordinates
     * @private
     */
    toXY(point) {
        const series = this.series, chart = series.chart, xAxis = series.xAxis, yAxis = series.yAxis, plotX = point.plotX, inverted = chart.inverted, pointY = point.y;
        let plotY = point.plotY, radius = inverted ? plotX : yAxis.len - plotY, clientX;
        // Corrected y position of inverted series other than column
        if (inverted && series && !series.isRadialBar) {
            point.plotY = plotY =
                isNumber(pointY) ? yAxis.translate(pointY) : 0;
        }
        // Save rectangular plotX, plotY for later computation
        point.rectPlotX = plotX;
        point.rectPlotY = plotY;
        if (yAxis.center) {
            radius += yAxis.center[3] / 2;
        }
        // Find the polar plotX and plotY. Avoid setting plotX and plotY to NaN
        // when plotY is undefined (#15438)
        if (isNumber(plotY)) {
            const xy = inverted ? yAxis.postTranslate(plotY, radius) :
                xAxis.postTranslate(plotX, radius);
            point.plotX = point.polarPlotX = xy.x - chart.plotLeft;
            point.plotY = point.polarPlotY = xy.y - chart.plotTop;
        }
        // If shared tooltip, record the angle in degrees in order to align X
        // points. Otherwise, use a standard k-d tree to get the nearest point
        // in two dimensions.
        if (series.kdByAngle) {
            clientX = ((plotX / Math.PI * 180) + xAxis.pane.options.startAngle) % 360;
            if (clientX < 0) { // #2665
                clientX += 360;
            }
            point.clientX = clientX;
        }
        else {
            point.clientX = point.plotX;
        }
    }
}
/* *
 *
 *  Default Export
 *
 * */
export default PolarAdditions;
