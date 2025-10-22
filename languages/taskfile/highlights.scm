;; Taskfile syntax highlighting with enhanced colors

;; Comments
(comment) @comment

;; Top-level Taskfile keywords - very specific
(block_mapping_pair
  key: (flow_node
    (plain_scalar
      (string_scalar) @keyword))
  (#match? @keyword "^(version|output|run|silent|set|method)$"))

;; Top-level section headers
(block_mapping_pair
  key: (flow_node
    (plain_scalar
      (string_scalar) @type))
  (#match? @type "^(tasks|vars|env|dotenv|includes)$"))

;; Task property keys
(block_mapping_pair
  key: (flow_node
    (plain_scalar
      (string_scalar) @attribute))
  (#match? @attribute "^(desc|summary|cmds|deps|preconditions|status|sources|generates|dir|silent|method|prefix|ignore_error|platforms|requires|cmd|task|for|sh)$"))

;; Task names and other mapping keys (not matching the above patterns)
(block_mapping_pair
  key: (flow_node
    (plain_scalar
      (string_scalar) @function)))

;; String values in mappings (only values, not keys)
(block_mapping_pair
  value: (flow_node
    (plain_scalar
      (string_scalar) @string)))

;; Quoted strings
(double_quote_scalar) @string
(single_quote_scalar) @string
(block_scalar) @string

;; Sequence items (list items)
(block_sequence_item
  (flow_node
    (plain_scalar
      (string_scalar) @string)))

;; Numbers
(integer_scalar) @number
(float_scalar) @number

;; Booleans
(boolean_scalar) @boolean

;; Null
(null_scalar) @constant.builtin

;; Anchors and aliases
(anchor_name) @label
(alias_name) @label

;; Punctuation
[
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  ":"
] @punctuation.delimiter
