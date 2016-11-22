f = @(x) (x + 1).^(1/2);
t = @(x) (x.^3 - 2 * x.^2 + 8 * x + 16) ./ 16;
p = @(x) 1 + x * (sqrt(2) - 1) + (x.^2 - x) * 0.5 * (sqrt(3) - 2 * sqrt(2) + 1);

x = -1:0.01:4;
fy = f(x);
ty = t(x);
py = p(x);

plot(x, fy, '-', x, ty, '-.', x, py, '--');