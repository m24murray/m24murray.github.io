---
title: "Hands-on with Claude Code"
date: 2025-03-07 10:23:18 +0000
categories: [ ai, claude ]
tags: [ ai, claude ]
classes: wide
header:
  image: /assets/images/claude-code-header.webp
  image_description: "Claude Code splash icon"
---

The past few months have seen coding assistants really rocket in popularity. GitHib Copilot, Aider and Cursor
were popular choices, but now, Anthropic have released their answer
in [Claude Code](https://www.anthropic.com/news/claude-3-7-sonnet). Coupled with the new Sonnet 3.7 model, this has a
lot of potential.

I've personally used GitHub Copilot with GPT-4o on projects, and I'm keen to see how this compares.

In this example, I'll be setting up a standard Java REST API that sits above a database. It's something that I've done
many times before, so I should have an idea whether the output is doing the right thing.

## Getting started

### Installing Claude Code

Claude Code is installed via npm -
instructions [here](https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview#install-and-authenticate?utm_source=email&utm_medium=referral).

Once installed and logged in, the tool is run using the `claude` command.

This returns a different response depending on the contents of the folder the command is executed in. For example, in an
empty folder, Claude will suggest creating a new app. In an existing folder, Claude will analyse the codebase to
determine directory structure, language, framework, build and run instructions. This information is then output to a
file `CLAUDE.md` which I assume is used as a system prompt for future requests. Users can also manually edit this file
and add information which may be useful to Claude going forward.

In this example, I have an empty directory, so Claude prompts me to create project.

![Initial claude prompt](/assets/images/hands-on-with-claude-1.png)

### Creating a spec file

So I _can_ type out my instructions within the Claude Code terminal window. However, I think the amount of information
I'm going to need to type and then edit might make doing so in a terminal window a bit tricky. Instead, I'm taking some
inspiration from the
following [link](https://harper.blog/2025/02/16/my-llm-codegen-workflow-atm/) on LLM workflows, I'm going to instead
construct a spec file that Claude can then read and use as its instructions set.

So outside of Claude (I'm using Chat GPT 4o here), I've asked the following prompt:

```
Hey I want to create a new Java Spring REST API that sits above a mongo db.

Ask me one question at a time so we can develop a detailed spec. 

Each question you ask me should build on my previous answers. 

Let’s do this iteratively and dig into every relevant detail. 

Let me know when you have all the information you need 
and then summarise your findings into a file called `spec.md`. 

Here’s the details:
* Java Spring REST API project
* Java 21
* Sits on top a mongo db, so will need dependencies pulled in
* We'll work off a basic data model, we'll have a single model called `users`. 
* A user will have 3 fields, a unique id, name and email.
* REST API should have controller endpoints for CRUD operations for `users`.
* Standard controller, service, repository structure
* API endpoints should have an Open API spec that i can send to other teams
* Will need unit tests
* Don't worry about security/auth right now, we'll implement that later
* Use gradle for dependency mgmt.
```

The clarifying questions include things like:

* Custom error handling
* Data validation
* API path and versioning
* Testing frameworks
* Deployment configuration

After about 15 questions, the results are output into a spec file, which can be
seen here - [spec.md](https://github.com/m24murray/hands-on-with-claude-spring-mongo/blob/main/spec.md).

It includes sections on tech stack, data model, api endpoints and testing.

I will then give this to Claude and ask it to start implementing.

### Implementation

This is my first prompt to Claude Code:

```
There is a file in this codebase called spec.md 
that include a detailed specification for a java spring app that I want to build. 
I want you to break it down into small, iterative pieces that you can implement. 

Some rules:
* Each iteration of implementation must fit in with what has come before it. 
* Implement with TDD to ensure correctness at all times.
* Everything should be cohesive and there should be no orphaned code.

At each stage of the journey I want you to update a file called implementation-instructions.md 
with a set of detailed prompts of what you are about to implement. 
This is useful for me to have a history of the changes.
```

Claude has picked up the file, and has established a test of implementation instructions, which can be seen
here - [implementation-instructions.md](https://github.com/m24murray/hands-on-with-claude-spring-mongo/blob/main/implementation-instructions.md).

![Implementation instructions](/assets/images/hands-on-with-claude-2.png)

I've reviewed the proposed steps, and have asked it to proceed.
It has then updated the implementation instructions with more information, so we get an idea of what its about to do
next.
This will be great for getting a bit of an audit log of the implementation.

![Updating implementation](/assets/images/hands-on-with-claude-3.png)

Claude now spends a bit of time `Creating...`, after which it has suggested some updates to `build.gradle`,
bringing in things like spring-boot-starter-web, mongodb and junit.

So far, so good.

Next, it's suggested updates to `application.yml` to define config, and then the `App.java` file which kicks of the main
app runner. I've reviewed the accepted

### Making changes

It's then reached it's first model definition for `User.java`. I've noticed it's got explicit getters and setters. I'd
probably prefer to use lombok for this so I'll not accept the proposed changes and instead ask Claude to do something
differently.

```
I want you to use lombok here. 

I dont really need explicit constructors, getters, setters, to string or hash codes                                                                                     │
```

Claude has then suggested changes to bring in the lombok dependencies. I've reviewed the updated version of `User.java`
and it looks pretty good.

![Making changes](/assets/images/hands-on-with-claude-5.png)

Next, it has suggested creating bespoke health controllers for the API itself, as well as the Mongo instance. I don't
want to do this as spring's actuator should do this for me implicitly.

Claude has acknowledged my request and updated its implementation plan accordingly. There are a few more files created
for unit tests and shortly after, the first iteration has concluded.

Before it starts Iteration 2, this is a good opportunity to give it a bit of a test.

### Testing iteration 1

Once I've set up dependencies such as Gradle and MongoDB, I started the app.

The app compiled and ran as normal. I even hit the health check endpoint and confirmed the app was up and running.

Next I ran the tests for the User model. One of the tests for the name/email validation had failed, but I was able
quickly fix myself.

### Running costs

Claude Code will give you an idea of your usage at any time.

So far, I've used $0.58, which isn't too bad, but I also haven't done a lot yet.

I might want to think of how to use this in a more cost-effective manner.

![Running costs after iteration 1](/assets/images/hands-on-with-claude-6.png)

## Considerations

* The ability to review proposed file changes only really work if you're dealing with < 100 lines of code.
  Anything more and the in-terminal diff becomes too hard to comprehend. In some of these instances, I've found myself
  just accepting the changes, then making a mental note to go and review them in my IDE after.
* It definitely seems to omit implmentation of functionality that would use a library, e.g. lombok and actuator. I might
  include this as a requirement in future spec files.
* Having the spec and implementation changes defined as files that are updated by Claude Code make it really easy to
  pick up where you left off. 