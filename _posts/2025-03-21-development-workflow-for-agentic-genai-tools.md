---
title: "Development Workflow for Agentic GenAI Tools"
date: 2025-03-21 09:40:00 +0000
categories: []
tags: []
og_image: "/assets/images/development-workflow-2.png"

---

Over the past few weeks, I've been experimenting with some of the agentic features of coding assistants. This includes GitHub Copilot's new [Agent Mode](https://code.visualstudio.com/blogs/2025/02/24/introducing-copilot-agent-mode) and Claude Code, which I featured in my last post: [Hands-on with Claude Code](2025-03-07-hands-on-with-claude-code.md).

With the release of more agentic tools, developers can now make multi-file changes across a project to implement features, rather than isolated code snippets. For example, a prompt like _“Implement search functionality within this web app”_ can result in the GenAI tool making changes to the front-end HTML, service classes, API layer, and corresponding tests.

Beyond implementing individual features, these tools have the potential to operate at a higher level by constructing a series of features that form a complete functional solution. For instance, instead of requesting a single feature, a developer could prompt, _“Build a Java API for updating records in a database”,_ and the tool would generate the necessary components across the system.

## Challenges

While agentic GenAI tools offer exciting possibilities, they also introduce several challenges that developers need to address:

- **Lack of direction and control**: Ensuring generated solutions align with project goals can be difficult. Autonomous tools may deviate from the intended solution, complicating rollbacks if issues arise.
- **Opaque decision-making**: The reasoning behind the tool’s choices is often unclear, making it hard to understand why certain implementations were selected.
- **Cost inefficiencies**: Unclear instructions or excessive context can lead to increased token usage and higher operational costs, along with potential long-term maintenance challenges.
- **Inconsistency**: The conversational nature of these tools makes it challenging to achieve a repeatable and deterministic development process.

## Proposed Improvements

To address the challenges introduced by agentic GenAI tools, here are some changes I propose to enhance the development workflow:

- **Reduce reliance on chat-based interactions**: Capturing all necessary information in a single prompt can be challenging, especially with limited input space. Additionally, losing context when a chat session ends can be frustrating. Transitioning to more structured input methods could mitigate these issues.
- **Leverage technical documentation**: Instead of crafting detailed prompts for every task, we can direct GenAI tools to existing design documentation stored within the project. This approach ensures consistency and reduces the need for repetitive explanations.
- **Improve progress visibility**: The conversational nature of these tools often obscures progress tracking. Establishing mechanisms to clearly indicate how far a task is from completion would provide better oversight and planning.
- **Standardize processes for common tasks**: Many development tasks, such as creating a Java API, follow predictable patterns. By defining standard workflows or templates for these tasks, we can minimise repetitive prompting and streamline the development process.

## A development workflow for Agentic AI

We can help implement these proposed improvements with the following workflow for using Agentic AI on real-world projects:  

{% include lightbox-image.html src="/assets/images/development-workflow-5.png" alt="Development workflow for Agentic AI" %}

There are three key steps:

1. **Develop a project spec**: This should be a spec file that defines what should be built (e.g., tech stack, data models, deployment).
2. **Establish an implementation plan**: This is a detailed set of instructions that can be used to implement the solution. Ideally, it should be broken into logical, discrete iterations of work.
3. **Iterate and implement using GenAI**: The implementation plan in step 2 should be referenced as part of the development process.

### Step 1: Developing a project spec

This step involves taking an idea and refining it using a standard GenAI chat interface. Use natural language to provide as many details as required e.g. tech stack, data models, NFRs. Even consider using some of the multi-modal abilities (i.e images, voice) of models like GPT-4o to help with this step.

It’s not critical to capture every single detail at this stage. Within the prompt, ask the GenAI tool to respond with a series of questions and then output the results to a file called `spec.md`. Once the spec file has been generated, review it amongst the team.

{% include lightbox-image.html src="/assets/images/development-workflow-2.png" alt="Developing a project spec" %}

### Step 2: Establishing an implementation plan

Using our GenAI tool of choice, reference the spec file and ask it to output an implementation file that details how the functionality should be implemented in a cohesive manner across number of iterations.

It's worth using a reasoning model such as Claude 3.7 Sonnet in the next two steps, which is reported as ["best-in-class for real-world coding tasks"](https://www.anthropic.com/news/claude-3-7-sonnet).

{% include lightbox-image.html src="/assets/images/development-workflow-3.png" alt="Establishing an implementation plan" %}

### Step 3: Iterate and implement

This final step is iterative and uses the details from implementation plan generated in the above step to progress through the development. Each iteration should be discrete, and provide an opportunity to review, manually test and commit code. Once all iterations are completed, the application should be fully functional.

Most of the design and instructions should be established at this point, all that should be required is a simple prompt like, _"Start iteration 1"_.

An important part of this step is using the spec and implementation files as a solid foundation for the development. But also using a changelog to keep track of progress and refresh context. Let the GenAI tool update these files accordingly with progress, or if anything changes along the way. Also, a set of custom instructions can be used to define some common rules or patterns. For example you can ask it to run automated tests, or commit to git every time an iteration is complete.

{% include lightbox-image.html src="/assets/images/development-workflow-4.png" alt="Iterate and implement" %}

## Results

This workflow provides several key benefits:

- **Increased direction and control**: The spec file and implementation instructions help keep agentic processes aligned with project goals.
- **Transparent decision-making**: All decisions and progress are clearly documented in version control.
- **Cost efficiency**: Breaking the spec into iterative processes helps minimize scope and reduce inefficiencies.
- **Consistency**: The structured approach reduces the non-deterministic nature of agentic tools.
- **Progress tracking**: The implementation plan and `changelog.md` file provide clear visibility into development progress.

For examples and templates, please see [https://github.com/m24murray/development-workflows-for-agentic-ai](https://github.com/m24murray/development-workflows-for-agentic-ai).
