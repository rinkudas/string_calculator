class StringCalculator
  def add(string)
    return 0 if string.empty? || string.nil?
    return string.split(",").map(&:to_i).inject(:+)
  end
end