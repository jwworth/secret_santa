class SecretSanta
  def self.create_list(names)
    if names.length <= 2
      "List too short"
    elsif names.length != names.uniq.length
      "Please enter unique names"
    else
      # shuffle names and create hash (currently untested)
      shuffled_names = names.dup.shuffle!
      shuffled_names.each_with_index do |name, i|
        puts "#{name} -> #{shuffled_names[i - 1]}"
      end
    end
  end

  def self.solicit_input
    puts "Enter each name in the Secret Santa pool, separated by a space:"
    names = gets.downcase.chomp
    create_list(names.split(" "))
  end
end
