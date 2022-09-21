# Local Network Jupyter Server on Windows

This is based on David Littlefield's [article](https://levelup.gitconnected.com/how-to-install-the-jupyter-notebook-server-on-windows-10-e8f3e9436044) from medium.
His setup was for home and external network usage.
I'm only going to be using this on my home network though so don't need to do everything there.

I'm assuming everything's installed but if not install that s**t

## Add git bash to your path

Follow the above medium post's instructions

## Notebook Configuration

Open a conda terminal

Generate the jupyter notebook config (found at `~\.jupyter\jupyter_notebook_config.py`)

```bash
jupyter notebook --generate-config
```

Create a password for your notebooks

```bash
jupyter notebook password
```

Manually edit the below two lines in the config file 
(the second uses git bash as the default terminal so you can push changes)

```python
c.NotebookApp.allow_remote_access = True

c.NotebookApp.terminado_settings = {
    'shell_command': ['C:\\Program Files\\Git\\bin\\bash.exe']
}
```

## Adjust Firewall to Allow Inbound Local Traffic

Follow the above medium post's instructions

## Microsoft Task

To automatically run the notebook server at startup create the following file at `~/.jupyter/jupbn_start.vbs`

```vbs
set object = createobject("wscript.shell") 
object.run "jupyter notebook --no-browser --ip 0.0.0.0 --port 9999 --notebook-dir C:\Users\brendanfitz\", 0
```
We're running at 0.0.0.0 so we can use our computer's IPv4 address and port 9999

Execute this task in a command prompt to run immediately or follow the instructions in the above medium post to schedule at startup

# Find your local ip address and connect

Run `ipconfig /all` in your command prompt and copy the IPv4 address

Then on your linux computer go to `http://[IPv4 Address]:9999` and you should be up and running!
