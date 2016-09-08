a1 = 1.000000000000000;
b1 = 1.888888888888888;
c1 = 0.7407407407407407;

a2 = 1.000000000000000;
b2 = -12.00035802468123;
c2 = 36.00214817704637;

[root1a, root1b] = quadform(a1, b1, c1);
[root2a, root2b] = quadform(a2, b2, c2);

fprintf('Roots for scenario 1: [%1.15e, %1.15e] \n', root1a, root1b);
fprintf('Roots for scenario 2: [%1.15e, %1.15e] \n', root2a, root2b);