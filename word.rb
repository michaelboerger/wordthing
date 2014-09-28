Word < Area

    words.reverse!
    words = words.split("")
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
    sleep(2)
