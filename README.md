# bin
Short and simple scripts that might be useful

locating it to somewhere like this might be a good idea.
`gh repo clone ryuheechul/bin ~/.local/bin/my-bin`

so you can call directly like below

`~/.local/bin/my-bin/hello.sh`

or any of your script can call the script like below

```
#!/usr/bin/env bash

echo "hey clipboard, let me in!" | pbcopy

~/.local/bin/my-bin/clear_pb_after.sh 10
```
