# winknock
A simple port knocking utility for Windows using GNU Wget

## Introduction

Since there are exactly zero good port knocking clients for Windows, I cobbled this together using a batch file and [GNU Wget][1].  All I needed was something to send three sequential knocks to specific TCP ports.  This may or may not work for your purposes.  If you need more or fewer ports, it's easy enough to modify.  If you need UDP, I can't help you, sorry.

Looking for a port knocking implementation for RouterOS devices?  See [this][3].

## Prerequisites

Download the [GNU Wget executable][1] and install into `C:\Windows` or some other location in your `%PATH%`.

## Installation

Download `knock.bat` to `C:\Windows\` or another location in your `%PATH%`.  

## Usage

To knock, simply provide the IP address and three ports to knock:

`knock 192.168.1.1 8001 8005 8003`

## Bugs, Feedback

Please visit the [winknock Github page][2].


[1]: https://eternallybored.org/misc/wget/
[2]: https://github.com/scrow/winknock
[3]: https://gist.github.com/scrow/2e7d39292f86322c7aa495f6598c6ae7/raw/
