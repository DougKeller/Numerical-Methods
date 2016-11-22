A = ones(9, 9);
B = (1:9)';
for j = 1:9
   A(j, j) = 1.01;
end

x1 = A\B;

A(5, 3) = A(5, 3) * 1.02;
x2 = A\B;

for j = 1:9
   fprintf('x1(%d) = %f\tabs(x1(%d)) = %f\n', j, x1(j), j, abs(x1(j)));
   fprintf('x2(%d) = %f\tabs(x2(%d)) = %f\n', j, x2(j), j, abs(x2(j)));
end

error = norm(x1 - x2) / norm(x1);
fprintf('Error: %f\n', error);

C = ones(9, 9);
for j = 1:9
   C(j, j) = 10;
end
y1 = C\B;
C(5, 3) = C(5, 3) * 1.02;
y2 = C\B;


for j = 1:9
   fprintf('y1(%d) = %f\tabs(y1(%d)) = %f\n', j, y1(j), j, abs(y1(j)));
   fprintf('y2(%d) = %f\tabs(y2(%d)) = %f\n', j, y2(j), j, abs(y2(j)));
end

error = norm(y1 - y2) / norm(y1);
fprintf('Error: %f\n', error);

A(5, 3) = 1.01;
C(5, 3) = 10;

fprintf('cond(A): %d\n', cond(A));
fprintf('cond(C): %d\n', cond(C));