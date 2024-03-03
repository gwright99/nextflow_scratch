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
    println "Git info: $workflow.repository - $workflow.revision [$workflow.commitId]"
    println "Cmd line: $workflow.commandLine"
    println "Manifest's pipeline version: $workflow.manifest.version"

    log.info session.config.bar
    log.info session.config
}

workflow.onComplete {
    println "Pipeline completed at: $workflow.complete"
    println "Execution status: ${ workflow.success ? 'OK' : 'failed' }"
}