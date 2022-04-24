<p align="center">
<a href="https://github.com/ohmybash/oh-my-bash">Oh My Bash</a> plugin for <a href="https://github.com/xxh/xxh-shell-bash">xxh-shell-bash</a>. 
</p>

<p align="center">  
If you like the idea click ⭐ on the repo and stay tuned.
</p>

## Install
From xxh repo:
```
xxh +I xxh-plugin-bash-ohmybash
xxh yourhost +s bash +if
```
From any repo:
```
xxh +I xxh-plugin-bash-ohmybash+git+https://github.com/xxh/xxh-plugin-bash-ohmybash
```    
Connect:
```
xxh yourhost +s bash +if
```

The default theme used is agnoster. To update set the environmental variable `OSH_THEME` to your desired theme in the XXH config filg located at `~/.config/xxh/config.xxhc`

Example:
```YAML
hosts:
    myhost:
        +s: bash
        +I: 
            - xxh-shell-bash
            - xxh-plugin-bash-ohmybash
        +e:    
            - OSH_THEME="simple"
```