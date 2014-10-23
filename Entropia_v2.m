function [H] = Entropia_v2(P, A, file_path)
%Entropia devolve o limite minimo teorico para o numero medio de bits por simbolo.
%   P - fonte de informacao
%   A - alfabeto de P

probabilidades = zeros(1, length(A)); %inicializacao de matriz de probabilidades

hits = calcOcorrencias_v2(P, A, file_path);

length_P=length(P(:)');
    
for i=1:length(hits)
    probabilidades(1,i)=hits(1,i)/length_P; %probabilidade 
end

probs=find(probabilidades~=0); % remover probabilidade == 0
x1 = probabilidades(probs);
H=-x1*log2(x1'); %calculo da entropia

end