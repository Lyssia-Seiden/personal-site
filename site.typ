#let content_block(content) = html.elem("div", attrs: (class: "content-block"), content)

#let header() = {
  // todo find a way to slide the height around
    content_block(html.span(class: "header")[
      = lyssia's blog <\3
      #let pages = (
        (display: [home], link: <home>),
        (display: [blog], link: <home>),
        (display: [portfolio], link: <home>),
      )
      #html.div(class: "nav-links")[
        #for (i, page) in pages.enumerate() {
          html.span(link(page.at("link"),{page.at("display")}))
        }
      ]
    ])
}

#let footer() = content_block(
  html.div(class: "footer")[made with <\3]
)

#let make_pg(title, content) = {
  document(
    title + ".html",
    title: title,
    {
      html.head(html.link(rel: "stylesheet", href: "site.css"))
      // set page(
      //   height: auto,
      //   // width defautls to a4, which is fine
      //   // margin: 10pt,
      // )
      header()
      content_block(content)
      footer()
    }
  )
}

#asset("site.css", read("site.css"))
#make_pg("index", lorem(420))<home>

