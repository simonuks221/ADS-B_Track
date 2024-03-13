function [correlation, diff_signal] = GenerateConvFromType(diff_amount, signal, preambule) % a - pagrindinis
    correlation = 0;
    diff_signal = 0;
    if diff_amount == 0
        correlation = GenerateConv(signal, preambule);
    else %Is differentiated
       moved_signal = [zeros(1, diff_amount), signal];
       diff_signal = signal - moved_signal(1:length(signal));
       correlation = GenerateConv(diff_signal, preambule);
    end
end