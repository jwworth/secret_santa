class SecretSanta
  def self.create_list(names)
    if names.length <= 2
      "ERROR: List too short"
    elsif names.length != names.uniq.length
      "ERROR: Please enter unique names"
    else
      # shuffle names and create array (currently untested)
      list = []
      digraph_list = []
      shuffled_names = names.dup.shuffle!
      shuffled_names.each_with_index do |name, i|
        list << "#{name} -> #{shuffled_names[i - 1]}"
      end
      # write the list to a dot file for graphviz
      digraph_list = list.join("; ")
      digraph = "digraph {#{digraph_list}}\n"
      File.open('ss_list.dot', 'w') { |f| f.write("#{digraph}") }
      # return the list
      puts "-" * 40
      puts "Secret Santa List:"
      list
    end
  end

  def self.solicit_input
    puts "Enter each name in the Secret Santa pool, separated by a space:"
    names = gets.downcase.chomp
    create_list(names.split(" "))
  end
end
