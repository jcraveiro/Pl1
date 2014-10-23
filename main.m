%na minha opiniao nao podemos desenhar o grafico na funcao histograma pois
%precisavamos de mandar a extensao(axis muda com o ficheiro) e assim ja nao
%recebia apenas P e A

%Tambem fiz um script que cria o alfabeto para cada fonte

%IMPORTANTE por agora a funcao histograma so desenha um grafico nas imagens
%primeiro porque nenhuma e rgb(acho) e segunda porque demois acho que da
%mess up no calculo da entropia

%kid.bmp
disp('kid.bmp');
imagem=imread('dados/kid.bmp');

alfabeto = criaAlfabeto('dados/kid.bmp');
hist= Histograma(imagem, alfabeto);

ent=Entropia(imagem, alfabeto);
disp('entropia:');
disp(ent);
HF = hufflen(hist);
disp('N medio de bits (Huffman):');
disp(calcMediaBits(hist, HF));

pause;

%homer.bmp
disp('homer.bmp');
imagem=imread('dados/homer.bmp');

alfabeto=criaAlfabeto('dados/homer.bmp');
hist=Histograma(imagem, alfabeto);

ent=Entropia(imagem, alfabeto);
disp('entropia:');
disp(ent);
HF = hufflen(hist);
disp('N medio de bits (Huffman):');
disp(calcMediaBits(hist, HF));

pause;

%homerBin.bmp
disp('homerBin.bmp');
imagem=imread('dados/homerBin.bmp');

alfabeto=criaAlfabeto('dados/homerBin.bmp');
hist=Histograma(imagem, alfabeto);

ent=Entropia(imagem, alfabeto);
disp('entropia:');
disp(ent);
HF = hufflen(hist);
disp('N medio de bits (Huffman):');
disp(calcMediaBits(hist, HF));

pause;

%guitarSolo.wav
disp('guitarSolo.wav');
[signal, fs, nbits]=wavread('dados/guitarSolo.wav');

alfabeto=criaAlfabeto('dados/guitarSolo.wav');
hist=Histograma(signal, alfabeto);

ent=Entropia(signal, alfabeto);
disp('entropia:');
disp(ent);
HF = hufflen(hist);
disp('N medio de bits (Huffman):');
disp(calcMediaBits(hist, HF));

pause;

%english.txt
disp('english.txt');
fileID=fopen('dados/english.txt');
text=fscanf(fileID, '%c');

alfabeto=criaAlfabeto('dados/english.txt');
hist=Histograma(text, alfabeto);

ent=Entropia(text, alfabeto);
disp('entropia:');

disp(ent);
HF = hufflen(hist);
disp('N medio de bits (Huffman):');
disp(calcMediaBits(hist, HF));

pause;
