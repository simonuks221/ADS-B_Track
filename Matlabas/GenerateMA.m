function y = GenerateMA(signal, amount)
    naujas = zeros(1, length(signal));
    for i = 1:amount
        naujasMA = sum(signal(1:i))/amount;
        naujas(i) = naujasMA;
    end

    for i = amount+1:length(signal)
        naujasMA = sum(signal(i-amount+1:i))/amount;
        naujas(i) = naujasMA;
    end
    y = naujas;
end