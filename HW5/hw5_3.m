% HW 5 Problems 3
% non-linear least squares using a gaussian curve model ae(-(x - b)^2 /
% 2xc^2)

x = [0   1   2   3   4   5   ];
y = [0.1 1   1.5 0.8 0.3 0.25];

S = @(R) sum(R(1) * exp(-1 * (x - R(2)).^2 / (2 * R(3)^2)) - y).^2;
initguess = [1.5 2 1]; % initial guess
u = fminsearch(S, initguess); % finds the parameters that minimize S

xx = -0.1:0.01:5.1;
yy = u(1) * exp(-(xx - u(2)).^2 / (2 * u(3).^2));

for k=1:length(u)
   fprintf('Parameter %d: %f\n', k, u(k));
end
plot(x, y, 'o', xx, yy, 'r-'),title('Gaussian Bell Curve - ae(-(x-b)^2 / 2c^2)')
