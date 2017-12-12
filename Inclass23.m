%GB comments
1 100
2 80 not linear, and the oscillations are lost because the upstream inhibitors are at equal levels and will remove downstream gene activation symetrically. 
3 70 did not consider the values in which represses the osccilattory behavior. 
4 100
overall 88

%In this directory, you will find a derivaitve function representing a
%three gene circuit in which each gene product represses the transcription of another
%gene in a cycle. This simple three gene circuit displays oscillations and was one
%of the first synthetic circuits ever constructed (see Elowitz & Leibler
%Nature 2000). 

% 1. Start with initial conditions x(1) = 1, x(2) = x(3) = 0. 
% Run the model for 200 time units and plot the result. verify that it
% does indeed oscillate. 

x0=[1; 0; 0];
sol1=ode23(@repressilator, [0 200], x0);
figure
plot(sol1.x, sol1.y(1,:), 'r-')
hold on
plot(sol1.x, sol1.y(2,:), 'k-')
hold on
plot(sol1.x, sol1.y(3,:), 'b-')
legend('Repressor 1', 'Repressor 2', 'Repressor 3', 'Location', 'Best')
title('Oscillation of Repressor Profiles')
ylabel('Repressor Gene')
xlabel('Time')

% 2. What happens if you start with initial conditions x(1) = x(2) = x(3) =
% 0.5? Why?

%all three values for y will be the same at any point. they will rise and fall at the same
%rate, and the movement will be linear

x0 = [0.5; 0.5; 0.5];
sol1 = ode23(@repressilator, [0 200], x0);
figure
plot(sol1.x, sol1.y(1,:), 'r-')
hold on
plot(sol1.x, sol1.y(2,:), 'k-')
hold on
plot(sol1.x, sol1.y(3,:), 'b-')
legend('Repressor 1', 'Repressor 2', 'Repressor 3', 'Location', 'Best')
title('Oscillation of Repressor Profiles')
ylabel('Repressor Gene')
xlabel('Time')

% 3. The strength of the repression is governed by the constant k2 which is
% the same for all the genes. What happens when you make k2 larger or
% smaller? Find the approximate value of k2 for which the system no longer
% oscillates. 

% higher k2 makes lower x. genes were further repressed by each other so
% they are around a lower value. decrease k2 makes higher x values so genes
% oscillate around higher values. when k2 is 1, the system does not
% oscillate and reaches a steady state

% 4. What happens when you make k2 larger or smaller for only one of the
% genes? 

% if x1 has higher k2, less x3 would be needed to repress x1 and x3 is at a
% lower steadt state. more x2 will be needed to express less x3. so x2 is
% higher than x1, and higher than x3.
