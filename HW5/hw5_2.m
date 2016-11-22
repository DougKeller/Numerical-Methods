% HW 5 Problems 2
% curve fitting

% data points
x= [0 1 2 3 4 5];
y = [4 -1 6 1 -4 -9];

% linear least squares using a quadratic model
C = lspoly(x,y,2); % finds the parameters
xx = -0.1:0.01:5.1;
yyq = zeros(1, length(xx));

% this loop evaluates the polynomial with the optimal parameters in the 
% node points defined in xx
for i=1:length(xx)
  yyq(i) = horner(C,xx(i));
end

fprintf('Quadratic Model:\n');
for i=1:length(C) 
  fprintf('Coefficient %d: %f\n', i, xx(i));
end
fprintf('\n');

% linear least squares using a cubic model
C = lspoly(x,y,3); % finds the parameters
yyc = zeros(1, length(xx));

% this loop evaluates the polynomial with the optimal parameters in the 
% node points defined in aa
for i=1:length(xx)
  yyc(i) = horner(C,xx(i));
end

fprintf('Cubic model:\n');
for i=1:length(C) 
  fprintf('Coefficient %d: %f\n', i, xx(i));
end
fprintf('\n');
% plots data points and best fitting curve
plot(x, y, 'o', xx, yyq, 'k', xx, yyc, 'r')