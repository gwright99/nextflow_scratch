# Nextflow Weblog Testing

- Following steps in Mark Panganiban's [PR](https://github.com/seqeralabs/support-backlog/pull/326).
- Using same K8s environment as CE for networking convenience.


### Setup Steps

```bash
# Setup echoserver in same namespace as CE.
$ k run echoserver --image=ealen/echo-server:latest
$ k expose pod echoserver --port=3000 --target-port=80 --name=echoserver
```
