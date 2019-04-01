{
  "configName": "${configname}",
  "inputDetail": {
    "filePattern": "access.log",
    "filterKey": [],
    "filterRegex": [],
    "key": [
      "time",
      "duration",
      "client_addr",
      "result_code",
      "byte",
      "request_method",
      "target_host",
      "target_port",
      "hierarchy_code"
    ],
    "localStorage": true,
    "logBeginRegex": ".*",
    "logPath": "/var/log/squid",
    "logType": "common_reg_log",
    "preserve": true,
    "preserveDepth": 0,
    "priority": 0,
    "regex": "([0-9.]+)\\s+(\\d+)\\s+(\\d+\\.\\d+\\.\\d+\\.\\d+)\\s+([A-Z_/0-9]+)\\s+(\\d+)\\s+(\\w+)\\s+([\\w\\.]+):(\\w+)\\s+-\\s+([\\w/_.]+).*",
    "timeFormat": ""
  }, 
  "inputType": "file",
  "logSample": "1553000933.175    285 172.16.255.11 TCP_TUNNEL/200 6523 CONNECT b0.yahoo.co.jp:443 - HIER_DIRECT/182.22.25.124 -",
  "outputDetail": {
    "logstoreName": "${logstorename}"
  },
  "outputType": "LogService"
}
