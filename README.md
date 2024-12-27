## RefactorEx Mason Repository

The build.sh does the following:

1. Downloads a [RefactorEx](https://github.com/gp-pereira/refactorex) release
   tarball and extracts it to `refactorex-release`
2. Patches the sourcecode to enable the stdio LSP transport
3. Creates a script that starts refactorex in stdio mode

This can be seen as a temporary solution until RefactorEx itself supports the
stdio transport.
