class Room < Area
    def arrive
        puts "\nYou have disturbed an angry and powerful(ish) wizard.\nHe seems angry, even for an angry wizard. \nWhat do you do?!"
        puts "1. Attempt to ask a quick question\n2. Tell him you like his hat\n3. Um, I just wanted to enter some words...\n"
    end

    def check_command(choice)
        if choice == '1'
            puts "Faizaan casts \"Look annoyed and mumble something about a help request\""
            wait
            puts "Your quick question had no effect!\n"
            wait(3)
        elsif choice == '2'
            puts "THANKS! IT READS MY BRAIN WAVES"
            puts "
        (\\.   \\      ,/)
         \\(   |\\     )/
         //\\  | \\   /\\
        (/ /\\_#oo#_/\\ \\)
         \\/\\  ####  /\\/
              `##' "
            sleep(2)
            puts "\nYou have appeased the wizard and may continue to enter in words!"
            wait
            wait
            @player.inventory.nice_hat = true
            return Start.new(@player)
        elsif choice == '3'
            puts 'Oh, ok, I mean I just thought this would be fun...'
            wait
            @player.inventory.unfun = true
            return Start.new(@player)
        else
            puts "THERE ARE NUMBERED CHOICES, MAYBE TRY ENTERING ONE OF THEM?"
            wait
        end
        return false
    end
end
