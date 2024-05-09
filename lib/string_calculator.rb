class StringCalculator
  def add(string)
    return 0 if string.empty? || string.nil?
    default_delimeter = ','
    delimeter = string.start_with?('//') ? string[2] : default_delimeter
    return string.split(/\\n|#{delimeter}/).map(&:to_i).inject(:+)
  end
end