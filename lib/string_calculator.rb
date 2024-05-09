class StringCalculator
  def add(string)
    return 0 if string.empty? || string.nil?
    default_delimeter = ','
    delimeter = string.start_with?('//') ? string[2] : default_delimeter
    numbers = string.split(/\\n|#{delimeter}/).map(&:to_i)
    negative_nums = numbers.select(&:negative?)
    raise "negative numbers not allowed #{negative_nums.join(', ')}" if negative_nums.any?
    return numbers.inject(:+)
  end
end