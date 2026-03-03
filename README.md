# AI-Boosted Thesis Proposal LaTeX Template

Write a convincing thesis proposal with support from AI agents.
This template provides a structured format for your proposal and practical guidance on using AI agents effectively during the writing process (the AI agent is optional, but recommended).

The template is tailored to Bachelor's and Master's theses in computer science, in either English or German, but can be transferred to other fields with minor adjustments.
Additionally, your supervisor may have specific proposal requirements that imply adjustments to the template.
PhD thesis proposals typically require a more detailed and comprehensive structure and are outside the scope of this template.

Although [AGENTS.md](AGENTS.md) is written for AI agents, it is also a useful guide for human writers, especially for students writing a proposal for the first time.
The proposal structure and agent instructions encourage an abstract presentation of the problem and discourage chronological work plans and unnecessary technical detail.

## Quick Start

1. Install the requirements
    - Install [VS Code](https://code.visualstudio.com/)
    - Install a LaTeX distribution (e.g., [TeX Live](https://www.tug.org/texlive/))
2. Open the template folder in VS Code
    - Download or clone this repository
    - Open the folder in VS Code.
    - Install the recommended extensions when prompted.
3. Customize the proposal
    - Edit the `proposal.tex` and `literature.bib` files.
    - Chat with the AI agent for guidance, suggestions, and improvements.

## Repository Structure

- `proposal.tex`: The main LaTeX file for your thesis proposal and the primary place to write and edit your text.
- `literature.bib`: A BibTeX file for managing references. Add your sources there and cite them in `proposal.tex` with `\cite{key}` or `\citeauthor{key}`, where `key` is the unique entry key in `literature.bib`.
- `AGENTS.md`: A Markdown file with instructions for AI agents. The defaults fit most workflows, but you can refine agent behavior by editing this file.
- `compactarticle.cls`: A custom LaTeX class file that defines layout and structure. In most cases, no changes are needed unless you want to adjust formatting.
- `.vscode/`: VS Code workspace configuration files.


## IDE Setup and Tools in Detail

This template is designed to be used with [Visual Studio Code (VS Code)](https://code.visualstudio.com/).
It includes all required configuration files, so you can start right away after opening the template folder in VS Code and confirming some installation prompts.

### LaTeX Workshop Extension

[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) automatically compiles your LaTeX files as you edit them.
The only requirement is a LaTeX distribution installed on your system, such as [TeX Live](https://www.tug.org/texlive/).
In VS Code, you can open the output inside the editor, in a browser, or in a PDF reader (see the LaTeX side panel for details).
Outside VS Code, the generated `proposal.pdf` is available in the template directory's `build` folder.
Please rename the file to include your name before sending it to your supervisor, since they usually receive many proposals.

### GitHub Copilot

[GitHub Copilot](https://code.visualstudio.com/docs/copilot/overview) is a multi-agent development assistant configured through the [AGENTS.md](AGENTS.md) file in this template.
It is [available for free to students and teachers](https://github.com/education/students), with a usage quota that is usually sufficient for writing a proposal.

You can ask the agent in chat with prompts such as:
- "Write an initial proposal draft on the topic '<title of the thesis>'."
- "Guide me through the proposal creation process."
- "Ask me short questions to create a proposal step by step."
- "Turn bullet points in `proposal.tex` into a coherent proposal without adding new information."
- "Improve my existing proposal", "Improve the title", "Improve the research questions".
- "Do a final quality check before I send it to my supervisor."

### Other Helpers

- [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) displays errors and warnings directly in the editor, making it easier to spot issues directly in the proposal without switching to the problems panel or reading the raw output log of LaTeX.
- [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) provides grammar and spell-checking, helping you maintain a high language standard in your proposal.


## Contributing

AI is evolving quickly, and contributions that improve this template for students are always welcome.
Before opening a pull request, please create an issue to describe your idea first.
Best of luck with your thesis proposal!
