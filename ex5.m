%kid.bmp
disp('kid.bmp');
file_path = 'dados/kid.bmp';
imagem=imread(file_path);

alfabeto = criaAlfabeto_v2(file_path);
hist=Histograma_v2(imagem, alfabeto, file_path);

ent=Entropia_v2(imagem, alfabeto, file_path);
disp('entropia:');
disp(ent);

pause;

%homer.bmp
disp('homer.bmp');
file_path = 'dados/homer.bmp';
imagem=imread(file_path);

alfabeto=criaAlfabeto_v2(file_path);
hist=Histograma_v2(imagem, alfabeto, file_path);

ent=Entropia_v2(imagem, alfabeto, file_path);
disp('entropia:');
disp(ent);

pause;

%homerBin.bmp
disp('homerBin.bmp');
file_path = 'dados/homerBin.bmp';
imagem=imread(file_path);

alfabeto=criaAlfabeto_v2(file_path);
hist=Histograma_v2(imagem, alfabeto, file_path);
bar(1:1:length(hist), hist);
%axis([0 length(hist)+1 0 max(hist)+1]);
axis 'auto x';
axis 'auto y';

ent=Entropia_v2(imagem, alfabeto, file_path);
disp('entropia:');
disp(ent);
%HF = hufflen(hist);
%disp('N medio de bits (Huffman):');
%disp(calcMediaBits(hist, HF));

pause;

%}

%guitarSolo.wav
disp('guitarSolo.wav');
file_path = 'dados/guitarSolo.wav';
[signal, fs, nbits]=wavread(file_path);

alfabeto=criaAlfabeto_v2(file_path);
hist=Histograma_v2(signal, alfabeto, file_path);
bar(1:1:length(hist), hist);
%axis([-1.1 1.1 0 max(hist)]);
axis 'auto x';
axis 'auto y';

ent=Entropia_v2(signal, alfabeto, file_path);
disp('entropia:');
disp(ent);
%HF = hufflen(hist);
%disp('N medio de bits (Huffman):');
%disp(calcMediaBits(hist, HF));

pause;

%english.txt
disp('english.txt');
file_path = 'dados/english.txt';
fileID=fopen(file_path);
text=fscanf(fileID, '%c');

alfabeto=criaAlfabeto_v2(file_path);
hist=Histograma_v2(text, alfabeto, file_path);
axis([0 length(hist)+1 0 max(hist)+1]);

ent=Entropia_v2(text, alfabeto, file_path);
disp('entropia:');
bar(1:1:length(hist), hist);
axis 'auto x';
axis 'auto y';

disp(ent);
%HF = hufflen(hist);
%disp('N medio de bits (Huffman):');
%disp(calcMediaBits(hist, HF));

pause;