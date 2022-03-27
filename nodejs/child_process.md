# Running shell commands from node

## `child_process`
The test shell script:
```shell
#!/bin/bash
# myscript.sh

for i in {1..20}; do
  echo "Line: $i"
  sleep 1
done
```

### `child_process.exec()` buffered async process creation
* Opens a shell and executes the script, buffering any generated output and  
and prints that to the console when the script execution finishes (after 20s).

```javascript
const { exec } = require('child_process');

exec('bash ./myscript.sh', (err, stdout, stderr) => {
  if (err) {
    console.error(err)
  } else {
   // the *entire* stdout and stderr (buffered)
   console.log(`stdout: ${stdout}`);
   console.log(`stderr: ${stderr}`);
  }
});
console.log('I\'am printed before the myscript.sh output!');
```

### `child_process.spawn()` stream based async process creation
* Opens a shell and executes the script. Every output from the script can be  
consumed immediatly (prints a line every second);

```javascript
const { spawn } = require('child_process');
const child = spawn('bash',['./myscript.sh']);
child.stdout.on('data', (chunk) => {
  console.log(chunk.toString());
});

child.on('close', (code) => {
  console.log(`child process exited with code ${code}`);
});
```
