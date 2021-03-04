% Palestine Polytechnic University
% College of IT & Computer Engineering
% Numerical Analysis Project: Equation Solver in One Variable using
%   Secant Method
%-------------------------------------------------------------------------%
% Done by: 
%   Name: Wisam Alhroub
%   ID  : 171054
%-------------------------------------------------------------------------%

format long
str = {
    "Equation Solver in One Variable using Secant Iteration Method"
    "This program solves one-variable equations. In specific, it solves for f(x) = 0"
    " "
    "Enter the equation you want to solve that must satisfies the following: "
    " " 
    "1. It shuould have only one variable (i.e. 'x') to solve, eg.: 'x^2 + 2*x + 1'"
    "2. It should explicitly show operators (+, -, *, /) between each value/variable 'x'"
    "3. No '=' is allowed"
    " "
    "| Your Equation: |"
    "|                |"
    "V                V"
};
prompt = sprintf('%s\n', str{:});

input_eq = input(prompt, 's');
input_interval = input("What interval do you want to solve on? A 1x2 array is the input: ");
input_zeta = input("Specify the tolerence value (eg.: 10e-5) for the stopping procedure: ");

equation = str2func("@(x)" + input_eq);

p_array = secant_method_equation_solver(equation, input_zeta, input_interval)

x = p_array(end)

    