function [code_word] = my_sparse_code_encoder(user_data)
    % Adding 1 bits 0 to the end of user data
    extra_bit = [0];                % 1 extra bits to add
    code_word = [user_data extra_bit];  % Concatenate the bits
    
    % Check sparse code of code word
    w = sum(code_word);   % Count the number of 1s

    if w >= ceil(length(code_word)/2)
        code_word = 1 - code_word;
    end
end