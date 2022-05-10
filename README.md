# bgpscanner
Docker image of old bgpscanner from Isolario - Package not maintained anymore. But still a fast MRT processor.
Official source: https://gitlab.com/Isolario/bgpscanner


Sample use:

Print full table
```
docker run --rm -v source-mrt-directory:/mnt ghcr.io/anuragbhatia/bgpscanner:main bgpscanner /mnt/latest-bview.gz
```

Show routes matching AS_PATH 51184 6939 53292 54456 from the MRT:
```
docker run --rm -v /home/anurag/temp2:/mnt ghcr.io/anuragbhatia/bgpscanner:main bgpscanner -p '51184 6939 53292 54456' /mnt/latest-bview.gz

=|2607:1b00:1::/48|51184 6939 53292 54456|2001:7f8::c7f0:0:1fe80::7a50:7c00:1c4c:7040|i|||51184:40300|2001:7f8::c7f0:0:1 51184|1650412243|1
=|2607:1b00:2::/48|51184 6939 53292 54456|2001:7f8::c7f0:0:1fe80::7a50:7c00:1c4c:7040|i|||51184:40300|2001:7f8::c7f0:0:1 51184|1650412243|1
=|2607:1b00:3::/48|51184 6939 53292 54456|2001:7f8::c7f0:0:1fe80::7a50:7c00:1c4c:7040|i|||51184:40300|2001:7f8::c7f0:0:1 51184|1650412243|1
=|2607:1b00:10::/48|51184 6939 53292 54456|2001:7f8::c7f0:0:1fe80::7a50:7c00:1c4c:7040|i|||51184:40300|2001:7f8::c7f0:0:1 51184|1650412243|1
=|2607:1b00:93b2::/48|51184 6939 53292 54456|2001:7f8::c7f0:0:1fe80::7a50:7c00:1c4c:7040|i|||51184:40300|2001:7f8::c7f0:0:1 51184|1650412243|1
```
