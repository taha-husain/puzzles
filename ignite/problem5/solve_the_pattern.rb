class Solver
  attr_accessor :alphabets, :str, :diff
  NUMBER_OF_ALPHABETS = 25 # Starting from 0

  def initialize(str = '', diff = 0)
    @alphabets = { lower: ('a'..'z').to_a, upper: ('A'..'Z').to_a }
    @str = str
    @diff = diff
  end

  def self.is_upper?(char)
    /[[:upper:]]/.match(char)
  end

  def self.is_lower?(char)
    /[[:lower:]]/.match(char)
  end

  def decode_pattern_string
    decode_letters_of_string.gsub("\n", " ")
  end

  private
  def new_index(alphabets, alphabet)
    if ((alphabets.index(alphabet) + self.diff) > NUMBER_OF_ALPHABETS)
      self.diff + alphabets.index(alphabet) - NUMBER_OF_ALPHABETS
    else
      alphabets.index(alphabet) + self.diff
    end
  end

  def pattern_alphabet(alphabet)
    alphabets = if Solver.is_lower?(alphabet)
                  self.alphabets[:lower]
                else
                  self.alphabets[:upper]
                end
    return alphabet unless alphabets.include?(alphabet)
    alphabets[new_index(alphabets, alphabet)]
  end

  def decode_letters_of_string
    self.str.split('').map { |char| pattern_alphabet(char) }.join('')
  end
end

# =============================================================================

solver_obj = Solver.new('Vrphwklqj phdqlqjixo', -3)
solver_obj.decode_pattern_string

# => "Something meaningful"

solver_obj = Solver.new("Zulwh d surjudp (lq Sbwkrq, MdydVfulsw ru Uxeb) wr srsxodwh dqg wkhq vruw d
                        udqgrpob glvwulexwhg olvw ri 1 ploolrq lqwhjhuv, hdfk lqwhjhu kdylqj d ydoxh >= 1 dqg
                        <= 100.
                        Brxu surjudp vkrxog fduhixoob frqvlghu wkh lqsxw dqg frph xs zlwk wkh prvw hiilflhqw
                        vruwlqj vroxwlrq brx fdq wklqn ri. Surylgh wkh vsdfh dqg wlph frpsohalwb ri brxu
                        dojrulwkp", -3)
solver_obj.decode_pattern_string

# => "Next Problem ;)"