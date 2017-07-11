# Google Chrome Testing Images

This is based off of the work done by https://github.com/siomiz/chrome and 
what I wanted is an easy way to spin up an older chrome version for testing
purposes. I've done my best to find older builds of google chrome and create a
simple docker container that expose VNC so you can spin up the browser and use
it to verify whatever you need.

I intend on keeping track of newer releases of google chrome through the stable
channel and making sure to upload the latest .deb file as well as building the
container image and uploading to docker.

# Usage

## What versions are available ? 

You can see the available versions in the tags of the docker repo:

https://hub.docker.com/r/rodneygomes/chrome/tags/

## Startup Chrome at version N

`docker run -p 127.0.0.1:5900:5900 rodneygomes/chrome:v59`

Where `v59` can be any available tag which lines up to a specific chrome version
and once you start you can then connect to vnc running at vnc://localhost:5900

# Development

Work in progress so please feel free to open an issue/pr
