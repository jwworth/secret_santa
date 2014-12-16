class SecretSanta
  def self.arrayify_input(*args)
    [*args]
  end

  def self.create_list(array)
    if array.length <= 2
      "List too short"
    elsif array.length != array.uniq.length
      "Please enter unique names"
    end
  end
end
