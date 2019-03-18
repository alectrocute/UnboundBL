# UnboundBL 🛑 [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/alectrocute/UnboundBL/pulls)
Block ads, malware, tracking, mining + more on OPNsense with UnboundBL & Unbound DNS.

![UnboundBL](https://i.imgur.com/zvKpPDk.png)

UnboundBL goes hand-in-hand with Unbound DNS to blackhole undesired content. By generating a .conf file for Unbound in realtime, it allows you to easily submit, convert & manage blacklist URL's. It's not quite at the pfBlocker level, but it's getting there! 😅

### Current Features
- Add, download and parse blocklist URLs.
- Add unlimited whitelist entries in domain format (eg. `www.malware-server.net`) which will be ignored from any blocklist you parse.
- One-click refresh and rebuild.

### Planned Features
- Cron-job management.
- Advanced error reporting.
- Preset blacklists for easy setup.
- Advanced blacklist management.
- Regex builder for whitelist.
- Pixelserv (NGINX) to replace 0.0.0.0.


### Installing
Obviously, this is all done with the `8) Shell` mode via SSH.

1. Drop the `UnboundBL/` folder somewhere handy on your router.
2. Make sure you have the [proper tools installed](https://github.com/opnsense/plugins/issues/231#issuecomment-322993962).
3. `cd` into `UnboundBL/` folder.
4. `$ make package`
5. `$ pkg add work/pkg/*.txz`

### Removing
`8) Shell` mode via SSH, or web-based package manager, I suppose.

`$ pkg remove os-UnboundBL-devel-1.0`

#### Currently at version: ` devel-1.0`  on March 12, 2019

Special thanks to [Devin Ortner](https://devinstechblog.com/block-ads-with-dns-in-opnsense/) for his awesome blog post, which helped kickstart this project. OPNsense contributor @mimugmail for his awesome critique and help. And of course, the Unbound DNS & OPNsense team. You guys are 'da real MVPs.
