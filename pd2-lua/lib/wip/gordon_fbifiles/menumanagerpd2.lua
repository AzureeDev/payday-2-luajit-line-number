if MenuCallbackHandler then
	-- Lines 3-5
	function MenuCallbackHandler:fbifiles_back_callback()
		return managers.menu_component:back_callback_player_stats_gui()
	end
end
