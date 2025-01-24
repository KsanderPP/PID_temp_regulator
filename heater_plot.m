temperature = load('pomiary_do_heater_plot.txt');
dt=0.5; %one second
number_of_samples = length(temperature);
t = (0:number_of_samples-1)*dt;
set_point = 26;

figure(1);
plot(t,temperature, 'b.');
hold on;
line([0 t(end)],[set_point, set_point],'Color','red','LineStyle','--');
hold off;
title('PID controller, Kp=5, Ki=0.1, Kd=0.05');
xlabel('Time (s)');
ylabel('Temperature (C)');
legend('measurement samples');
axis tight;