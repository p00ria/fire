
do

function run(msg, matches)
  return "کس ننت کیرم تو کونت مادر جنده کس کش گاییدم ننتو".. matches[1]
end

return {
  description = "Says fosh to someone", 
  usage = "say fosh to [name]",
  patterns = {
    "^[!/]fosh(.*)$",
    "^[!/]fosh(.*)$",
    "^fosh(.*)$"
  }, 
  run = run 
}

end

