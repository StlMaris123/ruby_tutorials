def square_or_not_square(arr)
  arr.map do |a|
    if (Math.sqrt(a).to_i * Math.sqrt(a).to_i == a)
      then Math.sqrt(a).round
    else
      a * a
    end
  end
end
