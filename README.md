# rgbds-template

This is a Hello World for [rgbds](https://github.com/rednex/rgbds). The template was originally made by [nezticle](https://github.com/nezticle/rgbds-template) and updated by [manlycode](https://github.com/manlycode/rgbds-template) - I've added a readme and tweaked some things very slightly, but the heavy lifting was all [nezticle](https://github.com/nezticle/rgbds-template).

## Running locally

You need to get yourself the rgbds binaries - there are two ways to get those.

### Option 1 - Local rgbds install

Just follow the steps [in the install docs](https://github.com/rednex/rgbds#1-installing-rgbds).

### Option 2 - Docker dev container

For a quicker/isolated setup (assuming you have Docker installed), use [the rgbds-docker container](https://github.com/forana/rgbds-docker) instead. There's a makefile target for it in here already - just run `make docker`.

### Either way

Run `make` to build the rom (`hello-world.gb`).

## Opening in emulator

### The easy (hard) way

```sh
make run
```

You'll need to download [BGB](http://bgb.bircd.org/) and copy it to the root of this project. You'll also need to install [Wine] and have its binary available on PATH. For OSX, this is easy - `brew install wine`. Note that if you're using the docker option from above, you'll need to exit that shell (or use a different terminal window) to run this.

### Or just...

Open your favorite emulator, navigate to the new rom, and open it.
