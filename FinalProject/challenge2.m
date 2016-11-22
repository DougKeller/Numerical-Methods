file = load('PhantomMeasurements');
rawdata = file.PhantomMeasurements;

rawX = rawdata(:, 1);
rawY = rawdata(:, 2);

c = center(rawX, rawY);
[rawTheta, rawRho] = cart2pol(rawX - c(1), rawY - c(2));
rawTheta = mod(rawTheta, 2 * pi);

% Calculate dhat on [0, 2pi]
theta = linspace(0, 2 * pi, 500);
rho = part2_dhat(theta);
rhobar = mean(rho) * ones(length(theta));

% Calculate bhat on [0, 2pi]
[x, y] = part2_bhat(theta);
radius = [-sqrt(mean(rho)^2 - x.^2); sqrt(mean(rho)^2 - x.^2)];

% Plot cartesian coordinates
subplot(1, 2, 1);
plot(rawX, rawY, 'o', x, y, '-', x, radius, '-.k', c(1), c(2), 'x');
title('Phantom Measurements - bhat');
centerLabel = sprintf('(%3.3f,%.3f)', c(1), c(2));
legend('Raw Data', 'bhat', 'rbar', 'Location', 'southeast');
text(c(1), c(2), strcat('  \leftarrow', centerLabel));

% Plot polar coordinates
subplot(1, 2, 2);
plot(rawTheta, rawRho, 'o', theta, rho, '-', theta, rhobar, '-.k', [0, 7], [0, 0], '-k');
title('Phantom Measurements - dhat');
xlabel('Theta'),ylabel('Radius');
legend('Raw Data', 'dhat', 'rhobar', 'Location', 'southeast');