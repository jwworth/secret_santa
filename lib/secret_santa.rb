class SecretSanta
  def self.create_list(names)
    if names.length <= 2
      "ERROR: List too short"
    elsif names.length != names.uniq.length
      "ERROR: Please enter unique names"
    else
      # shuffle names and build lists
      list = []
      digraph_list = []
      names.shuffle!
      names.each_with_index do |name, i|
        list << "#{name} -> #{names[i - 1]}"
      end
      # write the list to a graphviz dot file
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
