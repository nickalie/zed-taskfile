; inherits: false
;; Outline for Taskfile - show only task names under the "tasks" key
(block_mapping_pair
  key: (flow_node) @_tasks_key
  value: (block_node
    (block_mapping
      (block_mapping_pair
        key: (flow_node) @name) @item))
  (#eq? @_tasks_key "tasks"))
