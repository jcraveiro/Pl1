function [mutual_information] = mutualInformation(query, target, alfabeto,step)
    %devolve  o vector de valores de informa?ao mutua em cada janela
    %Atraves da formula I(X,Y) = H(x) + H(Y) - H(X,Y) podemos calcular o
    %valor da informa?ao mutua
    
    %inicializar o vector de retorno a zeros
    mutual_information = zeros(1, length(target) - length(query) + 1);
    
    %no calculo da informa?ao mutua a entropia do query e sempre igual
    %enquanto que a window vai mudando e como tal tambem a sua entropia,
    %logo podemos ja calcular e guardar como variavel a entropia do query
    %Hx sera a entropia do query
    Hx = Entropia(query,alfabeto);
    
    %agora devo percorrer o target window a window e fazer os calculos
    %necessarios
    for i=1:step:(length(target)-length(query)+1)
        %definicao da current window
        window = target(i:i+length(query)-1);
        
        %calculo da entropia da janela H(Y)
        Hy = Entropia(window,alfabeto);
        
        %calculo da probabilidade conjunta da window e do query atraves de
        %funcao auxiliar
        joint_probability = jointProbability(alfabeto, query, window);
        
        %calculo da entropia conjunta H(X,Y)
        aux = nonzeros(joint_probability); %retirar probs == 0
        Hxy = -sum(aux .* log2(aux));
        
        %por fim calcular a informacao mutua da window e do query
        mutual_information(i) = Hx + Hy - Hxy;
    end

end