function [H] = Entropia(P, A, hist)
%Entropia devolve o limite minimo teorico para o numero medio de bits por simbolo.
%   P - fonte de informacao
%   A - alfabeto de P

probabilidades = zeros(1, length(A)); %inicializacao de matriz de probabilidades

length_P = length(P(:));
    
for i=1:length(hits)
    probabilidades(i)=hist(i)/length_P; %probabilidade 
end

probs=find(probabilidades);% devolve vector com o indice linear de probs != 0
x1 = probabilidades(probs);
H=-x1*log2(x1'); %calculo da entropia

end

