function [H] = Entropia(P, A)
%Entropia devolve o limite minimo teorico para o numero medio de bits por simbolo.
%   P - fonte de informacao
%   A - alfabeto de P

%calcula-mos aqui tambem o numero de ocurrencias dos simbolos do alfabeto
%na fonte de informacao
ocorrencias = zeros(1, length(A)); %necessario para calcular probabilidades (podia ter usado funcao histograma mas como no enunciado parecia serem 2 exercicios separados fiz assim)
probabilidades = zeros(1, length(A)); %inicializacao de matriz de probabilidades

%n? de ocurrencias.
%find return vector of linear indices and length the size of that vecto which equals the number of occurrences
for (i = 1 : 1 : length(A))
    ocorrencias(i) = length(find(P == A(i)));
end

length_P = length(P(:));
    
for i=1:length(ocorrencias)
    probabilidades(i)=ocorrencias(i)/length_P; %probabilidade 
end

probs=find(probabilidades);% devolve vector com o indice linear de probs != 0
x1 = probabilidades(probs);
H=-x1*log2(x1'); %calculo da entropia

end

