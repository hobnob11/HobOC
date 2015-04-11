local shell = require("shell")

local URL = "https://raw.githubusercontent.com/hobnob11/HobOC/master/"
shell.run("wget -f "..URL.."gitget.lua")
shell.run("wget -f "..URL.."listen.lua")
