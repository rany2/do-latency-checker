# DigitalOcean Latency Measure

This shell script measures latency of all digitalocean regions.

## Requirements

* `bash`
* `ping`
* `column`
* `curl`

## Example Run

```
$ ./measure.sh 
Average Latency (ms)  Server Address
101.859               speedtest-lon1.digitalocean.com
107.910               speedtest-ams3.digitalocean.com
109.470               speedtest-fra1.digitalocean.com
115.108               speedtest-ams2.digitalocean.com
175.268               speedtest-nyc1.digitalocean.com
178.534               speedtest-nyc3.digitalocean.com
179.999               speedtest-nyc2.digitalocean.com
187.354               speedtest-tor1.digitalocean.com
235.957               speedtest-sfo3.digitalocean.com
238.128               speedtest-sfo2.digitalocean.com
240.075               speedtest-blr1.digitalocean.com
249.207               speedtest-sfo1.digitalocean.com
250.666               speedtest-sgp1.digitalocean.com
$
```
