function [ joint_probability] = jointProbability(alfabeto, query, window)
%jointProbability retorna um vector com as probabilidades conjuntas do
%query e da janela do target que esta a ser analizada

    %definicao do offset
    offset = 1 - min(alfabeto);

    %definir e inicializar joint_probability (matriz de probabilidades do query
    %e da janela
    joint_probability = zeros(length(alfabeto), length(alfabeto));
    
    %percorrer o vector query e window e contar numero de ocorrencias also
    %length(query) == length(window) duh!
    for i=1:length(query)
        joint_probability(query(i)+offset, window(i)+offset) = joint_probability(query(i)+offset, window(i)+offset) + 1;
    end

    %fazer a divisao pelo numero total de acontecimentos e assim obtemos as
    %probabilidades
    joint_probability = joint_probability ./ sum(sum(joint_probability)); %sum(sum()) porque matrix MxM

end

