function [ hits ] = calcOcorrencias_v2(P, A, file_path)

[pathstr,name,ext] = fileparts(file_path);

hits = zeros(length(A));      
dims_P = size(P);

switch ext
	case '.bmp';

		for l=1:1:dims_P(1)         %linhas
			for c=1:2:dims_P(2)     %colunas
			hits(P(l,c)+1,P(l,c+1)+1) = hits(P(l,c)+1,P(l,c+1)+1) + 1;
			end
		end

	case '.wav';

		for c=1:1:dims_P(2)         
			for l=1:2:dims_P(1)     
			l_t=find(A==P(l,c), 1);
			c_t=find(A==P(l+1,c),1);
			hits(l_t,c_t) = hits(l_t,c_t) + 1;
		end
	end

	case '.txt';

		for c=1:2:dims_P(2)     %colunas
			l_t=find(A==P(c), 1);
			c_t=find(A==P(c+1), 1);
			hits(l_t, c_t) = hits(l_t, c_t) + 1;
		end

end

hits = reshape(hits', 1, []);

end