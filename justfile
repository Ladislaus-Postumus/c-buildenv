containerName := 'suckless'
projects := "dwm-custom"

default: all

up:
  #!/usr/bin/env bash
  if ! docker ps | grep -q {{containerName}}; then
    devcontainer up
  fi

build project='dwm-custom': up
  devcontainer exec make -C {{project}}

all:
  #!/usr/bin/env bash
  for project in {{projects}}; do
    just build $project
  done

setup:
  #!/usr/bin/env bash
  for project in {{projects}}; do
    if [ ! -d $project ]; then
      git clone git@github.com:Ladislaus-Postumus/$$project.git
    fi
  done
