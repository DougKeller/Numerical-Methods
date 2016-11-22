x = linspace(0, 2*pi, 500);
y = -0.2 *(x - pi).^2 + 0.5;

[theta, rho] = cart2pol(x - pi, y);
polarplot(theta, rho, '-', pi / 4, 2.5, 'o', 3 * pi / 4, 2.5, 'o');