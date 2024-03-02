# Reason for Existence

TLDR: 

1. Variables defined in profile blocks CANNOT be referenced in non-profile portions of the _nextflow.config_.
2.  You CANNOT set some block values inside profile and some outside [ref](https://www.nextflow.io/docs/latest/config.html#config-profiles).
    ```bash
    # This is BAD because `process` in two places.
    process.cpus = 1

    profiles {
        foo {
            process.memory = '2 GB'
        }

        bar {
            process.memory = '4 GB'
        }
    }
    ```