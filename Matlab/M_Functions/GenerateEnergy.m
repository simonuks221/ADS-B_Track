function energy = GenerateEnergy(signal, window, floor)
    energy = zeros(1, length(signal));
    
    for i = window + 1:length(signal)
        energy(i) = sum(abs(signal(i - window : i) .* signal(i - window : i)));
        energy(i) =  energy(i) / window;
        if(energy(i) < floor)
            energy(i) = floor;
        end
    end
end