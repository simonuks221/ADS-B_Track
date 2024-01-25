function y = GenerateConv(a, b) % a - pagrindinis
    pilnasSig = [zeros(1, length(b)), a];
    naujas = zeros(1, length(pilnasSig)-length(b));
    for i = length(b):length(pilnasSig)
        sudaugintas = sum(b.*pilnasSig(i-length(b)+1:i));
        naujas(i-length(b)+1) = sudaugintas;
    end
    y = naujas(2:length(naujas));
end