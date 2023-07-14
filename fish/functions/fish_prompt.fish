function fish_prompt 
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color magenta
  echo -n (fish_git_prompt)
  echo
  set_color blue
  echo -n '❯'
  set_color yellow
  echo -n '❯ '
end
