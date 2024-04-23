function output = SteppSignal(input)
    ADCmax = 1.4;
    ADCbits = pow2(8)-1;
    output = round(input / ADCmax*ADCbits); %1.5V Vref
    for i = 1: length(input)
        if(output(i) > ADCbits)
            output(i) = ADCbits;
        elseif(output(i) < 0)
            output(i) = 0;
        end
    end
end