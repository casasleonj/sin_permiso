require "sinatra"

error 403 do
 "Sin Permiso"
	end

get '/' do
if request.env["HTTP_PERMISO"] == 'soy-un-token-secreto'
    "Si lo logramos!"
else
	403
end
	end