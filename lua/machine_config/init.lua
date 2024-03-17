local function isdir(file)
  file = file.."/"
  local ok, err, code = os.rename(file, file)
  if not ok and code == 13 then
    return true
  end
  return ok, err
end


-- Set Home Directory
HomeDir = ""
local possible_homes = {
  os.getenv("HOME"),
  "C:\\Users\\wojci",
  "C:\\Users\\wpietkax"
}

for _, d in pairs(possible_homes) do
  if isdir(d) then
    HomeDir = d
  end
end

-- Set Neovim Config Directory
ConfigDir = ""
local possible_config_dirs = {
  HomeDir .. "/.config/nvim",
  HomeDir .. "\\appdata\\local\\nvim"
}

for _, d in pairs(possible_config_dirs) do
  if isdir(d) then
    ConfigDir = d
  end
end

-- Set Mason Directory
MasonDir  = ""
local possible_mason_dirs = {
  HomeDir .. "/.local/share/nvim/mason",
  HomeDir .. "\\appdata\\local\\nvim-data\\mason"
}

for _, d in pairs(possible_mason_dirs) do
  if isdir(d) then
    MasonDir = d
  end
end
