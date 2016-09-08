function [xp, xm] = quadform(a, b, c)
    discriminant = b.^2 - 4 .* a .* c;
    
    if (b < 0)
        numerator = b * -1 + sqrt(discriminant);
        xp = numerator ./ 2 .* a;
        xm = c ./ a ./ xp
    else
        numerator = b * -1 - sqrt(discriminant);
        xm = numerator ./ 2 .* a;
        xp = c ./ a ./ xm
    end
end