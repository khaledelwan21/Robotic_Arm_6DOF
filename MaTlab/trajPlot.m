data = squeeze(out.traj.signals.values)';
n = length(data);

figure;
grid on;
hold on;

xlabel('x'); ylabel('y'); zlabel('z');
title('3D Animation');

axis equal
view(3)

h = plot3(data(1,1), data(1,2), data(1,3), 'o', 'MarkerSize', 8);

trail = animatedline('LineWidth', 2);

cmap = jet(n); 

for i = 1:5:n
    

    set(h, 'XData', data(i,1), ...
           'YData', data(i,2), ...
           'ZData', data(i,3), ...
           'Color', cmap(i,:));   
    
   
    addpoints(trail, data(i,1), data(i,2), data(i,3));
    trail.Color = cmap(i,:);
    
    drawnow
    pause(0.02)   
end