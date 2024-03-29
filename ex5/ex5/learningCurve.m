function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
%LEARNINGCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).
%
%   In this function, you will compute the train and test errors for
%   dataset sizes from 1 up to m. In practice, when working with larger
%   datasets, you might want to do this in larger intervals.

% X: 10x3 | y: 10x1 

m = size(X, 1); % Number of training examples

% Return these values correctly
error_train = zeros(m, 1); % 10z1
error_val   = zeros(m, 1); % 10x1

% ---------------------- Sample Solution ----------------------
for i = 1:m,
  theta = trainLinearReg(X(1:i,:), y(1:i), lambda);
  error_train(i) = linearRegCostFunction(X(1:i,:), y(1:i), theta, 0);
  error_val(i) = linearRegCostFunction(Xval, yval, theta, 0);
% -------------------------------------------------------------
end
end
