f = @(x) x^3 - 0.001 * x^2 + x - 0.001;

tolerance = 10^-10;
x0 = 50;
x1 = 49;
maxit = 30;

[root, iterations] = secant(f, x0, x1, tolerance, maxit);
fprintf('Root: %1.8e Iterations: %d\n', root, iterations);
