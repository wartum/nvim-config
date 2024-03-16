local function exists(file)
  local ok, err, code = os.rename(file, file)
  if not ok then
    if code == 13 then
      return true
    end
  end
  return ok, err
end

local function isdir(path)
  return exists(path.."/")
end

local possible_homes = {
  "/home/wojtek",
  "/home/wpietkax",
  "c:\\Users\\wojci"
}

HomeDir   = ""
ConfigDir = ""
MasonDir  = ""

for _, dir in ipairs(possible_homes) do
  if (isdir(dir)) then
    HomeDir = dir
  end
end

if isdir(HomeDir.."/.config/nvim") then
  ConfigDir = HomeDir .. "/.config/nvim"
end

if isdir(HomeDir .. "/.local/share/nvim/mason") then
  MasonDir = HomeDir .. "/.local/share/nvim/mason"
end
