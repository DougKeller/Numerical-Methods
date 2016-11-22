% Ellipse: x^2 / 4 + y^2 / 1 = 1
ellipseX = linspace(-2, 2, 200);
ellipseY1 = sqrt(1 - ellipseX.^2 / 4);
ellipseY2 = - sqrt(1 - ellipseX.^2 / 4);

% Inner Circle: x^2 + y^2 = 1
innerX = linspace(-1, 1, 100);
innerY1 = sqrt(1 - innerX.^2);
innerY2 = - sqrt(1 - innerX.^2);

% Outer Circle: x^2 + y^2 = 2
outerX = linspace(-2, 2, 200);
outerY1 = sqrt(4 - outerX.^2);
outerY2 = - sqrt(4 - outerX.^2);

subplot(1, 2, 1);
plot(ellipseX, ellipseY1, '-k', ellipseX, ellipseY2, '-k', innerX, innerY1, '-.c', innerX, innerY2, '-.c', outerX, outerY1, '-.r', outerX, outerY2, '-.r'),title('Variance Ratio of an Ellipse');
text(-.5, 0, 'Ratio = 2 / 1 = 2.0');

% Actual data
file = load('PhantomMeasurements');
rawdata = file.PhantomMeasurements;

rawX = rawdata(:, 1);
rawY = rawdata(:, 2);

c = center(rawX, rawY);
distances = sort(sqrt((rawX - c(1)).^2 + (rawY - c(2)).^2));

[dataX, dataY] = part2_bhat(linspace(0, 2 * pi, 500));

maxR = distances(length(distances));
minR = distances(1);

% Inner Circle: x^2 + y^2 = 1
innerDataX = linspace(-minR, minR, 200);
innerDataY1 = sqrt(minR^2 - (innerDataX).^2) + c(2);
innerDataY2 = - sqrt(minR^2 - innerDataX.^2) + c(2);
innerDataX = innerDataX + c(1);

% Outer Circle: x^2 + y^2 = 2
outerDataX = linspace(-maxR, maxR, 200);
outerDataY1 = sqrt(maxR^2 - outerDataX.^2) + c(2);
outerDataY2 = - sqrt(maxR^2 - outerDataX.^2) + c(2);
outerDataX = outerDataX + c(1);

subplot(1, 2, 2);
plot(dataX, dataY, '-k', innerDataX, innerDataY1, '-.c', innerDataX, innerDataY2, '-.c', outerDataX, outerDataY1, '-.r', outerDataX, outerDataY2, '-.r'),title('Variance Ratio of R Approximation');
label = sprintf('Ratio = %.3f / %.3f = %.3f', maxR, minR, maxR / minR);
text(-0.5, 0, label);
