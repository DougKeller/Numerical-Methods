function [result, iterations] = jacobi(a, b, x0, tol, maxit)
    size = length(b);
    result = zeros(size, 1);

    for iterations = 1:maxit
        for j = 1:size
            d = [1:j - 1, j + 1:size];
            numerator = b(j) - a(j, d) * x0(d);
            result(j) = numerator / a(j, j);
        end
        abserr = norm(result - x0);
        relerr = abserr / (norm(result) + eps);
        if (abserr < tol && relerr < tol)
            return;
        end
        x0 = result;
    end
end

