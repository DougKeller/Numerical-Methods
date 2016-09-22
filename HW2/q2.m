f = @(x) cos(x) + ((x.^3 + 200) .^(-1));
x = -5:0.01:5;
y = f(x);
plot(x, y);

tolerance = 10^-10;

[root1, it1] = bisect(f, -5, -4, tolerance);
[root2, it2] = bisect(f, -2, -1, tolerance);
[root3, it3] = bisect(f, 1, 2, tolerance);
[root4, it4] = bisect(f, 4, 5, tolerance);

fprintf('Root 1: %1.8f, iterations: %d\n', root1, it1);
fprintf('Root 2: %1.8f, iterations: %d\n', root2, it2);
fprintf('Root 3: %1.8f, iterations: %d\n', root3, it3);
fprintf('Root 4: %1.8f, iterations: %d\n', root4, it4);
