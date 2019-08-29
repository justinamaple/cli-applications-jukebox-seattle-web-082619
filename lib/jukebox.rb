def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs)
    puts "Please enter a song name or number:"
    input_string = gets.strip
    input_integer = input_string.to_i

    if input_integer.between?(1,9)
        puts "Playing #{songs[input_integer - 1]}!"
    elsif songs.include?(input_string)
        puts input_string
    else
        puts "Invalid input, please try again"
    end

end

def list(songs)
    songs.each_with_index do |name, index|
        puts "#{index + 1}. #{name}"
    end
end

def exit_jukebox
    puts "Goodbye!"
end


def run(songs_list)
    puts "Please enter a command:"
    input = gets.chomp

    case input
    when "help"
        help
    when "list"
        list(songs_list)
    when "play"
        play(songs_list)
    when "exit"
        exit_jukebox
    end
end