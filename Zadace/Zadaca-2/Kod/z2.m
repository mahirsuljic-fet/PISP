function [O, P]=z2(T)
    if nargin ~= 1
        error('Funkcija ima jedan ulazni argument');
    end

    fn = fieldnames(T);

    if numel(fn) < 5
        error('Struktura treba imati minimalno 5 elemenata');
    end

    min_x = T.(fn{1})(1);
    min_y = T.(fn{1})(2);
    max_x = T.(fn{1})(1);
    max_y = T.(fn{1})(2);

    edge_points = [fn{1} fn{1} fn{1} fn{1}];

    for i = 1:numel(fn)
        x = T.(fn{i})(1);
        y = T.(fn{i})(2);

        if x > max_x
            max_x = x;
            edge_points(1) = fn{i};
        end
        if y > max_y
            max_y = y;
            edge_points(2) = fn{i};
        end
        if x < min_x
            min_x = x;
            edge_points(3) = fn{i};
        end
        if y < min_y
            min_y = y;
            edge_points(4) = fn{i};
        end

        plot(x, y, 'ko');
        hold on;
    end

    edge_points = unique(edge_points);
    O = (max_x - min_x + max_y - min_y) * 2;
    P = (max_x - min_x) * (max_y - min_y);
    
    sq_x = [min_x, max_x, max_x, min_x, min_x];
    sq_y = [min_y, min_y, max_y, max_y, min_y];

    grid on;
    plot(sq_x, sq_y, 'r');
    xlim([min_x-1 max_x+1]);
    ylim([min_y-1 max_y+1]);

    disp(['Tačke na rubu kvadrata: ' edge_points]);