fig = figure('Position', [200 200 500 600], 'MenuBar', 'none');

lb_title = uicontrol('Style', 'text');      % title label
lb_desc = uicontrol('Style', 'text');       % description label
tb_poly = uicontrol('Style', 'edit');       % polynome textbox
tb_interval = uicontrol('Style', 'edit');   % interval textbox
cb_marker = uicontrol('Style', 'popup');    % combobox for markers
img_plot = axes;                            % image of plot
menu_line = uimenu;                         % line menu

% grafik
set(img_plot, 'Position', [0.1 0.1 0.85 0.7]);
set(img_plot, 'Tag', 'plot');
xlabel(img_plot, 'x-osa');
ylabel(img_plot, 'y-osa');
title(img_plot, 'Aproksimacija polinomom');

% naslov
set(lb_title, 'String', 'APROKSIMACIJA POKATAKA ŠUMA');
set(lb_title, 'Units', 'normalized');
set(lb_title, 'Position', [0 0.875 1 0.1]);
set(lb_title, 'FontSize', 12);

% label kontrola
set(lb_desc, 'String', 'Polinom i interval');
set(lb_desc, 'Units', 'normalized');
set(lb_desc, 'Position', [0 0.875 0.3 0.04]);
set(lb_desc, 'FontSize', 10);

% textbox za vektor
set(tb_poly, 'Units', 'normalized');
set(tb_poly, 'Position', [0.3 0.885 0.2 0.04]);

% textbox za interval
set(tb_interval, 'Units', 'normalized');
set(tb_interval, 'Position', [0.525 0.885 0.2 0.04]);

% dropdown meni za oznaku
set(cb_marker, 'Units', 'normalized');
set(cb_marker, 'String', ' |+|*|o|x');
set(cb_marker, 'Position', [0.75 0.885 0.2 0.04]);
set(cb_marker, 'Callback', 'z3_draw');

% meni za liniju
set(menu_line, 'Label', 'Vrsta linije');
func = ['set(findobj(''Tag'', ''line''), ''LineStyle'', ''--'')'];
uimenu(menu_line, 'Label', 'isprekidana', 'Callback', func);
func = ['set(findobj(''Tag'', ''line''), ''LineStyle'', '':'')'];
uimenu(menu_line, 'Label', 'tačkasta', 'Callback', func);
func = ['set(findobj(''Tag'', ''line''), ''LineStyle'', ''-'')'];
uimenu(menu_line, 'Label', 'puna', 'Callback', func, 'separator', 'on');