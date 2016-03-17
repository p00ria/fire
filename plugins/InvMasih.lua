do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 99628088

  if matches[1] == "invmasih" then
    user = 'user#id'..99628088
  end

  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "inviting sudo......"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "invsudo", 
  usage = {
    "!invite name [user_name]", 
    "!invite id [user_id]" },
  patterns = {
    "^[!/](invmasih)$"
  }, 
  run = run 
}

end

