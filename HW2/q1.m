f = @(x) x^5 - 9;
a = 1;
b = 3;
tol = 10^-8;

[approx, iter] = bisect(f, a, b, tol);
fprintf('The root is %f \n', approx);



