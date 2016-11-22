function [x, y] = part2_bhat(theta)
    file = load('PhantomMeasurements');
    rawdata = file.PhantomMeasurements;

    rawX = rawdata(:, 1);
    rawY = rawdata(:, 2);

    % Center point 'c' approximation
    c = center(rawX, rawY);
    
    rho = part2_dhat(theta);
    [x, y] = pol2cart(theta, rho);
    x = x + c(1);
    y = y + c(2);
end

