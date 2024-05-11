% b. Create variables x and y
x = 0:0.1:2*pi;
y = sin(x);

% c. Create a new figure and plot
figure;
plot(x, y, 'r');

% d. Set x limit
xlim([0, 2*pi]);

% e. Set xtick and xticklabel
set(gca, 'xtick', [0, pi, 2*pi], 'xticklabel', {'0', '\pi', '2\pi'});

% f. Set ytick
set(gca, 'ytick', -1:0.5:1);

% g. Turn on grid
grid on;

% h. Set colors of axis
set(gca, 'xcolor', 'cyan', 'ycolor', 'green', 'color', 'k');

% i. Set color of figure
set(gcf, 'color', [.3 .3 .3]);

% j. Add title
title({'One sine wave from 0 to 2\pi'}, 'FontSize', 14, 'FontWeight', 'bold', 'Color', 'w');

% k. Add x and y labels
xlabel({'X values in terms of π'}, 'FontSize', 12, 'Color', 'cyan');
ylabel({'sin(x)'}, 'FontSize', 12, 'Color', 'green');
