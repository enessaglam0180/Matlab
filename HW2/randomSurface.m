% Create a random surface
Z0 = rand(5);  % 5x5 matrix of random values between 0 and 1

% Create X0 and Y0 using meshgrid with vector 1:5
[X0, Y0] = meshgrid(1:5);

% Create X1 and Y1 using meshgrid with vector 1:0.1:5
[X1, Y1] = meshgrid(1:0.1:5);

% Interpolate to get Z1 using cubic interpolation
Z1 = interp2(X0, Y0, Z0, X1, Y1, 'cubic');

% Plot the surface
figure;
surf(X1, Y1, Z1);
colormap(hsv);
shading interp;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Random Surface with Cubic Interpolation');

% Plot the 15-line contour on the same axes
hold on;
contour(X1, Y1, Z1, 15, 'k');  % 15 contour lines
hold off;

% Add a colorbar
colorbar;

% Set the color axis to be from 0 to 1
caxis([0, 1]);

%%  Question 2
