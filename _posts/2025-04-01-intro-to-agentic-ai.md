---
title: "Agentic AI: A developer's guide to the latest coding assistants and models"
date: 2025-04-01 15:40:57 +0100
categories:
tags:
header:
  image: 
---

In the first few months of 2025, coding assistants such as GitHub Copilot have seen major improvements which is set to significantly change the way developers interact with them. These new agentic features offer greater integration with an application codebase but also have the ability to make decisions and execute certain commands.

## Table of Contents

- [Overview](#overview)
- [GenAI vs coding assistants vs models](#genai-vs-coding-assistants-vs-models)
- [What is 'Agentic AI'?](#what-is-agentic-ai)
- [Why are agentic AI coding assistants so important?](#why-are-agentic-ai-coding-assistants-so-important)
- [What agentic coding assistants are available?](#what-agentic-coding-assistants-are-available)
- [What are the key differences between agentic coding assistants?](#what-are-the-key-differences-between-agentic-coding-assistants)
- [What models are available?](#what-models-are-available)
- [What are the key differences between models?](#what-are-the-key-differences-between-models)
- [What are the local options for running a model?](#what-are-the-local-options-for-running-a-model)

## GenAI vs coding assistants vs models

This document will talk about a couple of key terms:

- **GenAI** -- high level term for generative AI. These tools can take many formats, including chat-based such as
  ChatGPT or coding assistants like Copilot.

- **Coding assistants** -- a specific type or subset of GenAI tools. These are usually embedded within a developer
  IDE's (e.g. VS Code) and are specifically tailored to software development tasks. There are many different coding
  assistants such as GitHub Copilot or Amazon Q Developer. Coding assistants usually offer a selection of models that
  can be used.

- **Models/Large Language Models (LLM)** -- models are the underlying engine that power a GenAI tool or coding assistant. There
  are many different models from many different suppliers, including OpenAI GPT-4o and o1-mini, Google Gemini, Meta
  LLaMA 3.1 and Anthropic Claude 3.7 Sonnet.

## What is 'Agentic AI'?

In late 2024/early 2025, coding assistants began to offer agentic capabilities.

The word *agentic* has become a bit of a catch-all term within AI however, OpenAI and Anthropic characterise agentic
tools as being able to **perform complex,** multi-step **tasks independently and autonomously.**

**Within coding assistants, the term agentic means being able to**:

- Make multi-file changes across a codebase, where the output of one file influences the input of another.
- Execute commands outside the core code base, e.g. terminal commands, running tests, git commits.

A real-world example would be, asking an agentic tool to implement a piece of functionality that is able to:

- Make changes across multiple files
- Integrate the changes together
- Run tests, determine whether they pass
- If tests don't pass, inspect logs
- Make changes to respective files to fix issue
- Rerun tests
- Commit changes to git

A model doesn't necessarily make a coding assistant *agentic*, but some models which specialise in more advanced
reasoning logic such as **Claude 3.7 Sonnet** or **OpenAI o1-mini** are often well-suited to the tasks of agentic coding
assistants.

### Why are agentic AI coding assistants so important?

Agentic AI coding assistants are transformative to software development as they have the potential to be much more
integrated than standard chat-based tools.

### What agentic coding assistants are available?

As of March 2025, there are 3 popular coding assistants:

1. Cursor Agent Mode - [https://docs.cursor.com/chat/agent](https://docs.cursor.com/chat/agent)
2. GitHub Copilot Agent
   Mode - [https://code.visualstudio.com/blogs/2025/02/24/introducing-copilot-agent-mode](https://code.visualstudio.com/blogs/2025/02/24/introducing-copilot-agent-mode) (
   Available in preview, requires VS Code Insiders)
3. Continue - [https://www.continue.dev/](https://www.continue.dev/)

*There are also offerings such as Windsurf, Cline, Aider, Claude Code, which haven't been included for the purposes of
brevity.*

### What are the key differences between agentic coding assistants?

Different coding assistants have different core functionality, data privacy and pricing. The following table outlines
some of the key differences.

# Comparison of Agentic AI Coding Assistants

| Feature                                 | GitHub Copilot Agent Mode                                                                                                                                                                                                                                                      | Cursor                                                                                                                                                                                                                                                        | Continue                                                                                                                                                                                                                   |
|-----------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Provider**                            | GitHub                                                                                                                                                                                                                                                                         | Anysphere                                                                                                                                                                                                                                                     | Continue                                                                                                                                                                                                                   |
| **Current status**                      | In preview                                                                                                                                                                                                                                                                     | General availability                                                                                                                                                                                                                                          | General availability                                                                                                                                                                                                       |
| **Models available**                    | • OpenAI GPT-4o<br>• Claude 3.5, 3.7 Sonnet                                                                                                                                                                                                                                    | • OpenAI GPT-4o<br>• Claude 3.5, 3.7 Sonnet<br>• Google Gemini 2.5                                                                                                                                                                                            | • OpenAI GPT-4o<br>• Claude 3.5, 3.7 Sonnet<br>• Google Gemini 2.5<br><br>Also provides support for **Ollama** for **local-based LLMs**.                                                                                   |
| **Pricing**                             | Seat-based subscription, unlimited usage of models                                                                                                                                                                                                                             | Seat-based subscription with usage limits                                                                                                                                                                                                                     | Seat-based subscription, unlimited usage of models                                                                                                                                                                         |
| **IDE support**                         | • VS Code and IntelliJ (reduced functionality)<br>• Inline suggestions and chat                                                                                                                                                                                                | • **Native Cursor app** (modified VS Code)<br>• Inline suggestions and chat                                                                                                                                                                                   | • VS Code and IntelliJ plugins<br>• Inline suggestions and chat                                                                                                                                                            |
| **Security and Privacy**                | • Prompts and code will not be used as training data<br>• Content Exclusions to prevent certain repository content from ever being sent to Copilot<br>• No self-host of models<br>• SOC 2 Type I<br>• [https://copilot.github.trust.page/](https://copilot.github.trust.page/) | • Good overview of how data is accessed and stored across its services - [https://www.cursor.com/security](https://www.cursor.com/security)<br>• Privacy mode - prompts and code will not be stored or used as training data<br>• **SOC 2 Type II** certified | • **Open source**<br>• Options for **self-hosting models using Ollama**<br>• No specific security certifications<br>• Anonymised usage telemetry<br>• [https://www.continue.dev/privacy](https://www.continue.dev/privacy) |
| **Fine-tuning of models/customisation** | No fine-tuning of models other than basic system prompts                                                                                                                                                                                                                       | No fine-tuning of models other than basic system prompts                                                                                                                                                                                                      | • [Continue Hub](https://docs.continue.dev/hub/introduction) - ability to create, share and use custom AI code assistants<br>• Can use context providers to pull data from GitHub, Jira, Confluence                        |
| **Enterprise features**                 | • Integration with SSO<br>• **Enterprise admin control** of features, manage seats<br>• Integration with wider Microsoft network incl. GitHub (Azure DevOps coming soon)                                                                                                       | Centralised admin controls                                                                                                                                                                                                                                    | Offers enterprise features (more info required)                                                                                                                                                                            |
| **RAG and MCP support**                 | • RAG: Supported with RAG plugin<br>• MCP: Supports tools and resources                                                                                                                                                                                                        | MCP: Supports tools                                                                                                                                                                                                                                           | MCP: Full support for all MCP features                                                                                                                                                                                     |

**Key points**

- All 3 coding assistants offer agentic functionality and inline chat/code suggestions within an IDE.
- Model selection is standard, however Continue stands-out by offering integration with Ollama for locally running
  models.
- In terms of pricing, all offer a seat-based subscription. Both GitHub Copilot and Continue feature unlimited usage of
  all models, but there are some usage constraints for certain models with Cursor.
- GitHub Copilot is probably the most enterprise ready and will continue to offer tight integration with the wider
  Microsoft stack (Azure, GitHub).
- Neither Copilot or Cursor offer much in the form of customisation but Continue has a focus on user submitted content.
  Users can share prompts, models and rules using the Continue Hub.
- The Context Providers feature within Continue is not something that appears to be featured in other tools and allows
  the coding assistant to specifically reference things like Jira and Confluence.
- Cursor had the most detailed breakdown of how data is handled and stored across its system.

## What models are available?

There are dozens of models available for different tasks.

There is not a definitive list but here are a useful set of sources:

- Cursor -- list of supported
  models ([https://docs.cursor.com/settings/models](https://docs.cursor.com/settings/models))
- Ollama -- list of supported models ([https://ollama.com/library](https://ollama.com/library))
- WebDev Arena Leaderboard -- ranking of
  models ([https://web.lmarena.ai/leaderboard](https://web.lmarena.ai/leaderboard))

Typically, we'd consider popular models that are supported in coding assistants like GitHub Copilot. This includes:

- OpenAI's GPT-4o, o1-mini
- Anthropic's Claude 3.7 and 3.5 Sonnet
- Google's Gemini 2.0 and 2.5

There are also other models such as DeepSeek's R1 and Alibaba's Qwen 2.5 which have not been investigated in enough
detail.

### What are the key differences between models?

# Comparison of Leading AI Models

| Feature                             | Claude 3.7 Sonnet                                                                                                                                                                                           | GPT-4o                                                                                                                                              | Gemini 2.5                                                               |
|-------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| **Provider**                        | Anthropic                                                                                                                                                                                                   | OpenAI                                                                                                                                              | Google                                                                   |
| **Release date**                    | March 2025                                                                                                                                                                                                  | May 2024                                                                                                                                            | February 2025                                                            |
| **Model type**                      | Thinking and reasoning                                                                                                                                                                                      | Multimodal, generalist                                                                                                                              | Multimodal with thinking and reasoning                                   |
| **Description**                     | Currently considered one of the best models for agentic coding. Supported by most tools.<br><br>Claude 3.7 emphasizes *"extended thinking"* modes for complex tasks and excels at agentic coding benchmarks | A good all-rounder, suitable for most tasks. Doesn't feature the thinking and reasoning of Claude 3.7 or Gemini 2.5, however makes up for in speed. | Multimodal and *"thinking-oriented"*. Capable of handling huge codebases |
| **Context window**                  | 200k tokens                                                                                                                                                                                                 | 128k tokens                                                                                                                                         | **1M (2M coming soon)**                                                  |
| **Benchmarking**                    | **WebDev Arena ranking: #1**<br><br>**HumanEval ~82%**<br><br>**MMLU ~90%**                                                                                                                                 | WebDev Arena ranking: #19<br><br>HumanEval ~85%<br><br>MMLU 88.7%                                                                                   | WebDev Arena ranking: #2<br><br>Code generation ~70%<br><br>MMLU ~90%    |
| **Pricing (approx. per 1M tokens)** | $3 input, $15 output                                                                                                                                                                                        | $2.50 input, $10 output                                                                                                                             | **Free preview; pricing TBD (2.0 was $0.10 input, $0.40 output)**        |
| **Knowledge cutoff**                | October 2024                                                                                                                                                                                                | October 2023                                                                                                                                        | **January 2025**                                                         |

**Key points**

- Claude and Gemini offer reasoning models which may suit the tasks required by agentic coding assistants. They are
  often the two top ranked models in various benchmarking lists.
- Gemini boasts a large context window of 1M tokens, which would make it ideal for larger codebases.
- GPT-4o is probably the weakest of the 3 models but is still suitable for everyday tasks.

### What are the local options for running a model?

There are various privacy and security concerns about sending application codebases to models which are often hosted in
the cloud.

As a result, there is a desire to consider options for running models locally. One of the best options for doing so
is [Ollama](https://ollama.com/) which allows you to run popular, open-source models like Google's gemma3, DeepSeek's R1
and Meta's Llama 3. Most models come in a variety of different parameter configurations.

As the table below outlines, only the smaller parameter model variations (1B-7B) could be run locally (i.e. on MacBook
Pro).

| **Size**   | **Notation** | **Example**               | **Typical Use Case**                              | **Can you run it locally?**                                                                    |
|------------|--------------|---------------------------|---------------------------------------------------|------------------------------------------------------------------------------------------------|
| **Small**  | 1B--7B       | Tiny LLama, Mistral 7B    | Lightweight assistants, mobile apps, edge devices | Yes, laptop.                                                                                   |
| **Medium** | 8B--30B      | LLaMA 2 13B, Mixtral 8x7B | On-prem inference, enterprise private models      | Maybe, required dedicated on-prem, large memory system. Multiple GPUs required.                |
| **Large**  | 65B-100B+    | GPT-4o                    | State-of-the-art models (ChatGPT, Claude, etc.)   | No, distributed infra with large GPU clusters required.<br><br>Use only via API/Cloud service. |
