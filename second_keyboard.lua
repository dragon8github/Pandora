-- assign logical name to macro keyboard
lmc_assign_keyboard('MACROS');


sendToAHK = function (key)
      --print('It was assigned string:    ' .. key)
      local file = io.open("C:\\Users\\lizhaohong\\Desktop\\keypressed.txt", "w") -- writing this string to a text file on disk is probably NOT the best method. Feel free to program something better!
      --Make sure to substitute the path that leads to your own "keypressed.txt" file, using the double backslashes.
    --print("we are inside the text file")
      file:write(key)
      file:flush() --"flush" means "save"
      file:close()
      lmc_send_keys('^{F12}')
end

-- define callback for whole device
lmc_set_handler('MACROS',function(button, direction)
  print('Not yet assigned: ' .. button)
  sendToAHK(button)
end)