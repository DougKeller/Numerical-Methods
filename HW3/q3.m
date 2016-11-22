A = [4, 1, -1; 1, -5, -1; 2, -1, -6];
B = [13; -8; -2];

maximumIterations = 50;
tolerance = 10^(-10);

x0 = [0; 0; 0];

[result, iterations] = gauss_seidel(A, B, x0, tolerance, maximumIterations);
fprintf('Initial Guess: [0, 0, 0]\n');
fprintf('A = %d\nB = %d\nC = %d\nIterations: %d\n', result(1), result(2), result(3), iterations);

x0 = [10; 20; -30];

[result, iterations] = gauss_seidel(A, B, x0, tolerance, maximumIterations);
fprintf('Initial Guess: [10, 20, -30]\n');
fprintf('A = %d\nB = %d\nC = %d\nIterations: %d\n', result(1), result(2), result(3), iterations);

