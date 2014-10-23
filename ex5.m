%kid.bmp
disp('kid.bmp');
file_path = 'dados/kid.bmp';
imagem=imread(file_path);

alfabeto = criaAlfabeto(file_path);
Histograma_v2(imagem, alfabeto, file_path);

ent=Entropia_v2(imagem, alfabeto, file_path);
disp('entropia:');
disp(ent);

pause;

%homer.bmp
disp('homer.bmp');
file_path = 'dados/homer.bmp';
imagem=imread(file_path);

alfabeto=criaAlfabeto(file_path);
Histograma_v2(imagem, alfabeto, file_path);

ent=Entropia_v2(imagem, alfabeto, file_path);
disp('entropia:');
disp(ent);

pause;

%homerBin.bmp
disp('homerBin.bmp');
file_path = 'dados/homerBin.bmp';
imagem=imread(file_path);

alfabeto=criaAlfabeto(file_path);
Histograma_v2(imagem, alfabeto, file_path);

ent=Entropia_v2(imagem, alfabeto, file_path);
disp('entropia:');
disp(ent);

pause;

%guitarSolo.wav
disp('guitarSolo.wav');
file_path = 'dados/guitarSolo.wav';
[signal, fs, nbits]=wavread(file_path);

alfabeto=criaAlfabeto(file_path);
Histograma_v2(signal, alfabeto, file_path);

ent=Entropia_v2(signal, alfabeto, file_path);
disp('entropia:');
disp(ent);

pause;

%english.txt
disp('english.txt');
file_path = 'dados/english.txt';
fileID=fopen(file_path);
text=fscanf(fileID, '%c');

alfabeto=criaAlfabeto(file_path);
Histograma_v2(text, alfabeto, file_path);

ent=Entropia_v2(text, alfabeto, file_path);
disp('entropia:');
disp(ent);

pause;