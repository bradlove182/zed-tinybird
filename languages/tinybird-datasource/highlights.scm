; Comments
(comment) @comment

; Keywords - Tinybird instructions
[
  "SCHEMA"
  "ENGINE"
  "ENGINE_SORTING_KEY"
  "ENGINE_PARTITION_KEY"
  "ENGINE_TTL"
  "ENGINE_VER"
  "ENGINE_SIGN"
  "ENGINE_VERSION"
  "ENGINE_SETTINGS"
  "FORWARD_QUERY"
  "BACKFILL"
  "TOKEN"
  "SHARED_WITH"
] @keyword

; SQL Keywords
[
  "SELECT"
  "FROM"
  "WHERE"
  "GROUP BY"
  "ORDER BY"
  "LIMIT"
  "OFFSET"
  "JOIN"
  "LEFT JOIN"
  "RIGHT JOIN"
  "INNER JOIN"
  "ON"
  "AND"
  "OR"
  "NOT"
  "IN"
  "AS"
  "BETWEEN"
  "LIKE"
  "IS"
  "NULL"
  "DISTINCT"
  "HAVING"
  "UNION"
  "PARTITION"
  "TTL"
] @keyword

; Engine types
[
  "MergeTree"
  "ReplacingMergeTree"
  "CollapsingMergeTree"
  "VersionedCollapsingMergeTree"
] @type.builtin

; Permissions
[
  "READ"
  "APPEND"
] @constant.builtin

; Strings
(string) @string

; Numbers
(number) @number

; Functions
(function_call name: (identifier) @function)

; Identifiers
(identifier) @variable

; Operators
[
  "="
  ">"
  "<"
  ">="
  "<="
  "!="
  "+"
  "-"
  "*"
  "/"
  "%"
] @operator

; Punctuation
[
  "("
  ")"
  ","
  ";"
] @punctuation.delimiter

[
  "{"
  "}"
] @punctuation.bracket
