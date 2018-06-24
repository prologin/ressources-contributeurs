
function readintline()
  local tab = {}
  for a in string.gmatch(io.read("*l"), "-?%d+") do
    table.insert(tab, tonumber(a))
  end
  return tab
end
function recette0 (n, ordre, desordre)
  --[[ Inserez votre code ici --]]
end

local n = tonumber(io.read('*l'))
local ordre = readintline()
local desordre = readintline()
recette0(n, ordre, desordre)
