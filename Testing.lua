local serverList = game:GetService("ServerList")

function getBeginnerServer()
  for _, server in pairs(serverList:GetServers()) do
    if server.Name:match("Principiantes") then
      return server
    end
  end

  return nil
end

function joinServer(server)
  if server then
    print("Uniéndose al servidor "..server.Name)
    serverList:JoinServer(server)
  else
    print("No se encontró ningún servidor para principiantes")
  end
end

local server = getBeginnerServer()
joinServer(server)
