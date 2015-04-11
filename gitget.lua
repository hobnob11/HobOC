local shell = require("shell")

local URL = "https://raw.githubusercontent.com/hobnob11/HobOC/master/"
shell.execute("wget -f "..URL.."gitget.lua")
shell.execute("wget -f "..URL.."listen.lua")
