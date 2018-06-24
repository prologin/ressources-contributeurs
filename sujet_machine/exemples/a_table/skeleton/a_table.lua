
function readintline()
  local tab = {}
  for a in string.gmatch(io.read("*l"), "-?%d+") do
    table.insert(tab, tonumber(a))
  end
  return tab
end

function readcharline()
  local tab = {}
  local i = 0
  for a in string.gmatch(io.read("*l"), ".") do
    table.insert(tab, string.byte(a))
  end
  return tab
end
function a_table0 (n, m, salle)
  --[[ Inserez votre code ici --]]
end

n, m = unpack(readintline())
local cf = {}
for cg = 0, n - 1 do
    cf[cg + 1] = readcharline()
    end
    local salle = cf
    a_table0(n, m, salle)
    