# store SSH credentials by client nickname for easy recall

function tunnel-ex

  switch $argv

    # format switch cases like this:
    case server_nickname
      ssh admin@111.111.111.111

    case server_nickname_two
      ssh root@222.222.222.222

    # else print $error (from config.fish)
    case '*'
      echo $error

  end

end
