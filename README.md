# marepo

Frontend for debmirror. It allows to maintain a set of local repositories from several Linux distributions in a simple way.

## Usage

- Install debmirror and ccze

    ```bash
    sudo apt install debmirror ccze
    ```
- Run ***debmirror.sh*** with a ***debmirror-linux_distro.conf*** script as first argument.
    + Ex. **./debmirror.sh ubuntu.conf**

- Configure the linux_distro.conf to your needs. It just stores configurations passed to ***debmirror.sh***
- You can copy the default templates and create your own
