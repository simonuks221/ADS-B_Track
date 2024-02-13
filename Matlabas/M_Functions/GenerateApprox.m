function approximation = GenerateApprox(energy, approx_type)
    approximation = zeros(1, length(energy));
    
    for i = 1:length(energy)
        approximation(i) = energy(i)^2*approx_type.coeficients(1)+ ...
                            energy(i)*approx_type.coeficients(2)+ ...
                            approx_type.coeficients(3);
    end
end