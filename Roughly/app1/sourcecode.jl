function helloapp()
    while true
        println("Hello, world!\n")
        println("My name is Julia. What's your name?")
        println("(blank to exit)")
        input = readline()
        if input == ""
            break
        end
        println("\nHello, $input. It's very nice to meet you!")
        println("(press any key to continue)")
        readline()
        clear()
    end
end