local function isdir(file)
  file = file.."/"
  local ok, err, code = os.rename(file, file)
  if not ok and code == 13 then
    return true
  end
  return ok, err
end

HomeDir   = os.getenv("HOME")
ConfigDir = ""
MasonDir  = ""

if isdir(HomeDir.."/.config/nvim") then
  ConfigDir = HomeDir .. "/.config/nvim"
end

if isdir(HomeDir .. "/.local/share/nvim/mason") then
  MasonDir = HomeDir .. "/.local/share/nvim/mason"
end
