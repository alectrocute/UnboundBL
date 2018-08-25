# OPNblock 🛑
Block ads, malware, tracking, mining + more on OPNsense with OPNblock & Unbound DNS.

![OPNblock](https://i.imgur.com/xHLuwhL.png)

OPNblock goes hand-in-hand with Unbound DNS to blackhole undesired content. By generating a .conf file for Unbound in realtime, it allows you to easily submit, convert & manage blacklist URL's. It's not quite at the pfBlocker level, but it's getting there! 😅

### Current Features
- Add unlimited host-file URLs, separated by a space.
- Add unlimited whitelist regex, separated by a space.
- Rebuild the Unbound DNS list by clicking on "Reload Lists".

### Planned Features
- Cron-job management.
- Advanced error reporting.
- Preset blacklists for easy setup.
- Advanced blacklist management.
- Regex builder for whitelist.
- Pixel server (NGINX) to replace 0.0.0.0.


### Installing
Obviously, this is all done with the `8) Shell` mode via SSH.

1. Drop the `opnblock/` folder somewhere handy on your router.
2. Make sure you have the [proper tools installed](https://github.com/opnsense/plugins/issues/231#issuecomment-322993962).
3. `cd` into `opnblock/` folder.
4. `$ make package`
5. `$ pkg add work/pkg/*.txz`

### Removing
`8) Shell` mode via SSH, or web-based package manager, I suppose.

`$ pkg remove os-OPNBlock-devel-0.1`

#### Currently at version: ` devel-0.1`  on Aug. 25, 2018

Special thanks to [Devin Ortner](https://devinstechblog.com/block-ads-with-dns-in-opnsense/) for his awesome blog post, which helped kickstart this project. And of course, the Unbound DNS & OPNsense team. You guys are 'da real MVPs.
