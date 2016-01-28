function on_msg_receive (msg)
      if msg.out then
          return
      end
      if (msg.to.type == 'encr_chat') then
--	The 'user-id' is the id given in telegram-cli after started manually an encrypted chat
	if (msg.from.id == 12345678) then
      	 if (string.lower(msg.text)=="who")then
		local who = io.popen("sudo w -f")
		send_msg ('!_user@12345678', who:read("*a"), ok_cb, false)
		who:close()
	 elseif (string.lower(msg.text)=="reboot")then
		send_msg ('!_user@12345678', 'Rebooting system', ok_cb, false)
		os.execute('sudo systemctl reboot')
      	 end
  	end
     end
end

  function on_our_id (id)
  end
   
  function on_secret_chat_created (peer)
  end
   
  function on_user_update (user)
  end
   
  function on_chat_update (user)
  end
   
  function on_get_difference_end ()
  end
   
  function on_binlog_replay_end ()
  end
  function ok_cb (extra, success, result)
  end
