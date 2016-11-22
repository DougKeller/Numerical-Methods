A = rand(1000, 1000);
B = rand(1000, 1);

z1 = cputime;
x1 = uptrbk(A, B);
z2 = cputime;

fprintf('Uptrbk: %.2f seconds\n', z2 - z1);

z1 = cputime;
x2 = A\B;
z2 = cputime;

fprintf('Backslash: %.2f seconds\n', z2 - z1);

fprintf('Norm: %d\n', norm(x2 - x1));


