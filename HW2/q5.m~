f = @(x) x^3 - 0.001 * x^2 + x - 0.001;
df = @(x) 3 * x^2 - 0.002 * x + 1;

tolerance = 10^-10;
x0 = 50;
maxit = 30;

[root, iterations] = newton(f, df, x0, tolerance, maxit);
fprintf('Root: %1.8e Iterations: %d\n', root, iterations);


