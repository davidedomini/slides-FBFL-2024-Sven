#import "@preview/polylux:0.3.1": *
#import "@preview/fontawesome:0.1.0": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: [Optional Footnote]
)

#set text(font: "Inter", weight: "light", size: 20pt)
#show math.equation: set text(font: "Fira Math")
#set strong(delta: 150)
#set par(justify: true)

#set raw(tab-size: 4)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 1em,
  radius: 0.7em,
  width: 100%,
)

#title-slide(
  title: "Field Based Federated Learning",
  subtitle: "",
  author: "Davide Domini",
  date: datetime.today().display("[day] [month repr:long] [year]"),
)

#new-section-slide("Background on Federated Learning")

#slide(title: "What Federated Learning is?")[

]

#slide(title: "Why do we need Federated Learning?")[

]

#slide(title: "Classic approaches")[

]


#slide(title: "Client-Server Federated Learning")[

]


#slide(title: "How can we aggregate weights?")[

]


#slide(title: "Problems")[

]

#slide(title: "Towards peer-to-peer Federated Learning")[

]

#slide(title: "More on non-iid data")[
 
]

#slide(title: "How can we address data heterogeneity?")[

]


#new-section-slide("Field based coordination for Federated Learning")

#slide(title: "Why field based coordination?")[

]

#slide(title: "(Semi)Formal problem definition")[

]

#slide(title: "Advantages")[

]

#slide(title: "Full peer-to-peer learning")[

]


#slide(title: "Learning in zones")[

]

#new-section-slide("Experiments")

#slide(title: "MNIST and FASHION MNIST")[

]

#slide(title: "PM10 Air Quality")[

]


#slide[
  #bibliography("bibliography.bib")
]
