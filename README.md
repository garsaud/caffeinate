# caffeinate
Terminal-based command for Linux to stop your computer from going to sleep (or locking the screen) until the command is stopped.

## building
```bash
make
```

## installing
```bash
make install
```
(Install dir is `/usr/local/bin` by default)

## usage
```bash
caffeinate
```

Every 10 seconds the program will move the cursor pointer by 1 pixel, then immediately back to its place, until you quit by pressing `Ctrl+C`.
This is useful to avoid screen lock during a long running operation.

