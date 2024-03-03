#!/usr/bin/env nextflow

process sayHello {
  //container "${params.container}"

  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

// workflow {
//   Channel.of('Hello', 'Hola') | sayHello | view
// }

workflow {
    println "Project: $workflow.projectDir"
}