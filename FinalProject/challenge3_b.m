areas = zeros(10, 1);
N = 100000;

for k = 1:100  
    random_theta = 2 * pi * rand(N, 1);

    rho = dhat(random_theta);
    rhobar = mean(rho);

    areas(k) = pi * rhobar^2;
end

area = mean(area)
var(areas)