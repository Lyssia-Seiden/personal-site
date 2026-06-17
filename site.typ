#let content_block(content) = html.elem("div", attrs: (class: "content-block"), content)

#let header() = {
  // todo find a way to slide the height around
    content_block(html.span(class: "header")[
      = lyssia's blog <\3
      #let pages = (
        (display: [home], link: <home>),
        (display: [blog], link: <blog>),
        (display: [portfolio], link: <portfolio>),
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
      header()
      content_block(content)
      footer()
    }
  )
}

#asset("site.css", read("site.css"))
#make_pg("index", [
hi!
i'm lyssia seiden, a cs major at ucsb's #link("https://ccs.ucsb.edu")[college of creative studies].
welcome to my website! :D
i like computer systems, architecture, programming languages, and anything computery in general.
i read sometimes (favorites include _The Left Hand of Darkness_, _Angels in America_, and _Detransition, Baby_).

past things i've done include:
- lead the software team on #link("https://www.frc8033.com/")[frc team 8033]
/*
  - brought the software team up from no returning knowledge to top tenish in california
  - built a #link("https://github.com/HighlanderRobotics/Highlanders-Training")[training curriculum]
  - worked on open source #link("https://github.com/SleipnirGroup/Choreo")[trajectory optimization]
  - made a pretty popular discord server (lyssia's prog server, a thousandish people!!) to talk about programming
  - met a lot of cool people and had a lot of fun!
*/
- interned at #link("https://www.atomicmachines.com/")[atomic machines]
/*
  - did some refactoring on a dsl for rpc messaging
  - debugged a bunch of stuff on real hardware
  - developed hardware testing procedures
*/
- made a #link("https://github.com/Lyssia-Seiden/RISC-V-Emulator")[riscv emulator in rust]
  and a #link("https://github.com/Lyssia-Seiden/mipskell")[mips emulator in haskell]
- wrote an implementation of #link("https://github.com/Lyssia-Seiden/zig-system-f-omega")[$"System" F_omega$ in zig]
- designed a #link("https://github.com/Lyssia-Seiden/ets-architecture-sandbox")[minimal dataflow isa called squall]
  (based on #link("https://dl.acm.org/doi/abs/10.1145/325096.325117")[monsoon])
  while working on #link("https://github.com/isacomp-project/isacomp")[isacomp, a research language for describing isas]
// played violin in pops?

check out my #link(<blog>)[blog] (if i ever post anything...)
or my #link(<portfolio>)[portfolio] o.o
])<home>
#make_pg("blog", lorem(200))<blog>
#make_pg("portfolio", lorem(200))<portfolio>

