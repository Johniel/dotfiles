alias ls='exa'
alias clip='xsel --clipboard --input'

function lk
  set loc (walk $argv); and cd $loc;
end
