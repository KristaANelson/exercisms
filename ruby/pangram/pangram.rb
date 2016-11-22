class Pangram
  def self.is_pangram?(str)
    (required_chars - included_chars(str)).empty?
  end

  def self.required_chars
    ("a".."z").to_a
  end

  def self.included_chars(str)
    str.downcase.chars
  end
end

module BookKeeping
  VERSION = 2
end
