% Palestine Polytechnic University
% College of IT & Computer Engineering
% Numerical Analysis Project: Equation Solver in One Variable using
%   Secant Method
%-------------------------------------------------------------------------%
% Done by: 
%   Name: Wisam Alhroub
%   ID  : 171054
%-------------------------------------------------------------------------%

function result = secant_method_equation_solver(f, zeta, interval)
    p = zeros(10000, 1);
    p(1) = mean(interval);
    p(2) = p(1) + 0.2;
    
    n = 2;
    while abs(p(n) - p(n-1))/abs(p(n)) > zeta
        n = n + 1;
        p(n) = p(n-1) - (f(p(n-1)) * (p(n-1) - p(n-2))) / (f(p(n-1)) - f(p(n-2)));
        
        fprintf("p(%2d) = % 5.15f, diff = % 5.15f \n", n, p(n), abs(p(n) - p(n-1))/abs(p(n)));
    end
    
    result = nonzeros(p);
end