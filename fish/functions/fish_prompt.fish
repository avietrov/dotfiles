function fish_prompt
    set_color yellow
    echo -n (prompt_pwd)
    set_color red
    set -g __fish_git_prompt_show_informative_status true
    echo (fish_git_prompt)
    set_color green
    echo '>' (set_color normal)
end
