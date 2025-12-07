; Comments
(comment) @comment

; Keywords - Tinybird instructions
[
  "DESCRIPTION"
  "TAGS"
  "NODE"
  "SQL"
  "TYPE"
  "DATASOURCE"
  "TARGET_DATASOURCE"
  "TOKEN"
  "COPY_SCHEDULE"
  "COPY_MODE"
  "DEPLOYMENT_METHOD"
] @keyword

; Pipe types
[
  "ENDPOINT"
  "MATERIALIZED"
  "COPY"
  "SINK"
] @type.builtin

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
  "ALTER"
  "TABLE"
  "MODIFY"
  "QUERY"
] @keyword

; Permissions
[
  "READ"
  "APPEND"
] @constant.builtin

; Copy modes
[
  "append"
  "replace"
] @constant.builtin

; Deployment methods
[
  "alter"
] @constant.builtin

; Strings
(string) @string

; Numbers
(number) @number

; Functions
(function_call name: (identifier) @function)

; Template parameters (special Tinybird syntax)
; e.g., {{ String(country, 'US') }}
(identifier) @function.special
  (#match? @function.special "^(String|Int32|Int64|Float32|Float64|Date|DateTime)$")

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
  "["
  "]"
] @punctuation.bracket
