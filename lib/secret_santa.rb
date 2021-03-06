class SecretSanta
  # Create the Secret Santa list
  def self.create_list(names)
    if names.length <= 2
      'ERROR: List too short'
    elsif names.length != names.uniq.length
      'ERROR: Please enter unique names'
    else
      # Build the list
      list = []
      names.shuffle!
      names.each_with_index do |name, i|
        list << "#{name} -> #{names[i - 1]}"
      end
      # Write the list to a graphviz dot file
      digraph_list = list.join('; ')
      digraph = "digraph {#{digraph_list}}\n"
      File.open("#{Time.now.year}_secret_santa_list.dot", 'w') do |f|
        f.write("#{digraph}")
      end
      # Return the list
      puts "\n#{Time.now.year} Secret Santa List:"
      puts list
      "\nList saved to #{Time.now.year}_secret_santa_list.png"
    end
  end

  # Get Secret Santa names and handle
  def self.solicit_input
    puts 'Enter each name in the Secret Santa pool, separated by a space:'
    names = gets.downcase.chomp
    create_list(names.split(' '))
  end
end
