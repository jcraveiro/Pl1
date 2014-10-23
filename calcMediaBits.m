function average = calcMediaBits(hist, HF)

average = 0;

probability_matrix = hist / sum(hist(:));
for i=1:length(probability_matrix)
    average = average + (probability_matrix(1,i)*HF(1,i));
end

end