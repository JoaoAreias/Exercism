=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
  def self.convert(n)
    sounds = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong",
    }

    converted = sounds.select{|key, sound| n % key == 0}.values
    converted.empty?? n.to_s : converted.join
  end
end