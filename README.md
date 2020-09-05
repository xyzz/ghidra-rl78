# Renesas RL78 processor module for Ghidra

## Installing the module

Download `rl78.zip` from the latest [release](https://github.com/xyzz/ghidra-rl78/releases) and extract it to `Ghidra/Processors`.

## Building from source

Run the following once to set up the build environment:

```
python3 -mvenv env
. env/bin/activate
pip install -r requirements.txt
```

Ensure Ghidra's `sleigh` utility is in your PATH and then execute:

```
. env/bin/activate
./build.sh
```

The generated `rl78.zip` could then be extracted to `Ghidra/Processors`.
