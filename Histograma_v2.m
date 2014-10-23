function hits = Histograma_v2( P, A, file_path )
%histograma
% P == Fonte de informacao
% A == alfabeto de P

hits = calcOcorrencias_v2(P, A, file_path);

bar(1:1:length(hist), hist);
axis 'auto x';
axis 'auto y';

end