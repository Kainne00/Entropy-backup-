--[[ 

testing file for learning Lua.. noting to see here but me breaking things. 
  
--]]





local mq = require 'mq'
local PackageMan = require 'mq/PackageMan'
local sql = PackageMan.Require 'lsqlite3'

require 'common' 


-- local dbpath = string.format('%s\\entropy\\data\\%s', mq.TLO.MacroQuest.Path('macros')(), util.files.DBcharacter(name))
local dbpath = util.files.DBcharacter(location)
local db = sql.open(dbpath)



if db then
  local stmt, err = db:prepare("SELECT env_var, value FROM environment_heal")
  -- stmt:bind_names{ value1 = 'FALSE' }
  for row,_ in stmt:nrows() do
    for k,v in pairs(row) do
      --if v ~= 'FALSE' then
        printf('%s %s', k, v)
      --end
    end
  end
  stmt:reset()
  db:close()
else
  print(echo.out.fataldb)
end