f = @(x) ( exp(x) .* (sin(x)) ) ./ (x.^2 + 1);

resolution1 = 1;
x1 = 3:resolution1:7;
y1 = f(x1);

resolution2 = 0.01;
x2 = 3:resolution2:7;
y2 = f(x2);

plot(x1, y1, 'o', x2, y2);