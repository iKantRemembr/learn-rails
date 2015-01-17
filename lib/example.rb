class Example < Object
  
  attr_accessor :honorific
  attr_accessor :name
  attr_accessor :date
  
  def initialize(name,date)
    @name = name
    @date = date.null ? Date.today : date
  end
  
  def backwards_name
    @name.reverse
  end
  
  def to_s
    @name
  end
  
  def title_name
    @honorific ||= 'Esteemed'
    titled_name = "#{@honorific} #{@name}"
  end
  
  def december_birthdays
    born_in_december = []
    
    famous_birthdays.each do |name, date|
      if date.month == 12
        born_in_december << name
      end
    end
  end
  
  born_in_december
  
  private
  
  def famous_birhdays
    birthdays = {
      'Ludwig' => Date.new(1770, 12, 16),
      'Brubeck' => Date.new(1920, 12, 6),
      'Buddy' => Date.new(1936, 9, 7)
    }
  end
end