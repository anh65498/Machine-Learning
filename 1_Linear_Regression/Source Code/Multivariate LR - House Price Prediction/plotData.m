function plotData(x, y)
% Rec: 		x - population data , y - revenue data 
% Ret: 		none 
% Purpose:  Plots the data points x and y into a new figure 
% 			Gives the figure axes labels of population and profit.

figure('position', [0, 0, 500, 700]) 	% open a new figure window
plot(x, y, 'rx', 'MarkerSize', 10); 					% Plot the data, rx = red cross
ylabel('Profit in $10,000s'); 							% Set the y−axis label 
xlabel('Population of City in 10,000s'); 				% Set the x−axis label



% ============================================================

end
