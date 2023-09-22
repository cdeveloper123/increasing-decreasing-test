class IncreasingDecreasingNumber
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def count
    limit = 10**num
    count = 0

    (0...limit).each do |n|
      num_str = n.to_s
      is_increasing = is_decreasing = true

      is_increasing, is_decreasing = check_increasing_and_decreasing(num_str)

      if is_increasing || is_decreasing
        count += 1
      end
    end

    count
  end

  def check_increasing_and_decreasing(num_str)
    is_increasing = is_decreasing = true

    (0...num_str.length - 1).each do |i|
      if num_str[i] > num_str[i + 1]
        is_increasing = false
      end
      if num_str[i] < num_str[i + 1]
        is_decreasing = false
      end
    end

    [is_increasing, is_decreasing]
  end
end