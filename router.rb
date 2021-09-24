# _controller =  Controller.new

begin
    print "Would you like to play Yahtzee: "
    input = gets.chomp.downcase.strip.split(' ')
    command, param = input

    case command
    when 'yes', 'y'
        recipes_controller.index
    when 'show', 's'
        recipes_controller.show param
    when 'new', 'n'
        recipes_controller.new
    end
end until ['quit', 'q'].include? command
