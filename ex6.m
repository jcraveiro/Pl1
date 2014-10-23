  %Exercicio 6a)

alfabeto = 0:10;
query = [2 6 4 10 5 9 5 8 0 8];
target = [6 8 9 7 2 4 9 9 4 9 1 4 8 0 1 2 2 6 3 2 0 7 4 9 5 4 8 5 2 7 8 0 7 4 8 5 7 4 3 2 2 7 3 5 2 7 4 9 9 6];
step = 1;
mutual_information = mutualInformation(query,target,alfabeto,step);
disp(mutual_information);

pause;

%Exercicio 6b)

%buscar informa?ao do query atraves do wavread
[query, ~, nbits] = wavread('dados/guitarSolo.wav');
query = ((1+query') .* (2^(nbits-1)));

%definir o alfabeto
alfabeto = 0:(2^nbits);

%definir o step
step = round(length(query) / 4);

%definir os targets
targets = {'dados/target01 - repeat.wav' 'dados/target02 - repeatNoise.wav'};

%ciclo que percorre e efectua os calculos para os targets
for i=1:length(targets)
    target = wavread(char(targets(i)));
    target = round((1+target') .* (2^(nbits-1)));

    
    %calculo da informacao mutua atraves de funcoes criadas para o
    %exercicio 6a
    mutual_information = mutualInformation(query, target, alfabeto, step);
    mutual_information= nonzeros(mutual_information);
    
    %plot do grafico da informacao mutua, subplot para podermos comparar
    %os dois targets
    subplot(1, length(targets), i),plot(mutual_information);
    xlabel('Window')
    ylabel('Informacao Mutua')
    title(sprintf('Informacao Mutua de target0%d', i));
   
    %display information, var gives us the variation of the mutual
    %information
    fprintf('Evolucao da Informacao Mutua ao longo do tempo %s:\n%f\n', char(targets(i)), var(mutual_information));
end

pause;

%Exercicio 6c)

%self explanatory
targets = {'dados/Song01.wav' 'dados/Song02.wav' 'dados/Song03.wav' 'dados/Song04.wav' 'dados/Song05.wav' 'dados/Song06.wav' 'dados/Song07.wav'};

%iniciar vector que vai conter os resultados da informacao mutua de cada
%target
results = zeros(size(targets));

%ciclo que percorre os targets 
for i=1:length(targets)
    
    target = wavread(char(targets(i)));
    target = round((1+target') * (2^(nbits-1)));
    
    %calculo da informacao mutua atraves de funcoes criadas para o
    %exercicio 6a
    mutual_information = mutualInformation(query, target, alfabeto, step);
    mutual_information = nonzeros(mutual_information);
    
    %display necessary information and store max mutual information ijn
    %results vector
    fprintf('Informacao Mutua Maxima de %s: \n%f\n\n', char(targets(i)), max(mutual_information));
    results(i) = max(mutual_information);
end

%bubbleSort the results and targets
[targets, results] = bubbleSort(targets, results);
    
%apresentacao dos resultados da pesquisa, seriados por ordem decrescente de informacao mutua         
for i=1:length(results)
    fprintf('%s - %f\n',char(targets(i)),results(i));
end