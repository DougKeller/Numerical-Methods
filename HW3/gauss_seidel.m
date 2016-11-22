function [ result, iterations ] = gauss_seidel( a, b, x0, tol, maxit )
    size = length(b);
    result = zeros(size, 1);
    
    for iterations = 1:maxit
       for j = 1:size
           leftResult = a(j, 1:j-1) * result(1:j-1);
           rightResult = a(j, j+1:size) * x0(j+1:size);
           numerator = b(j) - leftResult - rightResult;
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

