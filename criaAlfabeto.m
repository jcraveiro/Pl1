function [alfabeto] = criaAlfabeto(ficheiro)

[pathstr,name,ext] = fileparts(ficheiro);
switch ext
    case '.bmp';
        alfabeto = linspace(0, 255, 256);
    case '.wav';
        [signal, fs, nbits]=wavread(ficheiro);
        alfabeto=linspace(-1,1, 2^nbits+1);
        alfabeto(2^nbits+1)=[];
    case '.txt';
        alfabeto=[65:90 97:122];
        
end
