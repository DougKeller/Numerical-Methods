function rho = dhat(theta)
    file = load('data.mat');
    t = file.PolarData.theta;
    r = file.PolarData.rho;
    rho = spline(t, r, mod(theta, 2 * pi));
end