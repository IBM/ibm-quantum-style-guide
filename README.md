# IBM Quantum style guide

This repo contains [Vale](https://vale.sh)-compatible rules implementing the
IBM Quantum style guide. Use these rules with Vale to help keep your writing
consistent with our style suggestions.


## Using Vale in your repo

You can use the [`qiskit-ibm-runtime`
integration](https://github.com/Qiskit/qiskit-ibm-runtime/pull/739) as a
reference.

1. [Install Vale](https://vale.sh/docs/vale-cli/installation/) locally.

   > ℹ️ If you work with reStructuredText, make sure
   > [`docutils`](https://docutils.sourceforge.io/) is installed and `rst2html` is
   > on your `PATH`.

2. Download the [latest
   release](https://github.com/IBM/ibm-quantum-style-guide/releases/), copy the
   "IBMQuantum" directory somewhere in your repo (usually the tests folder),
   and add a configuration file:

   ```ini
   # This goes in a file named either `.vale.ini` or `_vale.ini`.
   StylesPath = path/to/dir  # should point to parent of `IBMQuantum` directory 

   [*.md]
   BasedOnStyles = IBMQuantum
   ```

   See Vale's [usage docs](https://github.com/errata-ai/vale/#usage) for more
   information.

3. Test your files using
   ```sh
   vale <filepath>
   ```
   for markdown, rst, and HTML. For notebooks, use
   [nbQA](https://github.com/nbQA-dev/nbQA) with the following command:

   ```sh
   nbqa vale <path-to-notebook> --nbqa-shell --nbqa-md
   ```

   You can use a [shell
   script](https://github.com/Qiskit/qiskit-ibm-runtime/blob/main/test/docs/vale.sh)
   to lint everything, for example:

   ```sh
   #!/bin/bash
   
   # Lint .rst and .md using plain Vale
   cd ./docs
   vale .
   
   # Use nbQA to lint notebooks
   notebooks=$(find . -name "*.ipynb" -not -name "*checkpoint*")
   python -m nbqa vale ${notebooks} --nbqa-shell --nbqa-md
   ```

4. Run this check on pull request using a [GitHub
   action](https://github.com/Qiskit/qiskit-ibm-runtime/blob/8b08753d63e35812712dcace0265d754ca53bb46/.github/workflows/ci.yml#L58-L67).


## Ignoring rules

If you find a false positive, please [make an issue](https://github.com/IBM/ibm-quantum-style-guide/issues/new/choose).

If the rule is working correctly but you still want
to disable it, you can turn specific rules off for
sections of text using these comments:

```markdown
<!-- vale IBMQuantum.RuleName = NO -->

This text will not trigger RuleName

<!-- vale IBMQuantum.RuleName = YES -->
```

If the rule isn't appropriate for your repo, you can
disable it everywhere by adding this line to your
`.vale.ini`:

```ini
IBMQuantum.RuleName = NO
```


## Keeping up to date

To have GitHub notify you on new releases, from [the repo page](github.com/IBM/ibm-quantum-style-guide) click "Watch" in the top-right corner. Then choose "custom > releases".


___

> This repo is a fork of [errata-ai/IBM](https://github.com/errata-ai/IBM).
