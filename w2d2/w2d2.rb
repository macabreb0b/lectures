# Object-Orientation

class Bug
  attr_reader :eye_count, :leg_count, :body_segments
  
  def initialize(eye_pairs, leg_count, body_segments)
    @eye_pairs, @leg_count, @body_segments = eye_pairs, 
          leg_count, body_segments
  end
  
  def draw_legs
    @leg_count.times { print "| " }
    puts
  end
  
  def smile
    @eye_pairs.times { print ":" }
    print " )"
    puts
  end
  
  def draw_body
    @body_segments.times { print "(  ) "}
  end
  
  def draw
    draw_body
    smile
    draw_legs
  end
  
  def eat
    puts 'nibbling'
  end
end

class Insect < Bug
  def initialize
    super(1, 6, 3)
  end
  
  def eat
    puts 'chewing'
  end
end

class Arachnid < Bug
  def initialize(eye_pairs)
    super(eye_pairs, 8, 2)
    @lung_type = 'book'
  end
  
  def eat 
    puts 'om nom nom'
  end
  
  def creep
    puts "I'm creeping"
  end
  
  def attack
    puts "I'll bite you"
  end
end


class Spider < Arachnid
  def initialize
    super(4)
  end
  
  def hunt
    spin_web
    creep
  end
  
  def spin_web
    puts "I'm spinning a web"
  end
end

class Scorpion < Arachnid
  
  def initialize
    super(5)
  end
  
  def attack
    puts "I'm stinging you"
  end
  
  def draw
    print "<0 --- "
    draw_body
    smile
    print "       "
    draw_legs
  end
end



class Tarantula < Spider
  def hunt
    puts "I'm running after things"
  end
end

class BrownRecluse < Spider
  def hunt
    puts "I'm necrotizing y'all"
  end
end

class BirdEater < Tarantula
  def hunt
    super
    puts "Now I'm eating a bird"
  end
end

class Shelob < Spider
  def hunt
    puts "I'm devouring balrogs"
  end
end

class JumpingSpider < Spider
  def hunt
    puts "I'm triangulating my position, then jumping"
  end
end

class BlackWidow < Spider
end


