function y = GenerateConv(a, b) % a - pagrindinis
    pilnasSig = [zeros(1, length(b)), a];
    naujas = [];
    for i = length(b):length(pilnasSig)
        sudaugintas = sum(b.*pilnasSig(i-length(b)+1:i));
        naujas = [naujas, sudaugintas];
    end
    y = naujas(2:length(naujas));
end