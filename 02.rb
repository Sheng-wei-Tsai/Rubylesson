# 5.times do |i|
#   puts i
# end

# def say_hello
#   puts "Hi"
#   yield 3,8
#   puts "What?"
#   # yield 4
# end
# yield 才會把控制權給block 不然block 不會被執行  


# say_hello do |n, m|
#  puts n, m
# end

# puts "there!!"

# 5.times {
#   puts "Hi"
# } times 方法裡面有yield 這個指令 

# def hello
#   puts "123"
#   result = yield 5
#   puts result
# end

# hello {|x| x * 2}

# def filter 
#   result = []
#   if yield(i)  
#     result << i
#   end
# end

# filter {
#   if |i| i > 2 
# }

# puts [1, 2, 3, 4, 5].filter {|x| x > 2}


# def filterer
#   if x > 5 
#     yield x 
#   end
# end

# filterer {}

# def test_two 
#   if yield 2
#     puts "Yes,this is 2"
#   else
#     puts "no, this isn't 2"
#   end
# end

# test_two {|n|
#  n == 2}

# list = [1, 2, 3, 4, 5 ]

# puts list.select { |x| x > 1}
# puts list.select { |x| x > 2}
# puts list.select { |x| x.odd? }

# def hello
#   puts "1"
#   yield
#   puts "2"
# end

# hello { return 2} # 直接結束這回合 不要亂塞return 在 block 裡面塞return

# block 並不是參數


# def noblock 
#   if block_given?
#     yield 4
#   end
# end

# def adult?(age)
#   true / false
# end
# ? 一定要回傳 true or false
# if adult?(20)....
# ! 會修改原本的資料
# list = [1, 2, 3, 4, 5]

# def my_select(list)
#   result = []
#   list.each do |n|
#   result << n if yield(n)
#   end
#   result
# end

# p my_select([1, 2, 3, 4, 5]) {|i| i.odd? }

# list.select {|n| n.odd?}

# def my_filter(list)
#   result = []
#   list.each { |n|
#     result << n  if yield(n)
#   }
#   result.sum
# end

# p my_filter([*1..100]) {|i| i > 2}