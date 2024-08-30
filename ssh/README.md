# SSH lab

## Log Config

默认Log配置(/etc/ssh/sshd_config)

```
# Logging
#SyslogFacility AUTH
#LogLevel INFO
```

开启详细日志记录：
编辑 OpenSSH 的配置文件 /etc/ssh/sshd_config。
确保以下配置项被设置为 yes 或者未被注释掉：
LogLevel VERBOSE
这会将日志级别设置为详细模式，记录更多细节到日志文件中。

重启 SSH 服务：
保存并关闭 /etc/ssh/sshd_config 文件。
使用以下命令重启 SSH 服务，确保配置生效：
sudo systemctl restart ssh

查看日志：
OpenSSH 的日志通常记录在系统的系统日志中，可以通过以下命令查看：
sudo journalctl -u ssh
这将显示 SSH 服务的运行日志，包括连接、认证、执行的命令等详细信息。

其他考虑：
如果需要更详细的日志记录，可以进一步调整 sshd_config 中的 LogLevel 设置为 DEBUG，但这会生成大量日志，可能会影响性能和磁盘空间。
通过这些步骤，您可以配置 OpenSSH 服务器以记录详细的运行日志，包括通过 SSH 执行的命令。

## LogLevel

LogLevel 的值在 OpenSSH 的配置文件中是不区分大小写的。这意味着你可以使用大小写混合的方式来设置日志级别，例如 DEBUG, debug, 或 DeBuG 都是等效的。

不过，通常在配置中使用全大写形式（如 DEBUG, INFO, ERROR）以保持一致性和可读性。


在 OpenSSH 中，LogLevel 配置项用于设置 SSH 守护进程 (sshd) 的日志记录详细程度。以下是 LogLevel 支持的日志级别，从最低到最高的详细程度：

QUIET：几乎不记录任何信息，只有严重错误或关键事件会被记录。

FATAL：仅记录导致 SSH 服务终止的严重错误。

ERROR：记录错误和更严重的事件。

INFO：记录关键信息和错误。这是默认的日志级别，包含连接尝试、认证成功或失败等重要事件。

VERBOSE：记录比 INFO 更详细的信息，通常包括登录尝试和失败的更详细信息。

DEBUG：记录调试信息，包括非常详细的运行信息。这通常用于问题诊断，不建议在生产环境中长期启用，因为会生成大量日志。

DEBUG1：这是与 DEBUG 等价的级别。

DEBUG2 和 DEBUG3：记录比 DEBUG 更详细的调试信息。DEBUG2 记录更多的内部操作信息，DEBUG3 记录所有信息，包括每个包的详细内容。通常只在开发或调试时使用。

这些级别提供不同的日志详细程度，可以根据需求选择适当的级别。通常在调试问题时使用 DEBUG 或更高级别的 DEBUG2、DEBUG3，而在生产环境中使用 INFO 或 VERBOSE 是比较常见的做法。

