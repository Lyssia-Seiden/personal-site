// colors
#let focus = rgb("#FAD1E1")
#let bg = rgb("F0F2A6")
#let line_color = rgb("#2E0515")

// #set text(rgb("41455E"))

#let content_width = 16cm



#let content_block(content) = block(
    width: content_width,
    fill: focus,
    stroke: (
      rest:   1pt + line_color,
      bottom: 3pt + line_color,
      right:  3pt + line_color,
    ),
    inset: 8pt,
    content
)

#let header() = {
  // todo find a way to slide the height around
  content_block(
    [
      #set align(horizon)
      #set align(center)
      = lyssia's blog <\3
      #let pages = (
        (display: [home]),
        (display: [blog])
      )
      #columns({pages.len()}, {
        for page in pages {
          page.at("display")
          colbreak()
        }
      })
    ]
  )
}

#let footer() = content_block([
  #set align(right)
  made with <\3
])

#let bg_pattern = tiling(
  size: (30pt, 30pt), 
  spacing: (0pt, 0pt),
  {
    rect(fill: bg, width: 100%, height: 100%, inset: 0%, outset: 0%, {
      let bg_line = line_color
      // place(line(stroke: 1pt + bg_line, start: (0%, 100%), end: (100%, 0%)))
      // place(rect(stroke: 1pt + bg_line, width: 100%, height: 100%))
      let radius = 5pt
      place(top+left, dx: radius, dy: radius, 
        rect(
          stroke: (
            bottom: 1.5pt + bg_line,
            right: 1.5pt + bg_line,
            rest: 1pt + bg_line,
          ),
          width: radius,
          height: radius,
        )
      )
      place(top+left, dx: 15pt + radius, dy: 15pt + radius, rect(
          stroke: (
            bottom: 1.5pt + bg_line,
            right: 1.5pt + bg_line,
            rest: 1pt + bg_line,
          ),
          width: radius,
          height: radius,
        ))
      // place(line(stroke: 1pt + bg_line, start: (0%, 0%), end: (100%, 100%)))
    })
  }
)

#let make_pg(title, content) = {
  document(
    title + ".html",
    title: title,
    {
      set page(
        fill: bg_pattern,
        height: auto,
        // width defautls to a4, which is fine
        // margin: 10pt,
      )
      header()
      content_block(content)
      footer()
    }
  )
}

#make_pg("index", lorem(420))

