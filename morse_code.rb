# rubocop:disable Metrics/MethodLength

def decode_char(mychar)
  code_dict = {
    'a' => '.-',
    'b' => '-...',
    'c' => '-.-.',
    'd' => '-..',
    'e' => '.',
    'f' => '..-.',
    'g' => '--.',
    'h' => '....',
    'i' => '..',
    'j' => '.---',
    'k' => '-.-',
    'l' => '.-..',
    'm' => '--',
    'n' => '-.',
    'o' => '---',
    'p' => '.--.',
    'q' => '--.-',
    'r' => '.-.',
    's' => '...',
    't' => '-',
    'u' => '..-',
    'v' => '...-',
    'w' => '.--',
    'x' => '-..-',
    'y' => '-.--',
    'z' => '--..',
    ' ' => ' ',
    '1' => '.----',
    '2' => '..---',
    '3' => '...--',
    '4' => '....-',
    '5' => '.....',
    '6' => '-....',
    '7' => '--...',
    '8' => '---..',
    '9' => '----.',
    '0' => '-----'
  }

  code_dict.key(mychar).upcase
end
# rubocop:enable Metrics/MethodLength

# get each word
def decode_morse_words(codes)
  codelist = codes.split
  word = ''
  codelist.each do |char|
    word += decode_char(char)
  end
  word
end

# combine words in message
def morse_message(code)
  codelist = code.split('  ')
  message = ''
  codelist.each do |char|
    message += decode_morse_words(char).concat(' ')
  end
  message
end

# Returns A BOX FULL OF RUBIES
puts morse_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
