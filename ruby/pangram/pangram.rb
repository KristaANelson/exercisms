class Pangram
  def self.is_pangram?(string)
    string.downcase.scan(/[a-z]/).uniq.length == 26
  end
end

module BookKeeping
  VERSION = 2
end
