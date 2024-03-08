# Reason for Existence

Original ticket that prompted testing: `How to call CodeCommit codebase using nextflow cli (#38)`.

Synposis:

- Top-level profiles have an include config to another include config. Want to see if:
    1. Tower can find all 4 profiles (top-level and nested).
    2. Nextflow can use nested profiles.

Expectation is that (1) will be true; (2) will be false.