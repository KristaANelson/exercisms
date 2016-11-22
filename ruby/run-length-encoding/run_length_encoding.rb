module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input)
    group_input_by_letter(input).reduce("") do |output, letter_group|
      output += letter_group.length.to_s if letter_group.length > 1
      output += letter_group.first
    end
  end

  def self.group_input_by_letter(input)
    input.chars.reduce([]) do |output, letter|
      if output.empty? || output.last.first != letter
        output << [letter]
      else
        output.last << letter
      end
      output
    end
  end

  def self.decode(output)
    number = ""
    output.chars.reduce("") do |input, char|
      if /[0-9]/.match(char)
        number += char
      else
        (number.empty? ? 1 : number.to_i).times do
          input += char
        end
        number = ""
      end
      input
    end
  end
end
