class StringCalculator
  def add(string)
    return 0 if string.empty?
    return string.to_i if string.length == 1

    if string.length >= 2
      num1, num2 = string.split(',')
      return num1.to_i + num2.to_i
    end
  end
end