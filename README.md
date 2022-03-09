French keyboard hack for Champions of Regnum Online (https://www.championsofregnum.com/)

This game has very bad support for key binding and especially with french keyboards under Linux.

- Clone this repo in `~/src`

```bash
sudo apt-get install git
```

```bash
    mkdir -p ~/src && cd ~/src && git clone https://github.com/zas/rokeyshack.git
```

- To build modified version of libxcb, you need (ubuntu):

```bash
    sudo apt-get install build-essential xsltproc xcb-proto libpthread-stubs0-dev libxau-dev python-xcbgen
```

- Create a target directory and cd to it:

```bash
    mkdir ~/rokeyshack.built && cd  ~/rokeyshack.built
```

- Download original version:

```bash
    wget https://xcb.freedesktop.org/dist/libxcb-1.13.tar.bz2
```

- Unarchive in the keyboard hack directory:

```bash
    tar xvjf libxcb-1.13.tar.bz2 &&  mv libxcb-1.13 libxcb.patched
```

- Patch it:

```bash
    cd libxcb.patched/ && patch -p1 < ~/src/rokeyshack/libxcb-1.13.patch
```

- Build it:

```bash
    ./configure && make
```

- Use it:

```bash
    cd .. && cp ~/src/rokeyshack/ro_launch.sh .
    ./ro_launch.sh
```


Note: you may want to adjust values in `src/hack.h`
