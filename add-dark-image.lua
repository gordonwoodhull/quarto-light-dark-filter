function Image(img)
  local darkimg = img:walk {}
  img.attr.classes = {"light-content"}
  darkimg.attr.classes = {"dark-content"}
  darkimg.src = darkimg.src:gsub("%.png", "-dark.png")
  return pandoc.Span({img, darkimg})
end
