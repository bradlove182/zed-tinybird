; Inherit SQL highlighting
; (this extends the built-in SQL grammar highlights)

; Tinybird pipe-specific keywords as identifiers
((identifier) @keyword
  (#match? @keyword "^(DESCRIPTION|TAGS|NODE|SQL|TYPE|DATASOURCE|TARGET_DATASOURCE|TOKEN|COPY_SCHEDULE|COPY_MODE|DEPLOYMENT_METHOD)$"))

; Pipe types
((identifier) @type.builtin
  (#match? @type.builtin "^(ENDPOINT|MATERIALIZED|COPY|SINK)$"))

; Permissions and modes
((identifier) @constant.builtin
  (#match? @constant.builtin "^(READ|APPEND|append|replace|alter)$"))

; Template functions (Tinybird templating syntax: {{ String(...) }})
((identifier) @function.special
  (#match? @function.special "^(String|Int32|Int64|Float32|Float64|Date|DateTime|UInt32|UInt64)$"))

; ClickHouse/SQL functions specific to Tinybird
((identifier) @function.builtin
  (#match? @function.builtin "^(toYYYYMM|toStartOfDay|toStartOfHour|toIntervalDay|toIntervalHour|now|LowCardinality|sum|count|avg|min|max)$"))
