% insert test code here!

function [x_vec,total_area] = TrapApprox (a, b, N)
% N represents the number of sub-intervals
% a represents the lower bound of integration
% b represents the upper bound of integration
    dx = (b-a)/N;
    x_vec = a:dx:b;
    areas = zeros (1,(length(x_vec)-1));
    
    for i = 1:length(times)-1
        areas (i) = 0.5 * dx * ((x_vec(i))^2 + (x_vec(i+1))^2);
        % sample function is x^2 -- you can add any function you want, as
        % long as the input for the first iteration is x_vec(i) and the
        % input for the second iteration is x_vec(i+1)
    end
    
    total_area = sum(areas);
end

