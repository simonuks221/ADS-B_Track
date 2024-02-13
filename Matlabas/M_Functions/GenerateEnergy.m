function energy = GenerateEnergy(signal, window)
    energy = zeros(1, length(signal));
    
    for i = window + 1:length(signal)
        energy(i) = sum(abs(signal(i - window : i) .* signal(i - window : i)));
    end
end