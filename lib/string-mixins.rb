class String
  
  def capitalize_first_letter
      self[0].chr.capitalize + self[1, size]
    end

    def capitalize_first_letter!
      unless self[0] == (c = self[0,1].upcase[0])
        self[0] = c
        self
      end
    end
  
  def camelize
    a = self.split("_")
    a.each do |b|
      b.capitalize_first_letter!
    end
    return a.join("")
  end
  
  def classify
    return eval(self)
  end
  
end