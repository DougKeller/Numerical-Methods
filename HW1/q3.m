resolution1 = 1;
x1 = 5:resolution1:10;
y1 = sin(x1) .* (sqrt(x1.^3 + 1));

resolution2 = 0.01;
x2 = 5:resolution2:10;
y2 = sin(x2) .* (sqrt(x2.^3 + 1));

plot(x1, y1, 'o', x2, y2);