function [ hits ] = Histograma(P, A)
%histograma
% P == Fonte de informacao
% A == alfabeto de P
hits = zeros(1, length(A));

%ciclo for que percorre o alfabeto e a fonte de informacao a procura do
%numero de ocorrencias de cada item do alfabeto
for (i = 1 : 1 : length(A))
    hits(i) = length(find(P == A(i))); %find return vector of linear indices and length the size of that vecto which equals the number of occurrences
end

bar(A,hits);
axis 'auto x';
axis 'auto y';
end

