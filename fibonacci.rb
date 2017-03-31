def fibs(n) # n = 5
  base_fibs = [0, 1]
  fib_string = ""
  if n > 2
    (n-2).times do |index|
      base_fibs << base_fibs[index] + base_fibs[index+1] 
    end
  end
  n.times { |index| fib_string << "#{base_fibs[index]} " }
  puts fib_string
end

def fibs_rec(n) # n >= 2
  n == 2 ? "0 1" : "#{fibs_rec(n-1)} #{fibs_rec(n-1).split[-1].to_i + fibs_rec(n-1).split[-2].to_i}"
end