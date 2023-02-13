# IBM Quantum style guide

This repo contains [Vale](https://vale.sh)-compatible rules implementing the
IBM Quantum style guide. Use these rules with Vale to help keep your writing
consistent with our style suggestions.


## Getting started

Download the [latest
release](https://github.com/IBM/ibm-quantum-style-guide/releases/), copy the
"IBMQuantum" directory to your `StylesPath`, and include it in your configuration
file:

```ini
# This goes in a file named either `.vale.ini` or `_vale.ini`.
StylesPath = path/to/some/directory
MinAlertLevel = suggestion  # suggestion, warning or error

[*.md]
BasedOnStyles = IBMQuantum
```

See Vale's [usage docs](https://github.com/errata-ai/vale/#usage) for more
information.

You can test notebooks using [nbQA](https://github.com/nbQA-dev/nbQA) with the
following command:

```bash
nbqa vale <path-to-notebook> --nbqa-shell --nbqa-md
```


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

___

> This repo is a fork of [errata-ai/IBM](https://github.com/errata-ai/IBM).
