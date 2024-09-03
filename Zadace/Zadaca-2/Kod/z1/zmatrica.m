function z = zmatrica(sistem)
% Funkcija kreira vektor z, poznatih vrijednosti
% el. kola specificiranog u strukturi sistem
% Lokalne varijable
v = sistem.V(:,1)';
r_od = double(sistem.R(:,2))';
r_do = double(sistem.R(:,3))';
broj_cvorova = max([r_od r_do]);
% Kreiranje vektora b
if isfield(sistem,'I')
i_od = double(sistem.I(:,2))';
i_do = double(sistem.I(:,3))';
it = sistem.I(:,1);
br_st_izvora = length(i_od);
if sistem.simb
b1=sym(zeros(1,broj_cvorova));
else
b1=zeros(1,broj_cvorova);
end
for i=1:br_st_izvora
if i_od(i)>0
b1(i_od(i))=b1(i_od(i))-it(i);
end
if i_do(i)>0
b1(i_do(i))=b1(i_do(i))+it(i);
end
end
else
b1=zeros(1,broj_cvorova);
end
z = [b1,v]';