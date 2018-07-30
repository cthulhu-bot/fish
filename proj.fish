function proj
  set args $argv
  if test -n "$args"
    set projArgs ~/projects/$args
    printf "projArgs: %s\n" $projArgs
    cd $projArgs
  else
    cd ~/projects
  end
end
