# Micro-sock - dummy microservice

A tiny golang application simulating a microservice. It

- listens for inbound connections
- connects to other named microservices specified on the command line
- sends messages containing a sequence number
- logs sent and received messages
- attempts to reconnect on failure

## Build

### Using Go natively

```bash
make micro-sock
```

## Usage

```bash
Usage of ./micro-sock:
  -a string
        listening address
  -i duration
        message sending interval (default 2s)
  -l    listen
  -r duration
        connection retry interval (default 1s)
  -t duration
        connect/send/recv timeout (default 5s)
```

## Example

The following example will start micro-sock in listen mode, and attempt to connect to a different instance of micro-sock, on host "test-host".

```bash
./micro-sock -l test-host
```
