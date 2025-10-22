;; Bracket matching for Taskfile
("[" @open "]" @close)
("{" @open "}" @close)
("\"" @open "\"" @close)
("'" @open "'" @close)
