class BabyDragon
  def initialize(name)
    @name               = name
    @asleep             = false
    @stuff_in_belly     = 10
    @stuff_in_intestine = 0
    puts "#{@name} nació."
  end

  def feed
    puts "Alimentaste al #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "Paseaste a #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "Pusiste #{@name} a dormir."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} bostezó, y llenó el cuarto de humo."
      end
    end
    if @asleep
      @asleep = false
      puts "El taagochi dragón #{@name} despierta lentamente."
    end
  end

  def toss
    puts "Lanzáste a #{@name} en el aire."
    puts 'El Dragón sonríe de felicidad'
    passage_of_time
  end
  
  def swing
    puts "Balanceas suavemente a #{@name}"
    @asleep = true
    puts 'Él se duerme'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...pero despierta cuando se detiene'
    end
  end
  
  private
  # "private" means that the methods defined here are
  # methods internal to the object.
  # (You can feed your # dragon, but you can't ask him whether he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we do this only if the method
    # returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 2
      @stuff_in_intestine = @stuff_in_intestine + 2
    else
      # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'Despierta repentinamente!'
      end
      puts "#{@name} está hambriento! Por la desesperación, te COMIÓ VIVO!"
      exit # This quits the program.
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Ohhh no, ocurrió un accidente!
      #{@name} se hizo caca"
    end
    if hungry?
      if @asleep
        @asleep = false
        puts 'Despertó'
      end
      puts "#{@name}' está con mucha hambre"
    end
    if poopy?
      if @asleep
        @asleep = false
        puts 'Despertó!!'
      end
      puts "#{@name} está bailando porque quiere ir al bañooo..."
    end
  end
end