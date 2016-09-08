f = @(v) sin(v.^3);

x = 5.201;
fprintf('f(%6.8f) = %6.8f \n', x, f(x));
fprintf('f(%6.10e) = %6.10e \n\n', x, f(x));

x = -8323.6;
fprintf('f(%6.8f) = %6.8f \n', x, f(x));
fprintf('f(%6.10e) = %6.10e \n\n', x, f(x));

x = -0.0003;
fprintf('f(%6.8f) = %6.8f \n', x, f(x));
fprintf('f(%6.10e) = %6.10e \n\n', x, f(x));

