function Figure(fig)
  if not fig.content[1] or not fig.content[1].content[1] or
    not fig.content[1].content[1].attr.classes:includes "dark-div" then
    return nil
  end
  local darkfig = fig:walk {}
  darkfig.content[1].content[1].src = darkfig.content[1].content[1].src:gsub("%.png", "-dark.png")
  return {
    pandoc.Div(fig, pandoc.Attr("", {"light-content"})),
    pandoc.Div(darkfig, pandoc.Attr("", {"dark-content"}))
  }
end

function Image(img)
  if not img.src or not img.attr.classes:includes "dark-image" then
    return nil
  end
  local darkimg = img:walk {}
  img.attr.classes = {"light-content"}
  darkimg.attr.classes = {"dark-content"}
  darkimg.src = darkimg.src:gsub("%.png", "-dark.png")
  return {img, darkimg}
end
