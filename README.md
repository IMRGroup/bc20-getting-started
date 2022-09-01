# BC20 Getting Started
IMR sample app for getting started on Business Central 20.  

## Info
The `launch.json` is configured to run on `bc20std` on the azure server `imr001.westeurope.cloudapp.azure.com`.

User: du  
Password: du  
User: ad  
Password: ad

## Usage
- Download this package and unzip it
- Change `app.json`
  - id
  - name
  - publisher
  - version
- Change `launch.json` to run on the desired server instance
  - server
  - serverInstance
  - port
- Run `AL: clear credentials cache`
- Run `AL: package` (CTRL+SHIFT+B)
- Run `AL: publish without debugging` (CTRL+F5)

## DotNet
See comments in code


