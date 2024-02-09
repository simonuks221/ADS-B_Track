function packet_bits = GenerateBits(data_bits) % a - pagrindinis
    crcgenerator = comm.CRCGenerator(['z^24 + z^23 + z^22 + z^21 + z^20 + z^19 + z^18 + z^17 + z^16 + z^15 + z^14' ...
                                   ' + z^13 + z^12 + z^10 + z^3 + 1']);
    codeword = crcgenerator(data_bits);
    check_sum = codeword(end-24+1:end);
    packet_bits = [data_bits', check_sum'];
end