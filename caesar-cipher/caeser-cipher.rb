require "pry"
def caesar_cipher(string, change_integer)
  return "Number enterred must be integer" unless change_integer.is_a? Integer
  cipher_int = change_integer%26
  split_string_array = string.split("")
  encrypted_character_array = split_string_array.map do |character|
    char_code=character.ord
    if char_code.between?(65,90)
      if char_code+cipher_int<91
        character= ( char_code+cipher_int).chr 
      else character=(((char_code+cipher_int)%90)+64).chr
      end
    elsif char_code.between?(97,122)
      if char_code+cipher_int<123
        character=(char_code+cipher_int).chr 
      else character=((char_code+cipher_int)%122+96).chr
      end
    end
    character
  end
  encrypted_character_array.join("")
end

p ciphered_string = caesar_cipher("This is the best string EVER!!!1!",20)
p caesar_cipher(ciphered_string, -20)