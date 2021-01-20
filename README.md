# ascii-crc

Fingerprint visualization [algorithm](http://dirk-loss.de/sshvis/drunken_bishop.pdf)
from OpenSSH. Hash function is [blake2b](https://monocypher.org/manual/hash) via
[mmap](https://man7.org/linux/man-pages/man2/mmap.2.html) syscall.


# Example
```
$ ascii-crc.l /bin/date
+-----------------+
|                 |
|                 |
|          +      |
|+    .   +       |
|o . o . S +      |
|.  + + . B .     |
|o . + o B+o E    |
| o .   + . o     |
| +        .      |
+-----------------+
```
