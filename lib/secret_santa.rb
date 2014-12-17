class SecretSanta
  def self.arrayify_input(*args)
    [*args]
  end

  def self.create_list(names)
    if names.length <= 2
      "List too short"
    elsif names.length != names.uniq.length
      "Please enter unique names"
    end
  end
end
