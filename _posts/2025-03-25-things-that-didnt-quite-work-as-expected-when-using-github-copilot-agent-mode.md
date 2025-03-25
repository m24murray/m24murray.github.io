---
title: "Things That Didn't Quite Work as Expected When Using GitHub Copilot Agent Mode"
date: 2025-03-25 11:37:23 +0000
categories: 
tags: 
header:
  image: 
---

Here is a list of things that didn't quite work as expected when I was using GitHub Copilot:

- **Clicking the 'Done' button in Copilot ends the session**: The 'Done' button looks like it accepts your changes and closes the file changes modal. However, this actually ends your session. Any new session created will have lost context.

- **Incorrect file paths referenced for GOV.UK front-end components**: When setting up Nunjucks files for a GOV.UK front-end, the generated code referenced files and imports from paths that didn't exist.

- **npm didn't install relevant @types packages**: We had instructed npm to install dependencies as needed. While it would pull in the standard npm package, it would not pull in the respective @types packages. This meant the app would not start correctly.

- **Unit tests stopped running automatically**: We had asked unit tests to run automatically after every development iteration. For some reason, this just stopped happening.

- **Node modules not in scope**: It's expected behavior that the `node_modules` directory isn't in scope/context for Copilot. However, if you have code that needs to reference a specific file/import, it is often unable to get this right.

- **Abrupt loss of context**: Never assume you're going to retain context, as we lost one mid-way through development.

- **Ignoring instructions**: Copilot ignored the explicit instructions to use Jest and opted for Supertest instead.

- **Mix of testing paradigms**: On both the Node.js and Java apps, it tried to apply a mix of different testing paradigms in one file (e.g., mocked endpoints vs. full end-to-end testing).

- **Copilot Keep vs Undo**: When making file changes in VS Code, you will be presented with an interactive diff and prompted to keep or undo the changes. Technically, the changes have already been made (i.e., they will be present in your local environment and picked up as a diff by Git). This contrasts with other tools, which might ask you to accept incoming changes first.