function [G,B,C,D,A] = amatrica(sistem)
% Funkcija kreira matrice G B C D A koje opisuju
% jednacine el. kola specificiranog u strukturi sistem
% Lokalne varijable
r_od = double(sistem.R(:,2))';
r_do = double(sistem.R(:,3))';
r = sistem.R(:,1)';
v_od = double(sistem.V(:,2))';
v_do = double(sistem.V(:,3))';
v = sistem.V(:,1)';
broj_cvorova = max([r_od r_do]);
broj_elemenata = size(r,2);
broj_nap_izvora = size(v,2);
% Kreiranje matrice G
if sistem.simb
G = sym(zeros(broj_cvorova,broj_cvorova));
else
G = sparse(broj_cvorova,broj_cvorova);
end
for i = 1:broj_elemenata
if r_od(i)~=0 & r_do(i)~=0
G(r_od(i),r_od(i))=G(r_od(i),r_od(i))+1/r(i);
G(r_do(i),r_do(i))=G(r_do(i),r_do(i))+1/r(i);
G(r_od(i),r_do(i))=G(r_od(i),r_do(i))-1/r(i);
G(r_do(i),r_od(i))=G(r_do(i),r_od(i))-1/r(i);
end
if r_od(i)==0
G(r_do(i),r_do(i))=G(r_do(i),r_do(i))+1/r(i);
end
if r_do(i)==0
G(r_od(i),r_od(i))=G(r_od(i),r_od(i))+1/r(i);
end
end
% Kreiranje matrice B
index_nn_od = find(v_od~=0);
index_nn_do = find(v_do~=0);
try
B1 = sparse(v_od(index_nn_od),index_nn_od,...
ones(1,length(index_nn_od)),broj_cvorova,broj_nap_izvora);
catch
B1 = sparse(broj_cvorova,broj_nap_izvora);
end
try
B2 = sparse(v_do(index_nn_do),index_nn_do,...
-ones(1,length(index_nn_do)),broj_cvorova,broj_nap_izvora);
catch
B2 = sparse(broj_cvorova,broj_nap_izvora);
end
B = B1+B2;
% Kreiranje matrica C D i A
C = B';
D = zeros(broj_nap_izvora,broj_nap_izvora);
A = [G B;C D];