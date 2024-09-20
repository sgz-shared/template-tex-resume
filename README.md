# template-tex-resume

This is a simple template for a tex-based resume. This is not my template. (I don't remember where I got it from.) But I adopted it to live as a git repo with a codepsace config. If you own the original format, please let me know and I'll give the appropariate accredition :)

_\*Please note that the value of this template is in the dev setup; not the actual formatting itself!\*_
# Setup

## Option 1: (Recommened) Via Github Codespaces
1. Create a repo from this template repo. _**(not fork)!!!**_

   ![image](https://github.com/user-attachments/assets/b808de1c-b0e1-45d1-95a8-3a6477038702)

3. Create a Github Codespace. And open the container in the IDE of your choice. **VsCode STRONGLY RECOMMENDED!!!** (Specifically VsCode web for ease of use.)
  ![image](https://github.com/user-attachments/assets/97c3fb46-7856-483b-aff2-83eb94752545)

## Option 2: Via Local Docker Dev Containers (Recommended if you run out of Codespace compute hours)
1. Create a repo from this template repo. _**(not fork)!!!**_

  ![image](https://github.com/user-attachments/assets/35476c03-9c16-4322-8822-cc7eeb618880)

2. Clone your repo to your machine.
3. Make sure Docker Desktop is installed on your machine and the docker Daemon is running.
4. Open IDE that supports devcontainers. (**VS Code Strongly Recommended. Extensions have only been validated for VsCode!!!!**)
5. When Prompted, Allow the ide to open the repo folder in a dev container.

   In VsCode, open the Command Palette (`Ctrl` + `Shift` + `P`) an type "Dev Containers: Rebuild Container" and hit enter. Once done, the repo will open in the dev container with all the dependencies installed

## Option 3: Masochism
1. clone the repo...
2. Make sure VsCode is installed
3. Make sure all the latex extension's are present on your machine.

# Usage

Once setup, compile the Repo for a test run. If the repo is in a good state, it will produce a pdf file at the root of the repo.
![image](https://github.com/user-attachments/assets/249246bb-4a35-47fb-bbf6-1ca266660fa2)

If it fails, use the logs to debug. (This template should be in a healthy state when run in a dev-container/codespace).

## Note on Package management

Your resume format may require additional packages/fonts/icons, especially if you paste snippets from examples online. Unfortunately, package management is wonky and manual. (Ughh!!!) If you get compilation errors about missing `.sym` files after using assets from new packages/fonts/icons,
1. Add the package (without the `.sym` extension) in the `packages` array of the `manifest.json`
2. Run `./setup.sh` from the root of the repo.
3. If you are back to a healthy state, commit the `manifest.json` changes to your branch.

# Potential improvements
- no more manual package mangement!!!
