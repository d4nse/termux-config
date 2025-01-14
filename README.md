<h1 align="center">Termux Config</h1>
<div align="center">
    <a href="https://wiki.termux.com/wiki/Main_Page">Termux Wiki</a>
    <span> • </span>
    <a href="https://github.com/termux/termux-app">Termux Repo</a>
</div>

### <a name="#features"></a> Features

- Remote access: [**Dropbear**](https://github.com/mkj/dropbear)
- Text editing: [**Neovim**](https://github.com/neovim/neovim)
- Font: [**MesloLGS**](https://github.com/romkatv/powerlevel10k/blob/master/font.md)
- A few [**messages of the day**](/dotfiles/.zprofile)

## <a name="#installation"></a> Installation

- Install [Termux](https://f-droid.org/en/packages/com.termux/)
- Install [Termux:API](https://f-droid.org/en/packages/com.termux.api/)

Copypaste this or just run line by line:

```bash
pkg install git
git clone https://github.com/d4nse/termux-config
cd termux-config
bash install.sh
```

### Post Installation

To get SSH working without passwords follow these:

1. Set `passwd` on Termux
2. If you have not generated ssh keys, generate them on pc:

```bash
ssh-keygen -t rsa -b 4096
```

3. Connect to termux from your pc and add pc public keys to termux authorized keys:

```bash
ssh <PHONE LAN IP HERE> mkdir -p ~/.ssh && cat > ~/.ssh/authorized_keys <$HOME/.ssh/id_rsa.pub
```
