#import "modules/notes.typ": *
#import "@preview/finite:0.5.0": *
#show: thm-rules


#show: noteworthy.with(
  paper-size: "a4",
  language: "EN",
  title: "Artificial Intelligence Agents",
  author: "Arjun Maneesh Agarwal",
  prof : "Bonny Banerjee",
  course-desc: [
    This course will talk about the algorithmic side of AI agents (the software side is left upto to the class).

    The course textbook is "Artificial Intelligence: A Modern Approach" by Russel and Norvig. An agent is defined as anything that can perceive its environment and act on the environment. In the view, most living organisms are agents but so are thermostats (and self driving vehicles etc).

    An important question we will deal with is why do organisms act? In AI, we have two leading theories:
    + To maximize reward (aka reinforcement learning) which is the dominant view
    + To minimize error (aka predictive coding or free energy)

    We will understand these two theories. The first half of the course will introduce AI agents and logic-based and probabilistic frameworks. The latter half of the course will cover AI agents that operate on reinforcement learning and free energy.

    The course grade is divided as Homeworks (3-4) for 25\%, Final for 25\% and a project for 50\%.
  ],
  contact-details: "thearjunagarwal.github.io",
  toc-title: "Table of Contents"
)
= Introduction
Intelligence is quite hard to define in a precise manner. We all agree that humans and dogs are intelligent but trues are not#footnote[I don't think trees are not intelligent.]. The term Artificial Intelligence was coined at a Dartmouth conference by John McCarty. Problem is that he has not given us a precise definition.

The first discussion of AI came from Alan Turing's paper "Can Machine's Think?". This paper lead to a huge debate involving all sorts of disciplanes. For 30 years this kept going because it was extremely difficult to define intelligence.

After a lot of trouble, we came up with this standard definition. This definition can't be found in news reports as reporters have not studied CS and are reporting out of 'common sense'. Don't trust reporters, trust textbooks. This definition was not meant to figure out how humans work or how organisms work or how to make an ethical system or how to make a legal system. This definition was motivated by the need to build useful and interesting systems without alienating the other contributing disciplines like Neuroscience, Psycology, Philosophy, Math etc.
#definition(title: "AI")[
  AI is defined by two dimensions
  - Thought procees and reasoning (internal)
  - Behaviour (external)
  
  It's success is measured along two dimensions
  - Success in terms of fidelity to human performence
  - Success in terms of an ideal performence metric, called rationality

#example[
  Note, both success dimensions are different. For example: StockFish is optimized for success in rationality while the Chess.Com bots are made to perform similar to a given personality (and we should be judging the similarity of play, not the accuracy)
]
This divides AI into 4 quadrants
- Thinking Humanly
- Thinking Rationally
- Acting Humanly
- Thinking Rationally
]
== Acting Humanly
#definition(title: "Turing Test")[
  Alan Turing proposed this in 1950. This was designed to provide a satisfactory operational definition of intelligence. A computer passes the test if a human interrogator, after posing some questions, cannot tell whether the written responses come from a person or from a computer without any physical interaction.
]
A criticism of this test is that aeronautical engineering texts do not define the goal of their field as making pidgins that fly so exactly like pigeons that they can fool even other pigeons.

#note[These notes were abandoned like the course after the Prof started glazing Elon Musk.]