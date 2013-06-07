class Darryl

  def initialize(last_name)
    @last_name = last_name
  end   

  def say_hi
    puts "Hi, I'm Darryl #{@last_name}"
  end   

  def say_foo
    puts @foo
  end

  def def_foo(value)
    @foo = value
  end
end