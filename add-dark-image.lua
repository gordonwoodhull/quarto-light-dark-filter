function Figure(fig)
  local darkfig = fig:walk {}
  fig.attr.classes = {"light-content"}
  darkfig.attr.classes = {"dark-content"}
  darkfig.content[1].content[1].src = darkfig.content[1].content[1].src:gsub("%.png", "-dark.png")
  return {fig, darkfig}
end
