local component = require("component")
local event = require("event")
local term = require("term")
 
local m = component.modem
m.open(11)
 
local gpu = component.gpu
 
local comp = component.computer
 
local holo = component.holo
holo.setScale(1)
 
function round(num,idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end
 
event.listen("modem_message",function(sigName,locAdrs,remAdrs,port,distance,Value,Max)
  --generate message
  local Percent = round((Value/Max)*100,2)
  local Message = "Main Power Cell 1: " .. math.floor(Value/1000) .. "K / ".. math.floor(Max/1000) .."K : " .. Percent.."%"
  local Length = string.len(Message)
 
  --display stuff
  local cx,cy = term.getCursor()
  local x,y = gpu.getResolution()
  local bcol = gpu.getBackground()
  local fcol = gpu.getForeground()
 
  comp.beep(20*Percent)
 
  gpu.setBackground(0xFFFFFF)
  gpu.setForeground(0x5050FF)
  gpu.set(x-Length,1,Message)
  gpu.setBackground(bcol)
  gpu.setForeground(fcol)
  term.setCursorPos(cx,cy)
 
 
end)
