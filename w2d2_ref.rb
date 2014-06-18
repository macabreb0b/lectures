# what kind of thing is spider?

# what other things are arachnids?

class Bug
  def initialize(eye_pairs, legs, body_segments)
    @eye_pairs, @legs, @body_segments = eye_pairs, legs, body_segments
  end
  
  def creep
    puts 'creeping!'
  end
  
  def draw_body
    @body_segments.times { print '(  ) '}
  end
  
  def draw_legs
    @legs.times { print "| "}
    puts
  end
  
  def smile
    eyes = []
    @eye_pairs.times { eyes.push ':' }
    print eyes.join + ' )'
    puts
  end
  
  def draw
    draw_body
    smile
    draw_legs
  end
end

class Insect < Bug
  def initialize
    super(1, 6, 3)
  end
end

class Arachnid < Bug
  def initialize
    super(4, 8, 2)
  end
end

class Spider < Arachnid
  def spin_web
    puts 'spinning ye a web'
  end
  
  def hunt
    spin_web
  end
end

class Scorpion < Arachnid
  def attack
    puts (rand(2) > 0 ? 'I clawed you!' : "I stung you!")
  end
  
  def hunt
    puts 'chase down prey'
    attack
  end
end

class WolfSpider < Spider
  def hunt
    puts 'chase down prey'
  end
end

class BlackWidow < Spider
end

class JumpingSpider < Spider
  def hunt
    puts 'jump on prey'
  end
end

class BrazilianWanderer < Spider
  def hunt
    puts 'hide in bananas'
  end
end

class Butterfly < Insect
  def hunt
    puts 'seek & destroy flower'
  end
end