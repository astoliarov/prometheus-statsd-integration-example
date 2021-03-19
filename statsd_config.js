{
    graphitePort: 2003,
    graphiteHost: "graphite.example.com",
    port: 8125,
    backends: ["./backends/repeater", ],
    repeater: [{ host: "statsd_exporter", port: 9125 }],
}