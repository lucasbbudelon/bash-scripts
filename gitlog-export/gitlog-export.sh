git log --pretty=format:'{
  "commit": "%H",
  "abbreviated_commit": "%h",
  "tree": "%T",
  "abbreviated_tree": "%t",
  "parent": "%P",
  "abbreviated_parent": "%p",
  "refs": "%D",
  "encoding": "%e",
  "subject": "%s",
  "sanitized_subject_line": "%f",
  "commit_notes": "",
  "verification_flag": "%G?",
  "signer": "%GS",
  "signer_key": "%GK",
  "author": {
    "name": "%aN",
    "email": "%aE",
    "date": "%aD"
  },
  "commiter": {
    "name": "%cN",
    "email": "%cE",
    "date": "%cD"
  }
},' | sed "$ s/,$//" | sed ':a;N;$!ba;s/\r\n\([^{]\)/\\n\1/g'| awk 'BEGIN { print("[") } { print($0) } END { print("]") }'
