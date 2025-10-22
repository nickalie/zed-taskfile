;; Detect task definitions in Taskfile
;; Tasks are defined as keys under the "tasks:" block mapping

;; Match task names under the "tasks" key
(block_mapping_pair
  key: (flow_node) @_tasks_key
  value: (block_node
    (block_mapping
      (block_mapping_pair
        key: (flow_node) @run
        (#set! tag taskfile-task))))
  (#eq? @_tasks_key "tasks"))
