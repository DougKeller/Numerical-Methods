A = [5, -2, 0, 1; -1, 6, 2, -9; 0, 0, 3, -4; 1, 1, 1, 1];
B = [7; 12; 3; 0];
x = A\B;
fprintf('a = %d\nb = %d\nc = %d\nd = %d\n', x(1), x(2), x(3), x(4));