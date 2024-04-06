#import "@preview/polylux:0.3.1": *
#import "@preview/fontawesome:0.1.0": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
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

#slide(title: "Computation everywhere")[
  #figure(
    image("imgs/uc-sven.svg", width: 50%)
  )
]


#slide(title: "Example: Google Virtual Keyboard")[
  #table(inset: 1em, stroke: none, columns: (1fr, 1fr), align: (left, left),
    [
      - *Task*: Next word prediction for GBoards
      - *Problem*: Users' privacy
      - *Solution*: Share weights not data
    ],
    [
      #figure(
        image("imgs/keyboard.svg", width: 70%)
      )
    ]  
  )
]


#slide(title: "What Federated Learning is?")[
 #figure(
    image("imgs/federated-learning-schema.svg", width: 50%)
  )
]

#slide(title: "How can we aggregate local models?")[

  #figure(
    image("imgs/fedavg.svg", width: 50%)
  )

]

#slide(title: "Pros & Cons")[
  - *Pros*
    - Reduces privacy concerns
    - Transfers less data to the server
  - *Cons*
    - Need for a central trusted entity
    - Single point of failure
    - Data heterogeneity (non-iid data)
]

#slide(title: "Towards peer-to-peer Federated Learning")[
  #figure(
    image("imgs/federated-learning-schema-p2p.svg", width: 50%)
  )
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
  ```scala
  rep(init() )(model => { // Local model initialization
    // 1. Local training
    model.evolve(localEpochs)
    // 2. Model sharing
    val info = foldhood(Set(model))(_ ++ _)(nbr(model))
    // 3. Model aggregation
    aggregation(info)
  })
  ```  
]

#slide(title: "Learning in zones")[
  ```scala
  val aggregators = S(area, nbrRange) // Dynamic aggregator selection
  rep(init())(model => { // Local model initialization
    model.evolve() // 1. Local training step
    val pot = gradient(aggregators) // Potential field for model sharing
    // 2. model sharing
    val info = C[Double, Set[Model]](pot, _ ++ _, Set(model), Set.empty)
    val aggregateModel = aggregation(info) // 3. Aggregation
    sharedModel = broadcast(aggregators, aggregateModel) // 4. Gossiping
    mux(impulsesEvery(epochs)){ combineLocal(sharedModel, model) } { model }
  })
  ```
]

#new-section-slide("Experiments")

#slide(title: "MNIST and FASHION MNIST")[

]

#slide(title: "PM10 Air Quality")[

]


#slide[
  #bibliography("bibliography.bib")
]
