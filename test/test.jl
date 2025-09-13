@testitem "tyler issue" begin
using CairoMakie
using Makie
using Tyler
using Tyler.MapTiles
using Tyler.TileProviders

fig = Makie.Figure()
extent = Rect2f(-125, 24, 58, 25) # US Map
provider = TileProviders.OpenStreetMap()
map = Tyler.Map(extent; provider, figure=fig, crs=Tyler.wgs84)
wait(map)
map_axis = map.axis
Makie.hidedecorations!(map_axis)
println("end of test")
end
