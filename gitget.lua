local shell = require("shell")

local URL = "https://github.com/hobnob11/HobOC/something.lua"
shell.run("wget -f "..URL.."gitget.lua")
shell.run("wget -f "..URL.."listen.lua")
