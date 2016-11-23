class Pangram
  def self.is_pangram?(sentence)
    sentence.downcase!
    ("a".."z").all? { |char| sentence.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end
