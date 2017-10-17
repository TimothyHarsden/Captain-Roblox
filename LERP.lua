function inverseC3(C3)
	return Color3.new(1 - C3.r, 1 - C3.g, 1 - C3.b) 
end


-- linear interpolation
function linearblend(r1,g1,b1,r2,g2,b2,f)
local r = r1+f*(r2-r1)
local g = g1+f*(g2-g1)
local b = b1+f*(b2-b1)
return Color3.new(r,g,b)
end

function C3V3(C3)
	return Vector3.new(C3.r,C3.g,C3.b)
end

for f=1,1000 do
	local f = f/1000
workspace.Y.PointLight.Color = linearblend(1,0,0,0,0,1,f)
print("LERP "..(f*1000)..":",C3V3(workspace.Y.PointLight.Color).z*255)
workspace.Y.BillboardGui.TextLabel.TextColor3 = inverseC3(workspace.Y.PointLight.Color)
wait()
end
for f = 1,1000 do
	f=f/1000
workspace.Y.PointLight.Color = linearblend(0,0,1,1,0,0,f)
print("LERP "..(f*1000)..":",C3V3(workspace.Y.PointLight.Color).z*255)
workspace.X.BillboardGui.TextLabel.TextColor3 = inverseC3(workspace.X.PointLight.Color)
wait()
end