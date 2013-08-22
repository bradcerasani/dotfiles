set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set fish_greeting
  set_color yellow
  echo Happy (date '+%A').\n

set error NOPE (set_color yellow)chuck testa  🐴

function hush
  touch ~/.hushlogin
end

function config
	subl ~/.config/fish/config.fish
end

#	IP
function myip
	dig +short myip.opendns.com @resolver1.opendns.com
end

# Git Shortcuts
function g
	git
end

function gs
	git status
end

function gb
	git checkout -b
end

function gc
	git commit -m $argv
end

function gd
	git difftool $argv
end

function ga
	git add -A
end

function gl
	git log
end

function g-unstage
	git rm --cached
end

function g-undo
  git reset --soft HEAD^
end

function g-amend
  git commit --amend -C HEAD
end

# Git Status in Prompt
function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color red) $branch (set_color normal)
  else
    echo (set_color green) $branch (set_color normal)
  end
end

# Hidden Files
function show
  defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder
end

function hide
  defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder
end

function hidedesktop
  defaults write com.apple.finder CreateDesktop -bool false; killall Finder
end

function showdesktop
  defaults write com.apple.finder CreateDesktop -bool true; killall Finder
end

#	 Asset Grabbers (thanks https://github.com/juliogarciag/dotfiles)
function url_final_part -d "get the final part of a string separated by /"
  set str_parts (echo $argv[1] | sed 's/\//\ /g')
  eval "set parts $str_parts"
  echo $parts[-1..-1]
end

function download -d "download a file in the current dir from the url $1"
  curl -o (url_final_part $argv[1]) $argv[1]
end

function get
  switch $argv
    case jquery
      download http://code.jquery.com/jquery.min.js
    case underscore
    	download http://underscorejs.org/underscore.js
    case normalize
    	download http://necolas.github.io/normalize.css/2.1.2/normalize.css
    case '*'
      echo $error
  end
end

#	Blog Kickstart
function blog # $title $tags
  set date (date '+%Y-%m-%d')
  set filename $date-(echo $argv[1] | tr -s ' ' | tr ' ' '-')
  set postdir ~/desktop/
  set var_count (count $argv)
  cd $postdir
    if test $var_count = 2
  		echo title: $argv[1]\ndate: $date\ntags: $argv[2]\n---\n\n >$filename.md
    else
   		echo title: $argv[1]\ndate: $date\ntags: general\n---\n\n >$filename.md
   	end
  open $filename.md
end

# Test Birthday
function birthday
	set date (date '+%m%d')
	if test $date = 0415
		echo   '  🎂'
	end
end

#	Prompt
function fish_prompt
  if test -d .git
    printf '%s%s  %s%s git:%s%s ' (echo 🐙) (birthday) (set_color yellow) (prompt_pwd) (set_color normal) (parse_git_branch)
  else
    printf '%s%s  %s%s%s ' (echo 🐙) (birthday) (set_color yellow) (prompt_pwd) (set_color normal)
  end
end
