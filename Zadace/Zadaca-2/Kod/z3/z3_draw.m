previous_LineStyle = '-';
current_line = findobj('Tag', 'line');

if ishandle(current_line)
    previous_LineStyle = get(current_line, 'LineStyle');
end

cla;
grid off;

poly = eval(get(tb_poly, 'string'));
interval = eval(get(tb_interval, 'string'));
choice = get(cb_marker, 'value');

% priprema za sabiranje polinoma (u slucaju razlicitih stepena)
n = length(poly);
m = 0;
if n < 3
    poly = [zeros(1, 3 - n) poly];
elseif n > 3
    m = n - 3;
end

poly = poly + [zeros(1, m) 3 0 -5];
x = interval;
y = polyval(poly, x);
noise = y + randn(size(y));

if choice >= 2 && choice <= 5
    current_line = plot(x, y, 'Tag', 'line', 'LineStyle', previous_LineStyle);
    grid on;
    xlabel(img_plot, 'x-osa');
    ylabel(img_plot, 'y-osa');
    title(img_plot, ['Aproksimacija polinomom ' num2str(length(poly)-1) '. reda']);
end

switch choice
    case 2
        hold on;
        plot(x, noise, '+');
    case 3
        hold on;
        plot(x, noise, '*');
    case 4
        hold on;
        plot(x, noise, 'o');
    case 5
        hold on;
        plot(x, noise, 'x');
end