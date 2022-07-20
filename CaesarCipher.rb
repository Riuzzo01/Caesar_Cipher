def caesar_cipher(message, shift = 0)
    cipherMsg = message.chars.map do |letter|
      letterCode = letter.ord
      if letterCode >= 65 and letterCode <= 90
        if letterCode + shift > 90
          letterCode += shift - 26
        else
          letterCode += shift
        end
      elsif letterCode >= 97 and letterCode <= 122
        if letterCode + shift > 122
          letterCode += shift - 26
        else
          letterCode += shift
        end
      end
      letter = letterCode.chr
    end 
    puts cipherMsg.join
end

caesar_cipher("What a String!", 5)