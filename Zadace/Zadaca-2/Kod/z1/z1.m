function z1(symbol)
    if nargin ~= 1
        error("Funkcija ima jedan ulazni argument");
    else
        if symbol == 'a'
            z1_a;
            return;
        elseif symbol == 'b'
            z1_b;
            return;
        elseif symbol == 'c'
            z1_c;
            return;
        end

        error("Pogrešan ulazni argument")
    end