class Start < Area
  def clear
    puts "\e[H\e[2J"
  end

  def wait
    sleep(0.05)
  end

  def arrive
    puts "Enter some words!"
  end

  def check_command(choice)
   if choice == "faizaan"
      lightning = "
    \\  /\\  /\\/  \\  \\      /
     \\/  \\/\\/\\    \\ \\    /
      \\  /     \\   \\/\\  /
       \\/        \\ /  \\/"

  wizard ="
       (\\.   \\      ,/)
        \\(   |\\     )/
        //\\  | \\   /\\
       (/ /\\_#oo#_/\\ \\)
        \\/\\  ####  /\\/
            `##' "
    counter = 20

    clear
    puts "\n\n\n\n"
    puts "WHO SUMMONED THE GREAT AND TERRIBLE FAIZAAN?!"
    puts wizard
    sleep(4)
    clear
      while counter > 0
      if counter.odd?
        puts "\n\n\n\n\n"
        puts wizard.blue
        counter -= 1
        sleep(0.1)
        clear
      else
        puts lightning.yellow
        puts wizard.red
        counter -= 1
        sleep(0.1)
        clear
      end
    end
    return Room.new(@player)
    else
      alphabet = ("a".."z").to_a
      count = 0
      thing = 0
      output = []
      choice.reverse!
      words = choice.split("")
      words.reverse
      len = words.length
      while thing < len do
        while count < 10 do
          output.each { |l| print l}
          print alphabet.sample
          wait
          clear
          count += 1
        end
        output << words.pop.to_s
        output.each { |l| print l}
        wait
        count = 0
        thing += 1
        clear
      end
        output.each { |l| print l}
        sleep (2)
        puts
          if @player.inventory.unfun
            puts "\nHAPPY???"
            sleep(2)
          elsif @player.inventory.nice_hat
            puts "\nGuys please don't let Faizaan murder me? Thanks in advance"
            sleep(2)
          end
      return End.new(@player)
    end
  end
end

