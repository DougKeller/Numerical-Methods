function [x, y] = bhat_new(theta)
    disp('hi');
    file = load('center.mat');
    c1 = file.Center.c1;
    c2 = file.Center.c2;
    rho = dhat(theta);
    [x, y] = pol2cart(theta, rho);
    x = x + c1;
    y = y + c2;
end

