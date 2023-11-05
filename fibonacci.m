function y=fibonacci(n)
%FIBONACCI Fibonacci sequence
%   FIBONACCI(N) computes the Fibonacci number of N. N can be a scalar, vector or
%   matrix of integers. Negative numbers are allowed (negafibonacci).
%
%   FIBONACCI without input argument returns the first 10 numbers of the Fibonacci
%   sequence.
%
%   Examples:
%       fibonacci(7) returns 13
%       fibonacci(0:10) returns [0  1  1  2  3  5  8 13 21 34 55]
%
%   Reference: https://en.wikipedia.org/wiki/Fibonacci_sequence
%
%
%   Author: François Beauducel
%   Created: 2023-11-04 in Saint-Pierre, Martinique

if nargin < 1
    n = 0:10;
end

if ~isnumeric(n) || any(n ~= floor(n))
    error('N must be only integers.')
end

phi = (1 + sqrt(5))/2; % the golden ratio
y = round(phi.^abs(n)/sqrt(5));
% generalization for negafibonacci numbers
k = (n<0);
y(k) = (-1).^(n(k)+1).*y(k);
