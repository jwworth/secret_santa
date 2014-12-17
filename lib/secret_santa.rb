class SecretSanta
  def self.create_list(names)
    if names.length <= 2
      "ERROR: List too short"
    elsif names.length != names.uniq.length
      "ERROR: Please enter unique names"
    else
      # shuffle names and create array (currently untested)
      list = []
      shuffled_names = names.dup.shuffle!
      puts "-" * 40
      puts "Secret Santa List:"
      shuffled_names.each_with_index do |name, i|
        list << "#{name} -> #{shuffled_names[i - 1]}"
      end
      list
    end
  end

  def self.solicit_input
    puts "Enter each name in the Secret Santa pool, separated by a space:"
    names = gets.downcase.chomp
    create_list(names.split(" "))
  end
end
