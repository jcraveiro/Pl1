function [ hits ] = Histograma(P, A)
%histograma
% P == Fonte de informacao
% A == alfabeto de P

hits = calcOcorrencias(P, A);

bar(A,hits);
axis 'auto x';
axis 'auto y';

end

