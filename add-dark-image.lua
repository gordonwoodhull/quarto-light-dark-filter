function Figure(fig)
  local darkfig = fig:walk {}
  darkfig.content[1].content[1].src = darkfig.content[1].content[1].src:gsub("%.png", "-dark.png")
  return {
    pandoc.Div(fig, pandoc.Attr("", {"light-content"})),
    pandoc.Div(darkfig, pandoc.Attr("", {"dark-content"}))
  }
end
