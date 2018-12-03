clear; clc; close all;

function [C,t] = ImprovedEulerMethod (A,B,T,N) 
% A is the state matrix.
% B is a list of all the initial points
% T is total interval length. 
% N is no. of sections

% the function will output the final points in a matrix called SOL, where each row corresponds to one function, in order that they appeared in B 
    
    dt = T/N;
    t = 0:dt:T; %all step values of time
    rows = size (A,1);

    SOL = NaN(rows,length(t));
    
    for i = 1:length(B)
        SOL (i,1) = B (i);
    end
    
    for k = 2:length(t)
        SOL(:,k) = SOL(:,k-1) + dt*0.5*A*((SOL(:,k-1)) + SOL(:,k-1));
    end
    
end