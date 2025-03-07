---
title: "Microsoft publishes paper discussing impact of AI on critical thinking"
date: 2025-02-28 21:09:17 +0000
categories: ai
tags: [ github-pages, jekyll ]
header:
  image: /assets/images/unsplash-image-1.jpg
---

Microsoft have recently published a research paper titled,
["The Impact of Generative AI on Critical Thinking: Self-Reported Reductions in Cognitive Effort and Confidence Effects From a Survey of Knowledge Workers".](https://www.microsoft.com/en-us/research/uploads/prod/2025/01/lee_2025_ai_critical_thinking_survey.pdf)

As a daily user of GenAI tools I think these types of conversations are really complex and interesting. Critical
thinking tasks like idea generation, evaluation and decision-making are a fundamental part of what we do as software
engineers. If there's something that is causing this to degrade under the **illusion of productivity**, we need to be
honest
and consider
how we work with these tools going forward.

I think the three big takeaways from the paper are:

1. The **higher confidence in GenAI** that an individual has, can often result in applying **less critical thinking**.
2. The less critical thinking that individual engages with over time, can lead to **over-reliance on tools like GenAI**,
   and subsequently **weakens
   their independent problem-solving skills**.
3. GenAI shifts the type of critical thinking away from **direct engagement**, and instead, towards **oversight of a
   response**.

And while this is cause for
concern for those who find AI being utilised more in their day-to-day jobs, I do wonder what we can do to mitigate these
factors. What processes can we put in place to manage this effect. Alternatively, **what if there are ways of using
GenAI tools, without it having a detrimental impact on our cognitive ability?**

## The survey

As part of this study featured in the paper, **319 knowledge workers were surveyed** on their use of Gen AI and what
impact they perceive
on it having on their work. From these workers, **936 examples** of using GenAI in work were identified throughout the
duration of the survey.

## Why this matters

I think the uptake of AI tools across many industries (including software engineering) has been at such a rapid pace,
there hasn't been sufficient consideration to its impact. We expect that the quality of training data used by AI will
degrade over time
as
the
proportion of human-written code decreases compared to that which has been AI generated. In addition, we can expect more
homogenous outputs due to a lack of creative and original data that is produced by humans.

But what if **our ability to
create that new data is hindered because we lack the cognitive ability to do so**.

The study refers to critical thinking in terms of things like information recall, understanding and evaluation. It
states that without
regular engagement of these skills, they miss out on the
opportunities to practice and develop, leaving them weakened over time. This is similar to the adage, _"use it, or you
lose it"_. It's so important that we can maintain critical thinking as this ultimately impacts the quality of our work.

## What can we do?

### Reinforce software engineering practices

It's important we don't substitute good software engineering practices such as design, pair programming and code reviews
out in favour of GenAI tools. Yes, they can accelerate these processes, but it's still important to have **the right
people there to provide direction and evaluation**. Organisations will often have nuanced requirements that will require
deep understanding and connection that can only come from a human. Pair programming has been a popular development style
for years for good reason. The collaboration often results in higher-quality code, better communication and
understanding
across the team as well as a sense of accountability. You can still use GenAI tools for development, but using them
_alongside_
pair programming may help address some of these concerns around critical thinking. Similarly, with code reviews, we're
at least ensuring that the code being written by a GenAI tool is of a high-quality. The same rules applied to
traditional human code reviews, should be applied here. Is the code following standard design patterns? Is it
sufficiently abstracted? Does it introduce any bugs or tech debt?

Applying the same practices that we do today, can help get us **stay engaged with critical thinking**.

### Using GenAI tools differently

Across the various aspects of critical thinking. The study has even provided some suggestions on
how to mitigate against some of the negative consequences. For example, it has been suggested that for writing tasks
GenAI can result in an over-reliance on idea, content and editing assistance. As a mitigation, rather than letting AI
produce the content, prompt it with your own and ask for feedback instead. Similarly, the impact on an individuals
memory and the inability to remember key information, the study suggests letting AI provide high-quality summaries and
alternative
perspectives.

## What's next

The data clearly identifies a shift in cognitive effort of an individual. There is a move away from task execution,
and towards task oversight. In software development terms, I can imagine this is spending less time engaging on trying
to
solve a problem with code, instead letting AI do the heavy lifting and then spending the time verifying that it is
correct.

When we talk about how AI will impact jobs, I think this it's important to consider the role this "task oversight" may
have going forward.

## Conclusion

There's a lot more to unpack in the study, including an in-depth analysis on the reasons _why_ people use GenAI, but
that
can wait for a later post.

For now, I think it's important that we reflect on our usage of GenAI tools. There's no point in being a luddite and
rejecting this major technological change. That being said, any time I'm using GenAI going forward, I need to ask, _"why
am I doing this?"_.

I think I'll continue to use these tools as normal in situations like:

* Generating lots of low value data which would be time-consuming (unit tests, testing data)
* Consuming large amounts of data, beyond the cognitive load of a human, and querying to get key points.
* Planning and organisation.
* Requesting feedback on code.

Where I'll maybe reconsider would be:

* Writing documents, blog posts. I've often found that getting GenAI to reword text can often leave it a bit bland.
  You're starting to see more of this content published and there's just something about it which feels a bit off.
* Writing code for complex business logic. This is often the critical part of the job, and helps keep developers sharp.

## One final note... how history repeats itself

Critics of the AI revolution will often reference recent technological advances to warn of cognitive decline and
impending doom. Calculators ("_You won't be able to do sums in your head_"), mobile phones ("_You won't be able to
remember
phone numbers"_) and the internet (_"You won't be able to remember information"_).
However, what I didn't realise is that this conversation is much older than we think.

The study references that over 2,000 years ago, Socrates objected to the written form of knowledge suggesting that it
would weaken memory and that
written knowledge was superior as it allowed for questioning and critical thinking.

It will be interesting to see how AI will be looked back upon in the future.
