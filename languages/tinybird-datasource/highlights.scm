; Inherit SQL highlighting
; (this extends the built-in SQL grammar highlights)

; Tinybird-specific keywords as identifiers
((identifier) @keyword
  (#match? @keyword "^(SCHEMA|ENGINE|ENGINE_SORTING_KEY|ENGINE_PARTITION_KEY|ENGINE_TTL|ENGINE_VER|ENGINE_SIGN|ENGINE_VERSION|ENGINE_SETTINGS|FORWARD_QUERY|BACKFILL|TOKEN|SHARED_WITH)$"))

; Engine types
((identifier) @type.builtin
  (#match? @type.builtin "^(MergeTree|ReplacingMergeTree|CollapsingMergeTree|VersionedCollapsingMergeTree)$"))

; Permissions
((identifier) @constant.builtin
  (#match? @constant.builtin "^(READ|APPEND|skip)$"))

; ClickHouse/SQL functions specific to Tinybird
((identifier) @function.builtin
  (#match? @function.builtin "^(toYYYYMM|toStartOfDay|toIntervalDay|LowCardinality|DateTime|String|Int8|Int16|Int32|Int64|UInt8|UInt16|UInt32|UInt64|Float32|Float64)$"))
