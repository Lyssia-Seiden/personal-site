#import "lib.typ": content_block

heres some stuff ive done!
this is just stuff i have code for kicking about on the internet,
so it doesnt include other fun things like my work at #link("https://www.atomicmachines.com/")[atomic machines] :(

#show outline.entry: it => link(
  it.element.location(),
  it.body()
)
// hack to make the heading not actually a heading
#show outline : set heading(level: 6)
#outline(title: [the main categories of things ive worked on are:], depth: 1)

= research with #link("https://www.arch.cs.ucsb.edu/")[ucsb's archlab]

i ended up getting involved with Jon Balkind's work after having a class with him.
working at the intersection of architecture and programming languages is pretty neat,
and i hope that this is just the start of my work here :D

== squall

squall is a dataflow instruction set i designed as a simple counterpart to the (not fully documented) 
#link("https://dl.acm.org/doi/abs/10.1145/325096.325117")[monsoon].
i made a #link("https://github.com/Lyssia-Seiden/ets-architecture-sandbox")[simulator and reference implementation]
for it in haskell (functional programming is pretty fun, as it turns out!).
i then translated this to #link("https://github.com/isacomp-project/isacomp")[isacomp],
a research language being worked on in the archlab,
to see how the language could handle it and simulate some processors.
i learned a lot about reading papers, computer architecture, compilers, and vibecoding by working on this project.
while i was able to successfully write a spec and generate a processor for squall,
isacomp still has a lot of work to go, so stay tuned!

= personal and class projects

some of the more complete things ive worked on include:

== #link("https://github.com/Lyssia-Seiden/RISC-V-Emulator")[riscv emulator]

i made a riscv emulator in rust because i wanted to learn about computer architecture.
ended up detouring in learning to write a tui,
but overall a good time.
written in rust, because of course.

== #link("https://github.com/Lyssia-Seiden/mipskell")[mips emulator]

i had to write one of these for a class,
and i decided to write this one in haskell, since id been wanting to learn functional programming.

== #link("https://github.com/Lyssia-Seiden/zig-system-f-omega")[System F#sub($omega$) interpreter and type checker]

for my type systems final i wrote a parser, type checker, and interpreter for System F#sub($omega$),
or higher kinded polymorphic lambda calculus.
i ended up writing it in zig as a way to try the language, although zig was definitely not the right choice for this problem.
learned a lot about how compiler frontends work and why you gotta use de brujin indices for lambda calculi.

== #link("https://github.com/ucsb-cmptgcs1l-f25/Tetanus")[very partial rust codegen backend]

for one of my open ended project classes i tried to write a codegen backend for rust.
i ended up mostly trying to decipher how the compiler mid-end and lowering worked,
which was pretty valuable.
that being said, i didnt get too far with my own backend.
turns out this stuff is hard!

= frc

i spent most of high school grinding competition robotics.
it was pretty fun!
learned a lot about running a team and working with real deadlines and constraints.
a few highlights:

== #link("https://github.com/HighlanderRobotics/Highlanders-Training")[training materials]

turns out learning how to code is hard!
i was lucky to have the chance to help some people get off the ground.
i wrote a principled introduction to the competition, our coding practices, and our tooling
which made our rookie experience a lot smoother!
other students have since updated the materials and surrounding curriculum,
but i'm glad i had the chance to start it.

== #link("https://github.com/SleipnirGroup/Choreo")[choreo, a trajopt based path planner]

numerical optimization is pretty cool!
i contributed to an open source project using it to find time-optimal trajectories for robots.
i mostly worked on heuristics for solver performance and modeling obstacles.

== #link("https://github.com/HighlanderRobotics/Reefscape")[the actual robot code]

the stuff that's gonna stick with me forever is the organizational skills around running the team,
but the actual code is pretty cool too!
i did a lot of work integrating logging and simulation tooling, some work on vision and state estimation,
and a bunch of work on architecting the code so it would be easy to reason about and write in a group with varying experience levels.

