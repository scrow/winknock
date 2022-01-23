# winknock
A simple port knocking utility for Windows using GNU Wget

## Introduction

Since there are exactly zero good port knocking clients for Windows, I cobbled this together using a batch file and [GNU Wget][1].  All I needed was something to send three sequential knocks to specific TCP ports.  This may or may not work for your purposes.  If you need more or fewer ports, it's easy enough to modify.  If you need UDP, I can't help you, sorry.

A memory-dial script is now provided as `knockm.bat`

Looking for a port knocking implementation for RouterOS devices?  See [this][3] and [this][4]

## Prerequisites

Download the [GNU Wget executable][1] and install into `C:\Windows` or some other location in your `%PATH%`.

## Installation and Configuration

Download `knock.bat` to `C:\Windows\` or another location in your `%PATH%`.  No further configuration is necessary.

If you wish to use the memory-dial script, download `knockm.bat` to `C:\Windows\` or another location in your path.  Run `notepad.exe` as an Administrator, and open the `knockm.bat` file for editing.  Refer to the notes and examples in the default `knockm.bat` file for further information.

## Usage

To knock, simply provide the IP address and three ports to knock:

`knock 192.168.1.1 8001 8005 8003`

If you have configured the memory-dial script `knockm.bat` you may specify either an individual IP or `all` to knock all hosts simultaneously:

```
knockm 192.168.1.1
knockm all
```

## Bugs, Feedback

Please visit the [winknock Github page][2].


[1]: https://eternallybored.org/misc/wget/
[2]: https://github.com/scrow/winknock
[3]: https://gist.github.com/scrow/2e7d39292f86322c7aa495f6598c6ae7
[4]: https://gist.github.com/scrow/889560346cec73cabeb287d3fe6b0c55
