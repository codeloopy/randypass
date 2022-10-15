module ItemsHelper

  def password_generator(max_length = 10, all_upper = false, all_lower = false, only_symbols = false, only_numbers = false)
    alphabet = all_upper ? only_letters_generator("upper") : all_lower ? only_letters_generator("lower") : only_letters_generator
    numbers_and_special_chars =  only_numbers ? 0..9 : only_symbols ? only_symbols_generator : symbol_number_mixer

    rand_letter_symbols = (alphabet).to_a.shuffle.join
    rand_number = (numbers_and_special_chars).to_a.shuffle.join
    rand_total = ((rand_number + rand_letter_symbols).split('').shuffle.join)[0..max_length]
    rand_total
  end

  def only_symbols_generator
    set1 = ("!".."/").to_a
    set2 = (":".."@").to_a
    set3 = ("[".."`").to_a
    set4 = ("{".."~").to_a

    set1.concat(set2).concat(set3).concat(set4)
  end

  def only_letters_generator(letter_case = '')
    case letter_case
      when "upper"
        ("A".."Z").to_a
      when "lower"
        ("a".."z").to_a
      else
        ("A".."Z").to_a.concat(("a".."z").to_a)
    end
  end

  def symbol_number_mixer
    numbers_only = ('0'..'9').to_a.shuffle
    only_symbols_generator.concat(numbers_only).shuffle
  end

end