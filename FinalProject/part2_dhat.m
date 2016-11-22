function rho = part2_dhat(inputTheta)
    file = load('PhantomMeasurements');
    rawdata = file.PhantomMeasurements;

    rawX = rawdata(:, 1);
    rawY = rawdata(:, 2);

    % Center point 'c' approximation
    c = center(rawX, rawY);

    % Convert unsorted rectangular coordinates into a sorted polar matrix
    [theta, rho] = cart2pol(rawX - c(1), rawY - c(2));
    sortedPolarData = sortrows([theta, rho]);

    % Store the now-sorted polar data into column vectors for theta and rho
    theta = sortedPolarData(:, 1);
    rho = sortedPolarData(:, 2);

    % Expand theta to cover [0, 2pi]
    theta = [theta; (theta + 2 * pi)];
    rho = [rho; rho];

    % Copy the first coordinate-pair to the end of the set to span a full 2pi
    theta(51) = theta(1) + 2 * pi;
    rho(51) = rho(1);

    % Calculate cubic spline dhat for the given input
    rho = spline(theta, rho, mod(inputTheta, 2 * pi));
end

