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

There are two key takeaways:

1. The higher confidence one places in GenAI is associated with less critical thinking.
2. GenAI shifts the type of critical thinking away from direct engagement, and towards oversight of a response.

The study goes as far to say that, _"[GenAI] can inhibit critical engagement with work and can potentially lead to
long-term over-reliance on the tool and diminished skill for independent problem-solving"_. And while this is cause for
concern for those who find AI being utilised more in their day-to-day jobs, I do wonder if there is slightly more nuance
to it. **What if there are ways of GenAI tools, without it having a detrimental impact on our cognitive ability?**

## The survey

As part of this study, **319 knowledge workers were surveyed** as to how they use Gen AI and what impact they perceive
on it having on their work. From these workers, **936 examples** of using GenAI in work were identified throughout the
duration of the survey.

## Why this matters

I think the uptake of AI tools across many industries (including software engineering) has been at such a rapid pace,
there has not been enough consideration to its impact. We expect that training data used by AI will worsen over time as
the
proportion of non-GenAI code decreases compared to that which has been AI generated. In addition, we can expect more
homogenous outputs due to a lack of creative and original data that is produced by humans.

But what if our ability to
create that new data is hindered because we lack the cognitive ability to do so.

The study refers to critical thinking in terms of things like information recall, understanding and evaluation. Without
regular engagement of an individual's these skills, they miss out on the
opportunities to practice and develop, leaving them weakened over time. This is similar to the adage, _"use it, or you
lose it"_.It's so important that we can maintain critical thinking as this ultimately impacts the quality of our work.

## History repeats itself

Critics of the AI revolution will often reference recent technological advances to warn of cognitive decline and
impending doom. Calculators ("_You won't be able to do sums in your head_"), mobile phones ("_You won't be able to
remember
phone numbers"_) and the internet (_"You won't be able to remember information"_).
However, what I didn't realise is that this conversation is much older than we think.

The study references that over 2,000 years ago, Socrates objected to the written form of knowledge suggesting that it
would weaken memory and that
written knowledge was superior as it allowed for questioning and critical thinking.

Similarly, Johannes Trithemius, a 15th Century German scholar rallied against printed books, stating that it lacked
the _"spiritual and intellectual discipline of handwriting"_.

## Cognitive offloading

The data clearly identifies a shift in cognitive effort of an individual. That they are moving away from task execution,
and toward task oversight. In software development terms, I can imagine this is spending less time engaging on trying to
solve a problem with code, instead letting AI do the heavy lifting and then spending the time verifying that it is
correct.

When we talk about how AI will impact jobs, I think this it's important to consider the role this "task oversight" may
have going forward.

## Mitigation options

Across the various aspects of critical thinking. The study has even provided some suggestions on
how to mitigate against some of the negative consequences. For example, it has been suggested that for writing tasks
GenAI can result in an over-reliance on idea, content and editing assistance. As a mitigation

| Skill   | Concern                                | Mitigation options                           |
|---------|----------------------------------------|----------------------------------------------|
| Writing |                                        | Use GenAI for content-focused feedback.      |
| Memory  | Inability to remember key information. | Use GenAI to provide high-quality summaries. |
|         |                                        |                                              |

## Conclusion

What the question I'll ask myself when using GenAI going forward is, "why am I doing this?".

I think I'll continue to use these tools as normal in situations like:

* Generating lots of low value data which would be time-consuming (unit tests, testing data)
* Consuming large amounts of data, beyond the cognitive load of a human, and querying to get key points.
* Planning and organisation.
* Requesting feedback.

Where I'll maybe reconsider would be:

* Writing documents, blog posts. I've often found that getting GenAI to reword text can often leave it a bit bland.
  You're starting to see more of this content published and there's just something about it which feels a bit off.
* Writing code for complex business logic. This is often the critical part of the job, and helps keep developers sharp.

## Some other considerations...

* This seems to be a familiar pattern of a technology company researching the impact of that technology and finding that
  it has negative effects.
* Obviously it's in Microsoft's best interest to push the narrative that we should be considering the options of AI to
  _improve_ the ability of people to work in certain ways.
* Its worth noting that this survey relies on of self-evaluation and opinions of experience rather than an objective
  perspective. As a result, I don't think this makes the conclusions from this survey airtight, but it still gives us
  food for thought.

## scratch

That GenAI can have a detrimental impact on peoples cognition and critical thinking isn't new information, this has long
been suspected of being the case, however what's interesting is that the effects seem to vary significantly depending on
what confidence a user has in the outputs from GenAI. Higher confidence and trust in GenAI relates to less critical
thinking.
