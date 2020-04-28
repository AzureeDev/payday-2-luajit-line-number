-- Lines 1-1440
function BlackMarketTweakData:_init_player_styles(tweak_data)
	local characters_female, characters_female_big, characters_male, characters_male_big = self:_get_character_groups()
	local characters_all = table.list_union(characters_female, characters_male, characters_female_big, characters_male_big)
	local body_replacement_standard = {
		head = false,
		armor = true,
		body = true,
		hands = true,
		vest = true
	}
	self.player_styles = {}
	self.player_style_list = {}

	-- Lines 240-245
	local function set_characters_data(player_style, characters, data)
		self.player_styles[player_style].characters = self.player_styles[player_style].characters or {}

		for _, key in ipairs(characters) do
			self.player_styles[player_style].characters[key] = data
		end
	end

	self.player_styles.none = {
		name_id = "bm_suit_none",
		desc_id = "bm_suit_none_desc",
		unlocked = true,
		texture_bundle_folder = "trd"
	}
	self.player_styles.jumpsuit = {
		name_id = "bm_suit_jumpsuit",
		desc_id = "bm_suit_jumpsuit_desc",
		texture_bundle_folder = "trd",
		global_value = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_fps_jumpsuit/trd_acc_fps_jumpsuit",
		material_variations = {}
	}
	self.player_styles.jumpsuit.material_variations.default = {
		name_id = "bm_suit_var_jumpsuit_default",
		global_value = "trd",
		desc_id = "bm_suit_var_jumpsuit_default_desc"
	}
	self.player_styles.jumpsuit.material_variations.red = {
		desc_id = "bm_suit_var_jumpsuit_red_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_jumpsuit_red",
		material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_fps_jumpsuit/trd_acc_fps_jumpsuit_red"
	}
	self.player_styles.jumpsuit.material_variations.brown = {
		desc_id = "bm_suit_var_jumpsuit_brown_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_jumpsuit_brown",
		material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_fps_jumpsuit/trd_acc_fps_jumpsuit_brown"
	}
	self.player_styles.jumpsuit.material_variations.green = {
		desc_id = "bm_suit_var_jumpsuit_green_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_jumpsuit_green",
		material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_fps_jumpsuit/trd_acc_fps_jumpsuit_green"
	}
	self.player_styles.jumpsuit.material_variations.blue = {
		desc_id = "bm_suit_var_jumpsuit_blue_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_jumpsuit_blue",
		material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_fps_jumpsuit/trd_acc_fps_jumpsuit_blue"
	}
	self.player_styles.jumpsuit.characters = {}
	local jumpsuit_characters_male = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_average/trd_acc_jumpsuit_male_average",
		material_variations = {}
	}
	jumpsuit_characters_male.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_average/trd_acc_jumpsuit_male_average_red"
	}
	jumpsuit_characters_male.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_average/trd_acc_jumpsuit_male_average_brown"
	}
	jumpsuit_characters_male.material_variations.green = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_average/trd_acc_jumpsuit_male_average_green"
	}
	jumpsuit_characters_male.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_average/trd_acc_jumpsuit_male_average_blue"
	}

	set_characters_data("jumpsuit", characters_male, jumpsuit_characters_male)

	local jumpsuit_characters_male_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_big/trd_acc_jumpsuit_male_big",
		material_variations = {}
	}
	jumpsuit_characters_male_big.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_big/trd_acc_jumpsuit_male_big_red"
	}
	jumpsuit_characters_male_big.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_big/trd_acc_jumpsuit_male_big_brown"
	}
	jumpsuit_characters_male_big.material_variations.green = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_big/trd_acc_jumpsuit_male_big_green"
	}
	jumpsuit_characters_male_big.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_male_big/trd_acc_jumpsuit_male_big_blue"
	}

	set_characters_data("jumpsuit", characters_male_big, jumpsuit_characters_male_big)

	local jumpsuit_characters_female = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_average/trd_acc_jumpsuit_female_average",
		material_variations = {}
	}
	jumpsuit_characters_female.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_average/trd_acc_jumpsuit_female_average_red"
	}
	jumpsuit_characters_female.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_average/trd_acc_jumpsuit_female_average_brown"
	}
	jumpsuit_characters_female.material_variations.green = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_average/trd_acc_jumpsuit_female_average_green"
	}
	jumpsuit_characters_female.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_average/trd_acc_jumpsuit_female_average_blue"
	}

	set_characters_data("jumpsuit", characters_female, jumpsuit_characters_female)

	local jumpsuit_characters_female_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_big/trd_acc_jumpsuit_female_big",
		material_variations = {}
	}
	jumpsuit_characters_female_big.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_big/trd_acc_jumpsuit_female_big_red"
	}
	jumpsuit_characters_female_big.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_big/trd_acc_jumpsuit_female_big_brown"
	}
	jumpsuit_characters_female_big.material_variations.green = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_big/trd_acc_jumpsuit_female_big_green"
	}
	jumpsuit_characters_female_big.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_jumpsuits/trd_acc_jumpsuit_female_big/trd_acc_jumpsuit_female_big_blue"
	}

	set_characters_data("jumpsuit", characters_female_big, jumpsuit_characters_female_big)

	self.player_styles.clown = {
		name_id = "bm_suit_clown",
		desc_id = "bm_suit_clown_desc",
		texture_bundle_folder = "trd",
		global_value = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_fps_clown/trd_acc_fps_clown",
		material_variations = {}
	}
	self.player_styles.clown.material_variations.default = {
		name_id = "bm_suit_var_clown_default",
		global_value = "trd",
		desc_id = "bm_suit_var_clown_default_desc"
	}
	self.player_styles.clown.material_variations.black_and_white = {
		desc_id = "bm_suit_var_clown_black_and_white_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_clown_black_and_white",
		material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_fps_clown/trd_acc_fps_clown_black_and_white"
	}
	self.player_styles.clown.material_variations.black = {
		desc_id = "bm_suit_var_clown_black_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_clown_black",
		material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_fps_clown/trd_acc_fps_clown_black"
	}
	self.player_styles.clown.material_variations.red = {
		desc_id = "bm_suit_var_clown_red_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_clown_red",
		material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_fps_clown/trd_acc_fps_clown_red"
	}
	self.player_styles.clown.material_variations.white = {
		desc_id = "bm_suit_var_clown_white_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_clown_white",
		material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_fps_clown/trd_acc_fps_clown_white"
	}
	self.player_styles.clown.characters = {}
	local clown_characters_male = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_average/trd_acc_clown_male_average",
		material_variations = {}
	}
	clown_characters_male.material_variations.black_and_white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_average/trd_acc_clown_male_average_black_and_white"
	}
	clown_characters_male.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_average/trd_acc_clown_male_average_black"
	}
	clown_characters_male.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_average/trd_acc_clown_male_average_red"
	}
	clown_characters_male.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_average/trd_acc_clown_male_average_white"
	}

	set_characters_data("clown", characters_male, clown_characters_male)

	local clown_characters_male_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_big/trd_acc_clown_male_big",
		material_variations = {}
	}
	clown_characters_male_big.material_variations.black_and_white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_big/trd_acc_clown_male_big_black_and_white"
	}
	clown_characters_male_big.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_big/trd_acc_clown_male_big_black"
	}
	clown_characters_male_big.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_big/trd_acc_clown_male_big_red"
	}
	clown_characters_male_big.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_big/trd_acc_clown_male_big_white"
	}

	set_characters_data("clown", characters_male_big, clown_characters_male_big)

	local clown_characters_female = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_average/trd_acc_clown_female_average",
		material_variations = {}
	}
	clown_characters_female.material_variations.black_and_white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_average/trd_acc_clown_female_average_black_and_white"
	}
	clown_characters_female.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_average/trd_acc_clown_female_average_black"
	}
	clown_characters_female.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_average/trd_acc_clown_female_average_red"
	}
	clown_characters_female.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_average/trd_acc_clown_female_average_white"
	}

	set_characters_data("clown", characters_female, clown_characters_female)

	local clown_characters_female_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_big/trd_acc_clown_female_big",
		material_variations = {}
	}
	clown_characters_female_big.material_variations.black_and_white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_big/trd_acc_clown_female_big_black_and_white"
	}
	clown_characters_female_big.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_big/trd_acc_clown_female_big_black"
	}
	clown_characters_female_big.material_variations.red = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_big/trd_acc_clown_female_big_red"
	}
	clown_characters_female_big.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_big/trd_acc_clown_female_big_white"
	}

	set_characters_data("clown", characters_female_big, clown_characters_female_big)

	self.player_styles.jail_pd2_clan = {
		name_id = "bm_suit_jail_pd2_clan",
		desc_id = "bm_suit_jail_pd2_clan_desc",
		texture_bundle_folder = "trd",
		global_value = "pd2_clan",
		body_replacement = self.player_styles.clown.body_replacement,
		third_body_replacement = self.player_styles.clown.third_body_replacement,
		unit = self.player_styles.clown.unit,
		material_variations = {}
	}
	self.player_styles.jail_pd2_clan.material_variations.default = {
		material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_fps_clown/trd_acc_fps_clown_jail"
	}
	self.player_styles.jail_pd2_clan.characters = {}
	local jail_characters_male = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_average/trd_acc_clown_male_average",
		material_variations = {
			default = {
				third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_average/trd_acc_clown_male_average_jail"
			}
		}
	}

	set_characters_data("jail_pd2_clan", characters_male, jail_characters_male)

	local jail_characters_male_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_big/trd_acc_clown_male_big",
		material_variations = {
			default = {
				third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_male_big/trd_acc_clown_male_big_jail"
			}
		}
	}

	set_characters_data("jail_pd2_clan", characters_male_big, jail_characters_male_big)

	local jail_characters_female = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_average/trd_acc_clown_female_average",
		material_variations = {
			default = {
				third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_average/trd_acc_clown_female_average_jail"
			}
		}
	}

	set_characters_data("jail_pd2_clan", characters_female, jail_characters_female)

	local jail_characters_female_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_big/trd_acc_clown_female_big",
		material_variations = {
			default = {
				third_material = "units/pd2_dlc_trd/characters/trd_acc_clown/trd_acc_clown_female_big/trd_acc_clown_female_big_jail"
			}
		}
	}

	set_characters_data("jail_pd2_clan", characters_female_big, jail_characters_female_big)

	self.player_styles.miami = {
		name_id = "bm_suit_miami",
		desc_id = "bm_suit_miami_desc",
		texture_bundle_folder = "trd",
		global_value = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_fps_miami/trd_acc_fps_miami",
		material_variations = {}
	}
	self.player_styles.miami.material_variations.default = {
		name_id = "bm_suit_var_miami_default",
		global_value = "trd",
		desc_id = "bm_suit_var_miami_default_desc"
	}
	self.player_styles.miami.material_variations.grey = {
		desc_id = "bm_suit_var_miami_grey_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_miami_grey",
		material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_fps_miami/trd_acc_fps_miami_grey"
	}
	self.player_styles.miami.material_variations.pink = {
		desc_id = "bm_suit_var_miami_pink_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_miami_pink",
		material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_fps_miami/trd_acc_fps_miami_pink"
	}
	self.player_styles.miami.material_variations.black = {
		desc_id = "bm_suit_var_miami_black_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_miami_black",
		material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_fps_miami/trd_acc_fps_miami_black"
	}
	self.player_styles.miami.material_variations.white = {
		desc_id = "bm_suit_var_miami_white_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_miami_white",
		material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_fps_miami/trd_acc_fps_miami_white"
	}
	self.player_styles.miami.characters = {}
	local miami_characters_male = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_average/trd_acc_miami_male_average",
		material_variations = {}
	}
	miami_characters_male.material_variations.grey = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_average/trd_acc_miami_male_average_grey"
	}
	miami_characters_male.material_variations.pink = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_average/trd_acc_miami_male_average_pink"
	}
	miami_characters_male.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_average/trd_acc_miami_male_average_black"
	}
	miami_characters_male.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_average/trd_acc_miami_male_average_white"
	}

	set_characters_data("miami", characters_male, miami_characters_male)

	local miami_characters_male_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big",
		material_variations = {}
	}
	miami_characters_male_big.material_variations.grey = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_grey"
	}
	miami_characters_male_big.material_variations.pink = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_pink"
	}
	miami_characters_male_big.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_black"
	}
	miami_characters_male_big.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_white"
	}

	set_characters_data("miami", characters_male_big, miami_characters_male_big)

	local miami_characters_female = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_average/trd_acc_miami_female_average",
		material_variations = {}
	}
	miami_characters_female.material_variations.grey = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_average/trd_acc_miami_female_average_grey"
	}
	miami_characters_female.material_variations.pink = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_average/trd_acc_miami_female_average_pink"
	}
	miami_characters_female.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_average/trd_acc_miami_female_average_black"
	}
	miami_characters_female.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_average/trd_acc_miami_female_average_white"
	}

	set_characters_data("miami", characters_female, miami_characters_female)

	local miami_characters_female_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_big/trd_acc_miami_female_big",
		material_variations = {}
	}
	miami_characters_female_big.material_variations.grey = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_big/trd_acc_miami_female_big_grey"
	}
	miami_characters_female_big.material_variations.pink = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_big/trd_acc_miami_female_big_pink"
	}
	miami_characters_female_big.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_big/trd_acc_miami_female_big_black"
	}
	miami_characters_female_big.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_female_big/trd_acc_miami_female_big_white"
	}

	set_characters_data("miami", characters_female_big, miami_characters_female_big)

	local miami_characters_ecp_male = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big",
		material_variations = {}
	}
	miami_characters_ecp_male.material_variations.grey = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_grey"
	}
	miami_characters_ecp_male.material_variations.pink = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_pink"
	}
	miami_characters_ecp_male.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_black"
	}
	miami_characters_ecp_male.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_miami/trd_acc_miami_male_big/trd_acc_miami_male_big_white"
	}
	self.player_styles.miami.characters.ecp_male = miami_characters_ecp_male
	self.player_styles.peacoat = {
		name_id = "bm_suit_peacoat",
		desc_id = "bm_suit_peacoat_desc",
		texture_bundle_folder = "trd",
		global_value = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_fps_peacoat/trd_acc_fps_peacoat",
		material_variations = {}
	}
	self.player_styles.peacoat.material_variations.default = {
		name_id = "bm_suit_var_peacoat_default",
		global_value = "trd",
		desc_id = "bm_suit_var_peacoat_default_desc"
	}
	self.player_styles.peacoat.material_variations.brown = {
		desc_id = "bm_suit_var_peacoat_brown_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_peacoat_brown",
		material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_fps_peacoat/trd_acc_fps_peacoat_brown"
	}
	self.player_styles.peacoat.material_variations.black = {
		desc_id = "bm_suit_var_peacoat_black_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_peacoat_black",
		material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_fps_peacoat/trd_acc_fps_peacoat_black"
	}
	self.player_styles.peacoat.material_variations.blue = {
		desc_id = "bm_suit_var_peacoat_blue_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_peacoat_blue",
		material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_fps_peacoat/trd_acc_fps_peacoat_blue"
	}
	self.player_styles.peacoat.material_variations.white = {
		desc_id = "bm_suit_var_peacoat_white_desc",
		global_value = "trd",
		auto_aquire = true,
		name_id = "bm_suit_var_peacoat_white",
		material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_fps_peacoat/trd_acc_fps_peacoat_white"
	}
	self.player_styles.peacoat.characters = {}
	local peacoat_characters_male = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_average/trd_acc_peacoat_male_average",
		material_variations = {}
	}
	peacoat_characters_male.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_average/trd_acc_peacoat_male_average_brown"
	}
	peacoat_characters_male.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_average/trd_acc_peacoat_male_average_black"
	}
	peacoat_characters_male.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_average/trd_acc_peacoat_male_average_blue"
	}
	peacoat_characters_male.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_average/trd_acc_peacoat_male_average_white"
	}

	set_characters_data("peacoat", characters_male, peacoat_characters_male)

	local peacoat_characters_male_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big",
		material_variations = {}
	}
	peacoat_characters_male_big.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_brown"
	}
	peacoat_characters_male_big.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_black"
	}
	peacoat_characters_male_big.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_blue"
	}
	peacoat_characters_male_big.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_white"
	}

	set_characters_data("peacoat", characters_male_big, peacoat_characters_male_big)

	local peacoat_characters_female = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_average/trd_acc_peacoat_female_average",
		material_variations = {}
	}
	peacoat_characters_female.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_average/trd_acc_peacoat_female_average_brown"
	}
	peacoat_characters_female.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_average/trd_acc_peacoat_female_average_black"
	}
	peacoat_characters_female.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_average/trd_acc_peacoat_female_average_blue"
	}
	peacoat_characters_female.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_average/trd_acc_peacoat_female_average_white"
	}

	set_characters_data("peacoat", characters_female, peacoat_characters_female)

	local peacoat_characters_female_big = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_big/trd_acc_peacoat_female_big",
		material_variations = {}
	}
	peacoat_characters_female_big.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_big/trd_acc_peacoat_female_big_brown"
	}
	peacoat_characters_female_big.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_big/trd_acc_peacoat_female_big_black"
	}
	peacoat_characters_female_big.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_big/trd_acc_peacoat_female_big_blue"
	}
	peacoat_characters_female_big.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_female_big/trd_acc_peacoat_female_big_white"
	}

	set_characters_data("peacoat", characters_female_big, peacoat_characters_female_big)

	local peacoat_characters_ecp_male = {
		third_unit = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big",
		material_variations = {}
	}
	peacoat_characters_ecp_male.material_variations.brown = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_brown"
	}
	peacoat_characters_ecp_male.material_variations.black = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_black"
	}
	peacoat_characters_ecp_male.material_variations.blue = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_blue"
	}
	peacoat_characters_ecp_male.material_variations.white = {
		third_material = "units/pd2_dlc_trd/characters/trd_acc_peacoat/trd_acc_peacoat_male_big/trd_acc_peacoat_male_big_white"
	}
	self.player_styles.peacoat.characters.ecp_male = peacoat_characters_ecp_male
	self.player_styles.sneak_suit = {
		name_id = "bm_suit_sneak_suit",
		desc_id = "bm_suit_sneak_suit_desc",
		locks = {
			achievement = "dah_1"
		},
		texture_bundle_folder = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_dah/characters/dah_acc_fps_stealth_suit/dah_acc_fps_stealth_suit",
		characters = {}
	}

	set_characters_data("sneak_suit", characters_male, {
		third_unit = "units/pd2_dlc_dah/characters/dah_acc_stealth_suit/dah_acc_stealth_suit"
	})
	set_characters_data("sneak_suit", characters_male_big, {
		third_unit = "units/pd2_dlc_dah/characters/dah_acc_stealth_suit_male_big/dah_acc_stealth_suit_male_big"
	})
	set_characters_data("sneak_suit", characters_female, {
		third_unit = "units/pd2_dlc_dah/characters/dah_acc_stealth_suit_female_thin/dah_acc_stealth_suit_female_thin"
	})
	set_characters_data("sneak_suit", characters_female_big, {
		third_unit = "units/pd2_dlc_dah/characters/dah_acc_stealth_suit_female_big/dah_acc_stealth_suit_female_big"
	})

	self.player_styles.scrub = {
		name_id = "bm_suit_scrub",
		desc_id = "bm_suit_scrub_desc",
		locks = {
			achievement = "nmh_1"
		},
		texture_bundle_folder = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_nmh/characters/nmh_acc_fps_scrubs/nmh_acc_fps_scrubs",
		characters = {}
	}
	self.player_styles.scrub.characters.dallas = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male/nmh_acc_scrubs_male"
	}
	self.player_styles.scrub.characters.wolf = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_green/nmh_acc_scrubs_male_green"
	}
	self.player_styles.scrub.characters.hoxton = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_darkblue/nmh_acc_scrubs_male_darkblue"
	}
	self.player_styles.scrub.characters.chains = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_purple/nmh_acc_scrubs_male_purple"
	}
	self.player_styles.scrub.characters.jowi = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_green/nmh_acc_scrubs_male_green"
	}
	self.player_styles.scrub.characters.old_hoxton = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male/nmh_acc_scrubs_male"
	}
	self.player_styles.scrub.characters.dragan = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_purple/nmh_acc_scrubs_male_purple"
	}
	self.player_styles.scrub.characters.jacket = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_purple/nmh_acc_scrubs_male_purple"
	}
	self.player_styles.scrub.characters.sokol = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male/nmh_acc_scrubs_male"
	}
	self.player_styles.scrub.characters.dragon = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_darkblue/nmh_acc_scrubs_male_darkblue"
	}
	self.player_styles.scrub.characters.bodhi = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_green/nmh_acc_scrubs_male_green"
	}
	self.player_styles.scrub.characters.female_1 = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_female_darkblue/nmh_acc_scrubs_female_darkblue"
	}
	self.player_styles.scrub.characters.bonnie = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_female_big/nmh_acc_scrubs_female_big"
	}
	self.player_styles.scrub.characters.jimmy = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_darkblue/nmh_acc_scrubs_male_darkblue"
	}
	self.player_styles.scrub.characters.sydney = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_female_sydney/nmh_acc_scrubs_female_sydney"
	}
	self.player_styles.scrub.characters.wild = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_big/nmh_acc_scrubs_male_big"
	}
	self.player_styles.scrub.characters.chico = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_darkblue/nmh_acc_scrubs_male_darkblue"
	}
	self.player_styles.scrub.characters.max = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_big/nmh_acc_scrubs_male_big"
	}
	self.player_styles.scrub.characters.joy = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_female/nmh_acc_scrubs_female"
	}
	self.player_styles.scrub.characters.myh = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_darkblue/nmh_acc_scrubs_male_darkblue"
	}
	self.player_styles.scrub.characters.ecp_male = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_male_ethan/nmh_acc_scrubs_male_ethan"
	}
	self.player_styles.scrub.characters.ecp_female = {
		third_unit = "units/pd2_dlc_nmh/characters/nmh_acc_scrubs_female_lightblue/nmh_acc_scrubs_female_lightblue"
	}
	self.player_styles.raincoat = {
		name_id = "bm_suit_raincoat",
		desc_id = "bm_suit_raincoat_desc",
		locks = {
			achievement = "glace_1"
		},
		texture_bundle_folder = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_glace/characters/glc_acc_fps_raincoat/glc_acc_fps_raincoat",
		characters = {}
	}

	set_characters_data("raincoat", characters_male, {
		third_unit = "units/pd2_dlc_glace/characters/glc_acc_raincoat_male/glc_acc_raincoat_male"
	})
	set_characters_data("raincoat", characters_male_big, {
		third_unit = "units/pd2_dlc_glace/characters/glc_acc_raincoat_male/glc_acc_raincoat_male"
	})
	set_characters_data("raincoat", characters_female, {
		third_unit = "units/pd2_dlc_glace/characters/glc_acc_raincoat_female/glc_acc_raincoat_female"
	})

	self.player_styles.raincoat.characters.bonnie = {
		third_unit = "units/pd2_dlc_glace/characters/glc_acc_raincoat_bonnie/glc_acc_raincoat_bonnie"
	}
	self.player_styles.raincoat.characters.ecp_male = {
		third_unit = "units/pd2_dlc_glace/characters/glc_acc_raincoat_ethan/glc_acc_raincoat_ethan"
	}
	self.player_styles.murky_suit = {
		name_id = "bm_suit_murky_suit",
		desc_id = "bm_suit_murky_suit_desc",
		locks = {
			achievement = "mex_9"
		},
		texture_bundle_folder = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_vit/characters/vit_acc_fps_murky_suit/vit_acc_fps_murky_suit",
		characters = {}
	}

	set_characters_data("murky_suit", characters_male, {
		third_unit = "units/pd2_dlc_vit/characters/vit_acc_murky_suit/vit_acc_murky_suit"
	})
	set_characters_data("murky_suit", characters_male_big, {
		third_unit = "units/pd2_dlc_vit/characters/vit_acc_murky_suit_male_big/vit_acc_murky_suit_male_big"
	})
	set_characters_data("murky_suit", characters_female, {
		third_unit = "units/pd2_dlc_vit/characters/vit_acc_murky_suit_female_thin/vit_acc_murky_suit_female_thin"
	})
	set_characters_data("murky_suit", characters_female_big, {
		third_unit = "units/pd2_dlc_vit/characters/vit_acc_murky_suit_female_big/vit_acc_murky_suit_female_big"
	})

	self.player_styles.tux = {
		name_id = "bm_suit_tux",
		desc_id = "bm_suit_tux_desc",
		locks = {
			achievement = "sah_1"
		},
		texture_bundle_folder = "trd",
		body_replacement = body_replacement_standard
	}
	self.player_styles.tux.third_body_replacement = self.player_styles.tux.body_replacement
	self.player_styles.tux.unit = "units/pd2_dlc_sah/characters/fps_criminals_female_tux/sah_acc_fps_tux"
	self.player_styles.tux.characters = {
		dallas = {
			sequence = "set_dallas",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_white_1/npc_acc_criminals_white_tux"
		},
		wolf = {
			sequence = "set_wolf",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_1/npc_acc_criminals_tux"
		},
		hoxton = {
			sequence = "set_houston",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_1/npc_acc_criminals_tux"
		},
		chains = {
			sequence = "set_chains",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_chains_tux/npc_acc_criminal_chains_tux"
		},
		jowi = {
			sequence = "set_john_wick",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_john_wick_tux/npc_acc_criminal_john_wick_tux"
		},
		old_hoxton = {
			sequence = "set_hoxton",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_1/npc_acc_criminals_tux"
		},
		dragan = {
			sequence = "set_dragan",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_1/npc_acc_criminals_tux"
		},
		jacket = {
			sequence = "set_jacket",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_jacket_tux/npc_acc_criminal_jacket_tux"
		},
		sokol = {
			sequence = "set_sokol",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_1/npc_acc_criminals_tux"
		},
		dragon = {
			sequence = "set_jiro",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_white_1/npc_acc_criminals_white_tux"
		},
		bodhi = {
			sequence = "set_bodhi",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_bodhi_tux/npc_acc_criminal_bodhi_tux"
		},
		female_1 = {
			sequence = "set_clover",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_clover_tux/npc_acc_criminal_clover_tux"
		},
		bonnie = {
			sequence = "set_bonnie",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_bonnie_tux/npc_acc_criminal_bonnie_tux"
		},
		jimmy = {
			sequence = "set_jimmy",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_suit_1/npc_acc_criminals_tux"
		},
		sydney = {
			sequence = "set_sydney",
			third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_sydney_tux/npc_acc_criminal_sydney_tux"
		}
	}
	local tux_wild_third_body_replacement = {
		head = false,
		armor = true,
		body = true,
		hands = false,
		vest = true
	}
	self.player_styles.tux.characters.wild = {
		third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_rust_tux/npc_acc_criminal_rust_tux",
		sequence = "set_rust",
		third_body_replacement = tux_wild_third_body_replacement
	}
	self.player_styles.tux.characters.chico = {
		sequence = "set_scarface",
		third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_scarface_tux/npc_acc_criminal_scarface_tux"
	}
	self.player_styles.tux.characters.max = {
		sequence = "set_sangres",
		third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_max_tux/npc_acc_criminal_max_tux"
	}
	self.player_styles.tux.characters.joy = {
		sequence = "set_joy",
		third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_joy_tux/npc_acc_criminal_joy_tux"
	}
	self.player_styles.tux.characters.myh = {
		sequence = "set_duke",
		third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_myh_tux/npc_acc_criminal_myh_tux"
	}
	self.player_styles.tux.characters.ecp_male = {
		sequence = "set_ethan",
		third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_ethan_tux/npc_acc_criminal_ethan_tux"
	}
	self.player_styles.tux.characters.ecp_female = {
		sequence = "set_hila",
		third_unit = "units/pd2_dlc_sah/characters/npc_acc_criminal_hila_tux/npc_acc_criminal_hila_tux"
	}
	self.player_styles.winter_suit = {
		name_id = "bm_suit_winter_suit",
		desc_id = "bm_suit_winter_suit_desc",
		locks = {
			achievement = "wwh_1"
		},
		texture_bundle_folder = "trd",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_wwh/characters/wwh_acc_fps_stealth_suit/wwh_acc_fps_stealth_suit",
		characters = {}
	}

	set_characters_data("winter_suit", characters_male, {
		third_unit = "units/pd2_dlc_wwh/characters/wwh_acc_stealth_suit/wwh_acc_stealth_suit"
	})
	set_characters_data("winter_suit", characters_male_big, {
		third_unit = "units/pd2_dlc_wwh/characters/wwh_acc_stealth_suit_male_big/wwh_acc_stealth_suit_male_big"
	})
	set_characters_data("winter_suit", characters_female, {
		third_unit = "units/pd2_dlc_wwh/characters/wwh_acc_stealth_suit_female_thin/wwh_acc_stealth_suit_female_thin"
	})
	set_characters_data("winter_suit", characters_female_big, {
		third_unit = "units/pd2_dlc_wwh/characters/wwh_acc_stealth_suit_female_big/wwh_acc_stealth_suit_female_big"
	})

	self.player_styles.winter_suit.characters.ecp_male = {
		third_unit = "units/pd2_dlc_wwh/characters/wwh_acc_stealth_suit_male_fat/wwh_acc_stealth_suit_male_fat"
	}
	self.player_styles.poolrepair = {
		name_id = "bm_suit_poolrepair",
		desc_id = "bm_suit_poolrepair_desc",
		locks = {
			achievement = "trk_cou_0"
		},
		texture_bundle_folder = "xmn",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_xmn/characters/xmn_acc_poolrepair/xmn_acc_fps_poolrepair/xmn_acc_fps_poolrepair",
		characters = {}
	}

	set_characters_data("poolrepair", characters_male, {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_poolrepair/xmn_acc_poolrepair_male_average/xmn_acc_poolrepair_male_average"
	})
	set_characters_data("poolrepair", characters_male_big, {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_poolrepair/xmn_acc_poolrepair_male_big/xmn_acc_poolrepair_male_big"
	})
	set_characters_data("poolrepair", characters_female, {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_poolrepair/xmn_acc_poolrepair_female_average/xmn_acc_poolrepair_female_average"
	})
	set_characters_data("poolrepair", characters_female_big, {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_poolrepair/xmn_acc_poolrepair_female_big/xmn_acc_poolrepair_female_big"
	})

	self.player_styles.poolrepair.characters.ecp_male = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_poolrepair/xmn_acc_poolrepair_male_ethan/xmn_acc_poolrepair_male_ethan"
	}
	self.player_styles.xmas_tuxedo = {
		name_id = "bm_suit_xmas_tuxedo",
		desc_id = "bm_suit_xmas_tuxedo_desc",
		texture_bundle_folder = "xmn",
		global_value = "xmn",
		body_replacement = body_replacement_standard
	}
	self.player_styles.xmas_tuxedo.third_body_replacement = self.player_styles.xmas_tuxedo.body_replacement
	self.player_styles.xmas_tuxedo.unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/fps_criminals_xmas_tuxedo/fps_criminals_xmas_tuxedo"
	self.player_styles.xmas_tuxedo.material_variations = {
		default = {
			name_id = "bm_suit_var_xmas_tuxedo_default",
			global_value = "xmn",
			desc_id = "bm_suit_var_xmas_tuxedo_default_desc"
		},
		black = {
			desc_id = "bm_suit_var_xmas_tuxedo_black_desc",
			global_value = "xmn",
			auto_aquire = true,
			name_id = "bm_suit_var_xmas_tuxedo_black",
			material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/fps_criminals_xmas_tuxedo/fps_criminals_xmas_tuxedo_black"
		},
		blue = {
			desc_id = "bm_suit_var_xmas_tuxedo_blue_desc",
			global_value = "xmn",
			auto_aquire = true,
			name_id = "bm_suit_var_xmas_tuxedo_blue",
			material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/fps_criminals_xmas_tuxedo/fps_criminals_xmas_tuxedo_blue"
		},
		green = {
			desc_id = "bm_suit_var_xmas_tuxedo_green_desc",
			global_value = "xmn",
			auto_aquire = true,
			name_id = "bm_suit_var_xmas_tuxedo_green",
			material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/fps_criminals_xmas_tuxedo/fps_criminals_xmas_tuxedo_green"
		}
	}
	self.player_styles.xmas_tuxedo.characters = {}
	local xmas_tuxedo_wolf = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit",
		sequence = "set_wolf",
		material_variations = {}
	}
	xmas_tuxedo_wolf.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_black"
	}
	xmas_tuxedo_wolf.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_blue"
	}
	xmas_tuxedo_wolf.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_green"
	}
	self.player_styles.xmas_tuxedo.characters.wolf = xmas_tuxedo_wolf
	local xmas_tuxedo_hoxton = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit",
		sequence = "set_houston",
		material_variations = {}
	}
	xmas_tuxedo_hoxton.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_black"
	}
	xmas_tuxedo_hoxton.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_blue"
	}
	xmas_tuxedo_hoxton.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_green"
	}
	self.player_styles.xmas_tuxedo.characters.hoxton = xmas_tuxedo_hoxton
	local xmas_tuxedo_old_hoxton = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit",
		sequence = "set_hoxton",
		material_variations = {}
	}
	xmas_tuxedo_old_hoxton.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_black"
	}
	xmas_tuxedo_old_hoxton.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_blue"
	}
	xmas_tuxedo_old_hoxton.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_green"
	}
	self.player_styles.xmas_tuxedo.characters.old_hoxton = xmas_tuxedo_old_hoxton
	local xmas_tuxedo_chains = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_chains/npc_acc_xmas_tuxedo_chains",
		sequence = "set_chains",
		material_variations = {}
	}
	xmas_tuxedo_chains.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_chains/npc_acc_xmas_tuxedo_chains_black"
	}
	xmas_tuxedo_chains.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_chains/npc_acc_xmas_tuxedo_chains_blue"
	}
	xmas_tuxedo_chains.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_chains/npc_acc_xmas_tuxedo_chains_green"
	}
	self.player_styles.xmas_tuxedo.characters.chains = xmas_tuxedo_chains
	local xmas_tuxedo_jowi = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_john_wick/npc_acc_xmas_tuxedo_john_wick",
		sequence = "set_john_wick",
		material_variations = {}
	}
	xmas_tuxedo_jowi.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_john_wick/npc_acc_xmas_tuxedo_john_wick_black"
	}
	xmas_tuxedo_jowi.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_john_wick/npc_acc_xmas_tuxedo_john_wick_blue"
	}
	xmas_tuxedo_jowi.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_john_wick/npc_acc_xmas_tuxedo_john_wick_green"
	}
	self.player_styles.xmas_tuxedo.characters.jowi = xmas_tuxedo_jowi
	local xmas_tuxedo_female_1 = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_clover/npc_acc_xmas_tuxedo_clover",
		sequence = "set_clover",
		material_variations = {}
	}
	xmas_tuxedo_female_1.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_clover/npc_acc_xmas_tuxedo_clover_black"
	}
	xmas_tuxedo_female_1.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_clover/npc_acc_xmas_tuxedo_clover_blue"
	}
	xmas_tuxedo_female_1.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_clover/npc_acc_xmas_tuxedo_clover_green"
	}
	self.player_styles.xmas_tuxedo.characters.female_1 = xmas_tuxedo_female_1
	local xmas_tuxedo_sydney = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sydney/npc_acc_xmas_tuxedo_sydney",
		sequence = "set_sydney",
		material_variations = {}
	}
	xmas_tuxedo_sydney.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sydney/npc_acc_xmas_tuxedo_sydney_black"
	}
	xmas_tuxedo_sydney.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sydney/npc_acc_xmas_tuxedo_sydney_blue"
	}
	xmas_tuxedo_sydney.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sydney/npc_acc_xmas_tuxedo_sydney_green"
	}
	self.player_styles.xmas_tuxedo.characters.sydney = xmas_tuxedo_sydney
	local xmas_tuxedo_bodhi = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bodhi/npc_acc_xmas_tuxedo_bodhi",
		sequence = "set_bodhi",
		material_variations = {}
	}
	xmas_tuxedo_bodhi.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bodhi/npc_acc_xmas_tuxedo_bodhi_black"
	}
	xmas_tuxedo_bodhi.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bodhi/npc_acc_xmas_tuxedo_bodhi_blue"
	}
	xmas_tuxedo_bodhi.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bodhi/npc_acc_xmas_tuxedo_bodhi_green"
	}
	self.player_styles.xmas_tuxedo.characters.bodhi = xmas_tuxedo_bodhi
	local xmas_tuxedo_max = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_max/npc_acc_xmas_tuxedo_max",
		sequence = "set_sangres",
		material_variations = {}
	}
	xmas_tuxedo_max.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_max/npc_acc_xmas_tuxedo_max_black"
	}
	xmas_tuxedo_max.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_max/npc_acc_xmas_tuxedo_max_blue"
	}
	xmas_tuxedo_max.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_max/npc_acc_xmas_tuxedo_max_green"
	}
	self.player_styles.xmas_tuxedo.characters.max = xmas_tuxedo_max
	local xmas_tuxedo_bonnie = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bonnie/npc_acc_xmas_tuxedo_bonnie",
		sequence = "set_bonnie",
		material_variations = {}
	}
	xmas_tuxedo_bonnie.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bonnie/npc_acc_xmas_tuxedo_bonnie_black"
	}
	xmas_tuxedo_bonnie.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bonnie/npc_acc_xmas_tuxedo_bonnie_blue"
	}
	xmas_tuxedo_bonnie.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_bonnie/npc_acc_xmas_tuxedo_bonnie_green"
	}
	self.player_styles.xmas_tuxedo.characters.bonnie = xmas_tuxedo_bonnie
	local xmas_tuxedo_dragan = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragan/npc_acc_xmas_tuxedo_dragan",
		sequence = "set_dragan",
		material_variations = {}
	}
	xmas_tuxedo_dragan.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragan/npc_acc_xmas_tuxedo_dragan_black"
	}
	xmas_tuxedo_dragan.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragan/npc_acc_xmas_tuxedo_dragan_blue"
	}
	xmas_tuxedo_dragan.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragan/npc_acc_xmas_tuxedo_dragan_green"
	}
	self.player_styles.xmas_tuxedo.characters.dragan = xmas_tuxedo_dragan
	local xmas_tuxedo_sokol = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sokol/npc_acc_xmas_tuxedo_sokol",
		sequence = "set_sokol",
		material_variations = {}
	}
	xmas_tuxedo_sokol.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sokol/npc_acc_xmas_tuxedo_sokol_black"
	}
	xmas_tuxedo_sokol.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sokol/npc_acc_xmas_tuxedo_sokol_blue"
	}
	xmas_tuxedo_sokol.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_sokol/npc_acc_xmas_tuxedo_sokol_green"
	}
	self.player_styles.xmas_tuxedo.characters.sokol = xmas_tuxedo_sokol
	local xmas_tuxedo_dragon = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragon/npc_acc_xmas_tuxedo_dragon",
		sequence = "set_jiro",
		material_variations = {}
	}
	xmas_tuxedo_dragon.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragon/npc_acc_xmas_tuxedo_dragon_black"
	}
	xmas_tuxedo_dragon.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragon/npc_acc_xmas_tuxedo_dragon_blue"
	}
	xmas_tuxedo_dragon.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_dragon/npc_acc_xmas_tuxedo_dragon_green"
	}
	self.player_styles.xmas_tuxedo.characters.dragon = xmas_tuxedo_dragon
	local xmas_tuxedo_myh = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_myh/npc_acc_xmas_tuxedo_myh",
		sequence = "set_duke",
		material_variations = {}
	}
	xmas_tuxedo_myh.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_myh/npc_acc_xmas_tuxedo_myh_black"
	}
	xmas_tuxedo_myh.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_myh/npc_acc_xmas_tuxedo_myh_blue"
	}
	xmas_tuxedo_myh.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_myh/npc_acc_xmas_tuxedo_myh_green"
	}
	self.player_styles.xmas_tuxedo.characters.myh = xmas_tuxedo_myh
	local xmas_tuxedo_jacket = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jacket/npc_acc_xmas_tuxedo_jacket",
		sequence = "set_jacket",
		material_variations = {}
	}
	xmas_tuxedo_jacket.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jacket/npc_acc_xmas_tuxedo_jacket_black"
	}
	xmas_tuxedo_jacket.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jacket/npc_acc_xmas_tuxedo_jacket_blue"
	}
	xmas_tuxedo_jacket.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jacket/npc_acc_xmas_tuxedo_jacket_green"
	}
	self.player_styles.xmas_tuxedo.characters.jacket = xmas_tuxedo_jacket
	local xmas_tuxedo_jimmy = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jimmy/npc_acc_xmas_tuxedo_jimmy",
		sequence = "set_jimmy",
		material_variations = {}
	}
	xmas_tuxedo_jimmy.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jimmy/npc_acc_xmas_tuxedo_jimmy_black"
	}
	xmas_tuxedo_jimmy.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jimmy/npc_acc_xmas_tuxedo_jimmy_blue"
	}
	xmas_tuxedo_jimmy.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_jimmy/npc_acc_xmas_tuxedo_jimmy_green"
	}
	self.player_styles.xmas_tuxedo.characters.jimmy = xmas_tuxedo_jimmy
	local xmas_tuxedo_wild_third_body_replacement = {
		head = false,
		armor = true,
		body = true,
		hands = false,
		vest = true
	}
	local xmas_tuxedo_wild = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_rust/npc_acc_xmas_tuxedo_rust",
		sequence = "set_rust",
		third_body_replacement = xmas_tuxedo_wild_third_body_replacement,
		material_variations = {}
	}
	xmas_tuxedo_wild.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_rust/npc_acc_xmas_tuxedo_rust_black"
	}
	xmas_tuxedo_wild.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_rust/npc_acc_xmas_tuxedo_rust_blue"
	}
	xmas_tuxedo_wild.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_rust/npc_acc_xmas_tuxedo_rust_green"
	}
	self.player_styles.xmas_tuxedo.characters.wild = xmas_tuxedo_wild
	local xmas_tuxedo_chico = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_scarface/npc_acc_xmas_tuxedo_scarface",
		sequence = "set_scarface",
		material_variations = {}
	}
	xmas_tuxedo_chico.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_scarface/npc_acc_xmas_tuxedo_scarface_black"
	}
	xmas_tuxedo_chico.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_scarface/npc_acc_xmas_tuxedo_scarface_blue"
	}
	xmas_tuxedo_chico.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_scarface/npc_acc_xmas_tuxedo_scarface_green"
	}
	self.player_styles.xmas_tuxedo.characters.chico = xmas_tuxedo_chico
	local xmas_tuxedo_joy = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_joy/npc_acc_xmas_tuxedo_joy",
		sequence = "set_joy",
		material_variations = {}
	}
	xmas_tuxedo_joy.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_joy/npc_acc_xmas_tuxedo_joy_black"
	}
	xmas_tuxedo_joy.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_joy/npc_acc_xmas_tuxedo_joy_blue"
	}
	xmas_tuxedo_joy.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_joy/npc_acc_xmas_tuxedo_joy_green"
	}
	self.player_styles.xmas_tuxedo.characters.joy = xmas_tuxedo_joy
	local xmas_tuxedo_ecp_male = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_ethan/npc_acc_xmas_tuxedo_ethan",
		sequence = "set_ethan",
		material_variations = {}
	}
	xmas_tuxedo_ecp_male.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_ethan/npc_acc_xmas_tuxedo_ethan_black"
	}
	xmas_tuxedo_ecp_male.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_ethan/npc_acc_xmas_tuxedo_ethan_blue"
	}
	xmas_tuxedo_ecp_male.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_ethan/npc_acc_xmas_tuxedo_ethan_green"
	}
	self.player_styles.xmas_tuxedo.characters.ecp_male = xmas_tuxedo_ecp_male
	local xmas_tuxedo_ecp_female = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_hila/npc_acc_xmas_tuxedo_hila",
		sequence = "set_hila",
		material_variations = {}
	}
	xmas_tuxedo_ecp_female.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_hila/npc_acc_xmas_tuxedo_hila_black"
	}
	xmas_tuxedo_ecp_female.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_hila/npc_acc_xmas_tuxedo_hila_blue"
	}
	xmas_tuxedo_ecp_female.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_hila/npc_acc_xmas_tuxedo_hila_green"
	}
	self.player_styles.xmas_tuxedo.characters.ecp_female = xmas_tuxedo_ecp_female
	local xmas_tuxedo_dallas = {
		third_unit = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit",
		sequence = "set_dallas",
		material_variations = {}
	}
	xmas_tuxedo_dallas.material_variations.black = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_black"
	}
	xmas_tuxedo_dallas.material_variations.blue = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_blue"
	}
	xmas_tuxedo_dallas.material_variations.green = {
		third_material = "units/pd2_dlc_xmn/characters/xmn_acc_xmas_tuxedo/npc_acc_xmas_tuxedo_suit/npc_acc_xmas_tuxedo_suit_green"
	}
	self.player_styles.xmas_tuxedo.characters.dallas = xmas_tuxedo_dallas
	self.player_styles.mariachi = {
		name_id = "bm_suit_mariachi",
		desc_id = "bm_suit_mariachi_desc",
		locks = {
			achievement = "bex_1"
		},
		texture_bundle_folder = "bex",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_bex/characters/bex_acc_mariachi/bex_acc_fps_mariachi/bex_acc_fps_mariachi",
		material_variations = {}
	}
	self.player_styles.mariachi.material_variations.default = {
		name_id = "bm_suit_var_mariachi_default",
		global_value = "normal",
		desc_id = "bm_suit_var_mariachi_default_desc",
		prio = 1
	}
	self.player_styles.mariachi.material_variations.black = {
		desc_id = "bm_suit_var_mariachi_black_desc",
		global_value = "normal",
		prio = 7,
		name_id = "bm_suit_var_mariachi_black",
		third_material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_mariachi_black",
		material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_fps_mariachi_black",
		locks = {
			achievement = "bex_7"
		}
	}
	self.player_styles.mariachi.material_variations.brown = {
		desc_id = "bm_suit_var_mariachi_brown_desc",
		global_value = "normal",
		prio = 2,
		name_id = "bm_suit_var_mariachi_brown",
		third_material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_mariachi_brown",
		material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_fps_mariachi_brown",
		locks = {
			achievement = "bex_2"
		}
	}
	self.player_styles.mariachi.material_variations.red = {
		desc_id = "bm_suit_var_mariachi_red_desc",
		global_value = "normal",
		prio = 6,
		name_id = "bm_suit_var_mariachi_red",
		third_material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_mariachi_red",
		material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_fps_mariachi_red",
		locks = {
			achievement = "bex_6"
		}
	}
	self.player_styles.mariachi.material_variations.white = {
		desc_id = "bm_suit_var_mariachi_white_desc",
		global_value = "normal",
		prio = 4,
		name_id = "bm_suit_var_mariachi_white",
		third_material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_mariachi_white",
		material = "units/pd2_dlc_bex/characters/bex_acc_mariachi/shared_materials/bex_acc_fps_mariachi_white",
		locks = {
			achievement = "bex_4"
		}
	}
	self.player_styles.mariachi.characters = {}
	local mariachi_characters_male = {
		third_unit = "units/pd2_dlc_bex/characters/bex_acc_mariachi/bex_acc_mariachi_male_average/bex_acc_mariachi_male_average"
	}

	set_characters_data("mariachi", characters_male, mariachi_characters_male)

	local mariachi_characters_male_big = {
		third_unit = "units/pd2_dlc_bex/characters/bex_acc_mariachi/bex_acc_mariachi_male_big/bex_acc_mariachi_male_big"
	}

	set_characters_data("mariachi", characters_male_big, mariachi_characters_male_big)

	local mariachi_characters_female = {
		third_unit = "units/pd2_dlc_bex/characters/bex_acc_mariachi/bex_acc_mariachi_female_average/bex_acc_mariachi_female_average"
	}

	set_characters_data("mariachi", characters_female, mariachi_characters_female)

	local mariachi_characters_female_big = {
		third_unit = "units/pd2_dlc_bex/characters/bex_acc_mariachi/bex_acc_mariachi_female_big/bex_acc_mariachi_female_big"
	}

	set_characters_data("mariachi", characters_female_big, mariachi_characters_female_big)

	local mariachi_characters_male_fat = {
		third_unit = "units/pd2_dlc_bex/characters/bex_acc_mariachi/bex_acc_mariachi_male_fat/bex_acc_mariachi_male_fat",
		sequence = "set_ehtan"
	}
	self.player_styles.mariachi.characters.ecp_male = mariachi_characters_male_fat
	self.player_styles.desperado = {
		name_id = "bm_suit_desperado",
		desc_id = "bm_suit_desperado_desc",
		global_value = "mbs",
		texture_bundle_folder = "mbs",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/mbs_acc_fps_desperado/mbs_acc_fps_desperado_male",
		material_variations = {}
	}
	self.player_styles.desperado.material_variations.default = {
		name_id = "bm_suit_var_desperado_default",
		global_value = "mbs",
		desc_id = "bm_suit_var_desperado_default_desc"
	}
	self.player_styles.desperado.material_variations.blue = {
		desc_id = "bm_suit_var_desperado_blue_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_desperado_blue",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_desperado_blue",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_fps_desperado_blue"
	}
	self.player_styles.desperado.material_variations.green = {
		desc_id = "bm_suit_var_desperado_green_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_desperado_green",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_desperado_green",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_fps_desperado_green"
	}
	self.player_styles.desperado.material_variations.red = {
		desc_id = "bm_suit_var_desperado_red_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_desperado_red",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_desperado_red",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_fps_desperado_red"
	}
	self.player_styles.desperado.material_variations.white = {
		desc_id = "bm_suit_var_desperado_white_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_desperado_white",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_desperado_white",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/shared_materials/mbs_acc_fps_desperado_white"
	}
	self.player_styles.desperado.characters = {}
	local desperado_characters_male = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/mbs_acc_desperado_male_average/mbs_acc_desperado_male_average"
	}

	set_characters_data("desperado", characters_male, desperado_characters_male)

	local desperado_characters_male_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/mbs_acc_desperado_male_big/mbs_acc_desperado_male_big"
	}

	set_characters_data("desperado", characters_male_big, desperado_characters_male_big)

	local desperado_characters_female = {
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/mbs_acc_fps_desperado/mbs_acc_fps_desperado_female",
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/mbs_acc_desperado_female_average/mbs_acc_desperado_female_average"
	}

	set_characters_data("desperado", characters_female, desperado_characters_female)

	local desperado_characters_female_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/mbs_acc_desperado_female_big/mbs_acc_desperado_female_big"
	}

	set_characters_data("desperado", characters_female_big, desperado_characters_female_big)

	local desperado_characters_male_fat = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_desperado/mbs_acc_desperado_male_fat/mbs_acc_desperado_male_fat",
		sequence = "set_ehtan"
	}
	self.player_styles.desperado.characters.ecp_male = desperado_characters_male_fat
	self.player_styles.punk = {
		name_id = "bm_suit_punk",
		desc_id = "bm_suit_punk_desc",
		global_value = "mbs",
		texture_bundle_folder = "mbs",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_punk/mbs_acc_fps_punk/mbs_acc_fps_punk_male",
		material_variations = {}
	}
	self.player_styles.punk.material_variations.default = {
		name_id = "bm_suit_var_punk_default",
		global_value = "mbs",
		desc_id = "bm_suit_var_punk_default_desc"
	}
	self.player_styles.punk.material_variations.billieboy = {
		desc_id = "bm_suit_var_punk_billieboy_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_punk_billieboy",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_punk_billieboy",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_fps_punk_default"
	}
	self.player_styles.punk.material_variations.blue = {
		desc_id = "bm_suit_var_punk_blue_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_punk_blue",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_punk_blue",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_fps_punk_blue"
	}
	self.player_styles.punk.material_variations.red = {
		desc_id = "bm_suit_var_punk_red_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_punk_red",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_punk_red",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_fps_punk_red"
	}
	self.player_styles.punk.material_variations.scottish = {
		desc_id = "bm_suit_var_punk_scottish_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_punk_scottish",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_punk_scottish",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_punk/shared_materials/mbs_acc_fps_punk_default"
	}
	self.player_styles.punk.characters = {}
	local punk_characters_male = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_punk/mbs_acc_punk_male_average/mbs_acc_punk_male_average"
	}

	set_characters_data("punk", characters_male, punk_characters_male)

	local punk_characters_male_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_punk/mbs_acc_punk_male_big/mbs_acc_punk_male_big"
	}

	set_characters_data("punk", characters_male_big, punk_characters_male_big)

	local punk_characters_female = {
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_punk/mbs_acc_fps_punk/mbs_acc_fps_punk_female",
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_punk/mbs_acc_punk_female_average/mbs_acc_punk_female_average"
	}

	set_characters_data("punk", characters_female, punk_characters_female)

	local punk_characters_female_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_punk/mbs_acc_punk_female_big/mbs_acc_punk_female_big"
	}

	set_characters_data("punk", characters_female_big, punk_characters_female_big)

	local punk_characters_male_fat = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_punk/mbs_acc_punk_male_fat/mbs_acc_punk_male_fat",
		sequence = "set_ehtan"
	}
	self.player_styles.punk.characters.ecp_male = punk_characters_male_fat
	self.player_styles.hiphop = {
		name_id = "bm_suit_hiphop",
		desc_id = "bm_suit_hiphop_desc",
		global_value = "mbs",
		texture_bundle_folder = "mbs",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/mbs_acc_fps_hiphop/mbs_acc_fps_hiphop_male",
		material_variations = {}
	}
	self.player_styles.hiphop.material_variations.default = {
		name_id = "bm_suit_var_hiphop_default",
		global_value = "mbs",
		desc_id = "bm_suit_var_hiphop_default_desc"
	}
	self.player_styles.hiphop.material_variations.beige = {
		desc_id = "bm_suit_var_hiphop_beige_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hiphop_beige",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_hiphop_beige",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_fps_hiphop_beige"
	}
	self.player_styles.hiphop.material_variations.green = {
		desc_id = "bm_suit_var_hiphop_green_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hiphop_green",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_hiphop_green",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_fps_hiphop_green"
	}
	self.player_styles.hiphop.material_variations.red = {
		desc_id = "bm_suit_var_hiphop_red_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hiphop_red",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_hiphop_red",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_fps_hiphop_red"
	}
	self.player_styles.hiphop.material_variations.white = {
		desc_id = "bm_suit_var_hiphop_white_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hiphop_white",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_hiphop_white",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/shared_materials/mbs_acc_fps_hiphop_white"
	}
	self.player_styles.hiphop.characters = {}
	local hiphop_characters_male = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/mbs_acc_hiphop_male_average/mbs_acc_hiphop_male_average"
	}

	set_characters_data("hiphop", characters_male, hiphop_characters_male)

	local hiphop_characters_male_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/mbs_acc_hiphop_male_big/mbs_acc_hiphop_male_big"
	}

	set_characters_data("hiphop", characters_male_big, hiphop_characters_male_big)

	local hiphop_characters_female = {
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/mbs_acc_fps_hiphop/mbs_acc_fps_hiphop_female",
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/mbs_acc_hiphop_female_average/mbs_acc_hiphop_female_average"
	}

	set_characters_data("hiphop", characters_female, hiphop_characters_female)

	local hiphop_characters_female_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/mbs_acc_hiphop_female_big/mbs_acc_hiphop_female_big"
	}

	set_characters_data("hiphop", characters_female_big, hiphop_characters_female_big)

	local hiphop_characters_male_fat = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hiphop/mbs_acc_hiphop_male_fat/mbs_acc_hiphop_male_fat",
		sequence = "set_ehtan"
	}
	self.player_styles.hiphop.characters.ecp_male = hiphop_characters_male_fat
	self.player_styles.hippie = {
		name_id = "bm_suit_hippie",
		desc_id = "bm_suit_hippie_desc",
		global_value = "mbs",
		texture_bundle_folder = "mbs",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/mbs_acc_fps_hippie/mbs_acc_fps_hippie_male",
		material_variations = {}
	}
	self.player_styles.hippie.material_variations.default = {
		name_id = "bm_suit_var_hippie_default",
		global_value = "mbs",
		desc_id = "bm_suit_var_hippie_default_desc"
	}
	self.player_styles.hippie.material_variations.abstraction = {
		desc_id = "bm_suit_var_hippie_abstraction_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hippie_abstraction",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_hippie_abstraction",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_fps_hippie_abstraction"
	}
	self.player_styles.hippie.material_variations.flowerpower = {
		desc_id = "bm_suit_var_hippie_flowerpower_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hippie_flowerpower",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_hippie_flowerpower",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_fps_hippie_flowerpower"
	}
	self.player_styles.hippie.material_variations.native = {
		desc_id = "bm_suit_var_hippie_native_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hippie_native",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_hippie_native",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_fps_hippie_native"
	}
	self.player_styles.hippie.material_variations.tribe = {
		desc_id = "bm_suit_var_hippie_tribe_desc",
		global_value = "mbs",
		auto_aquire = true,
		name_id = "bm_suit_var_hippie_tribe",
		third_material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_hippie_tribe",
		material = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/shared_materials/mbs_acc_fps_hippie_tribe"
	}
	self.player_styles.hippie.characters = {}
	local hippie_characters_male = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/mbs_acc_hippie_male_average/mbs_acc_hippie_male_average"
	}

	set_characters_data("hippie", characters_male, hippie_characters_male)

	local hippie_characters_male_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/mbs_acc_hippie_male_big/mbs_acc_hippie_male_big"
	}

	set_characters_data("hippie", characters_male_big, hippie_characters_male_big)

	local hippie_characters_female = {
		unit = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/mbs_acc_fps_hippie/mbs_acc_fps_hippie_female",
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/mbs_acc_hippie_female_average/mbs_acc_hippie_female_average"
	}

	set_characters_data("hippie", characters_female, hippie_characters_female)

	local hippie_characters_female_big = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/mbs_acc_hippie_female_big/mbs_acc_hippie_female_big"
	}

	set_characters_data("hippie", characters_female_big, hippie_characters_female_big)

	local hippie_characters_male_fat = {
		third_unit = "units/pd2_dlc_mbs/characters/mbs_acc_hippie/mbs_acc_hippie_male_fat/mbs_acc_hippie_male_fat",
		sequence = "set_ehtan"
	}
	self.player_styles.hippie.characters.ecp_male = hippie_characters_male_fat
	self.player_styles.esport = {
		name_id = "bm_suit_esport",
		desc_id = "bm_suit_esport_desc",
		global_value = "ess",
		texture_bundle_folder = "ess",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_fps_esport/ess_acc_fps_esport_male",
		material_variations = {}
	}
	self.player_styles.esport.material_variations.default = {
		name_id = "bm_suit_var_esport_default",
		global_value = "ess",
		desc_id = "bm_suit_var_esport_default_desc"
	}
	self.player_styles.esport.material_variations.yellow = {
		desc_id = "bm_suit_var_esport_yellow_desc",
		global_value = "ess",
		auto_aquire = true,
		name_id = "bm_suit_var_esport_yellow",
		third_material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/shared_materials/ess_acc_esport_yellow",
		material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_fps_esport/ess_acc_fps_esport_yellow"
	}
	self.player_styles.esport.material_variations.green = {
		desc_id = "bm_suit_var_esport_green_desc",
		global_value = "ess",
		auto_aquire = true,
		name_id = "bm_suit_var_esport_green",
		third_material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/shared_materials/ess_acc_esport_green",
		material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_fps_esport/ess_acc_fps_esport_green"
	}
	self.player_styles.esport.material_variations.black = {
		desc_id = "bm_suit_var_esport_black_desc",
		global_value = "ess",
		auto_aquire = true,
		name_id = "bm_suit_var_esport_black",
		third_material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/shared_materials/ess_acc_esport_black",
		material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_fps_esport/ess_acc_fps_esport_black"
	}
	self.player_styles.esport.material_variations.white = {
		desc_id = "bm_suit_var_esport_white_desc",
		global_value = "ess",
		auto_aquire = true,
		name_id = "bm_suit_var_esport_white",
		third_material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/shared_materials/ess_acc_esport_white",
		material = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_fps_esport/ess_acc_fps_esport_white"
	}
	self.player_styles.esport.characters = {}
	local esport_characters_male = {
		third_unit = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_esport_male_average/ess_acc_esport_male_average"
	}

	set_characters_data("esport", characters_male, esport_characters_male)

	local esport_characters_male_big = {
		third_unit = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_esport_male_big/ess_acc_esport_male_big"
	}

	set_characters_data("esport", characters_male_big, esport_characters_male_big)

	local esport_characters_female = {
		unit = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_fps_esport/ess_acc_fps_esport_female",
		third_unit = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_esport_female_average/ess_acc_esport_female_average"
	}

	set_characters_data("esport", characters_female, esport_characters_female)

	local esport_characters_female_big = {
		third_unit = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_esport_female_big/ess_acc_esport_female_big"
	}

	set_characters_data("esport", characters_female_big, esport_characters_female_big)

	local esport_characters_male_fat = {
		third_unit = "units/pd2_dlc_ess/characters/ess_acc_esportgamer/ess_acc_esport_male_fat/ess_acc_esport_male_fat",
		sequence = "set_ehtan"
	}
	self.player_styles.esport.characters.ecp_male = esport_characters_male_fat
	self.player_styles.slaughterhouse = {
		locks = {
			achievement = "trk_sh_0"
		},
		name_id = "bm_suit_slaughterhouse",
		desc_id = "bm_suit_slaughterhouse_desc",
		global_value = "sus",
		texture_bundle_folder = "sus",
		body_replacement = body_replacement_standard,
		third_body_replacement = body_replacement_standard,
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse",
		characters = {}
	}
	local slaughterhouse_characters_male = {
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_average/sus_acc_slaughterhouse_male_average"
	}

	set_characters_data("slaughterhouse", characters_male, slaughterhouse_characters_male)

	local slaughterhouse_jiro = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_02",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_average_02/sus_acc_slaughterhouse_male_average_02"
	}
	self.player_styles.slaughterhouse.characters.jiro = slaughterhouse_jiro
	local slaughterhouse_bodhi = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_02",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_average_02/sus_acc_slaughterhouse_male_average_02"
	}
	self.player_styles.slaughterhouse.characters.bodhi = slaughterhouse_bodhi
	local slaughterhouse_scarface = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_02",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_average_02/sus_acc_slaughterhouse_male_average_02"
	}
	self.player_styles.slaughterhouse.characters.chico = slaughterhouse_scarface
	local slaughterhouse_chains = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_chains",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_average_chains/sus_acc_slaughterhouse_male_average_chains"
	}
	self.player_styles.slaughterhouse.characters.chains = slaughterhouse_chains
	local slaughterhouse_characters_male_big = {
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_big/sus_acc_slaughterhouse_male_big"
	}

	set_characters_data("slaughterhouse", characters_male_big, slaughterhouse_characters_male_big)

	local slaughterhouse_sangres = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_sangres",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_big_sangres/sus_acc_slaughterhouse_male_big_sangres"
	}
	self.player_styles.slaughterhouse.characters.max = slaughterhouse_sangres
	local slaughterhouse_characters_female = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_female",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_female_average/sus_acc_slaughterhouse_female_average"
	}

	set_characters_data("slaughterhouse", characters_female, slaughterhouse_characters_female)

	local slaughterhouse_sydney = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_female_sydney",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_female_average_sydney/sus_acc_slaughterhouse_female_average_sydney"
	}
	self.player_styles.slaughterhouse.characters.sydney = slaughterhouse_sydney
	local slaughterhouse_joy = {
		unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_female_joy",
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_female_average_joy/sus_acc_slaughterhouse_female_average_joy"
	}
	self.player_styles.slaughterhouse.characters.joy = slaughterhouse_joy
	local slaughterhouse_characters_female_big = {}
	slaughterhouse_characters_female.unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_fps_slaughterhouse/sus_acc_fps_slaughterhouse_female"
	slaughterhouse_characters_female_big.third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_female_big/sus_acc_slaughterhouse_female_big"

	set_characters_data("slaughterhouse", characters_female_big, slaughterhouse_characters_female_big)

	local slaughterhouse_characters_male_fat = {
		third_unit = "units/pd2_dlc_sus/characters/sus_acc_slaughterhouse/sus_acc_slaughterhouse_male_fat/sus_acc_slaughterhouse_male_fat",
		sequence = "set_ehtan"
	}
	self.player_styles.slaughterhouse.characters.ecp_male = slaughterhouse_characters_male_fat
end

-- Lines 1442-1464
function BlackMarketTweakData:get_player_style_value(player_style, character_name, key)
	if key == nil then
		return
	end

	player_style = player_style or "none"
	local data = self.player_styles[player_style]

	if data == nil then
		return nil
	end

	character_name = CriminalsManager.convert_old_to_new_character_workname(character_name)
	local character_value = data.characters and data.characters[character_name] and data.characters[character_name][key]

	if character_value ~= nil then
		return character_value
	end

	local tweak_value = data and data[key]

	return tweak_value
end

-- Lines 1466-1491
function BlackMarketTweakData:get_suit_variation_value(player_style, material_variation, character_name, key)
	if key == nil then
		return nil
	end

	player_style = player_style or "none"
	material_variation = material_variation or "default"
	local data = self.player_styles[player_style]
	local variation_data = data and data.material_variations and data.material_variations[material_variation]

	if variation_data == nil then
		return nil
	end

	character_name = CriminalsManager.convert_old_to_new_character_workname(character_name)
	local character_material_variations = data.characters and data.characters[character_name] and data.characters[character_name].material_variations
	local character_value = character_material_variations and character_material_variations[material_variation] and character_material_variations[material_variation][key]

	if character_value ~= nil then
		return character_value
	end

	local tweak_value = variation_data and variation_data[key]

	return tweak_value
end

-- Lines 1493-1514
function BlackMarketTweakData:have_suit_variations(player_style)
	local data = self.player_styles[player_style]

	if not data then
		return false
	end

	local variation_data = data.material_variations

	if not variation_data then
		return false
	end

	local num_variations = table.size(variation_data)

	if num_variations == 0 then
		return false
	end

	if num_variations == 1 and variation_data.default then
		return false
	end

	return true
end

-- Lines 1516-1552
function BlackMarketTweakData:get_suit_variations_sorted(player_style)
	local data = self.player_styles[player_style]

	if not data then
		return {}
	end

	local suit_variations = {
		"default"
	}

	if data.material_variations then
		for id, _ in pairs(data.material_variations) do
			if id ~= "default" then
				table.insert(suit_variations, id)
			end
		end
	end

	local x_prio, y_prio = nil

	table.sort(suit_variations, function (x, y)
		if x == "default" then
			return true
		end

		if y == "default" then
			return false
		end

		x_prio = data.material_variations[x].prio or 1
		y_prio = data.material_variations[y].prio or 1

		if x_prio ~= y_prio then
			return x_prio < y_prio
		end

		return y < x
	end)

	return suit_variations
end

-- Lines 1555-1584
function BlackMarketTweakData:get_player_style_units(player_style, key)
	local units = {}
	local data = self.player_styles[player_style]
	key = key or "all"
	local include_fps = key == "all" or key == "fps"
	local include_third = key == "all" or key == "third"

	if data.unit and include_fps then
		table.insert(units, data.unit)
	end

	if data.third_unit and include_third then
		table.insert(units, data.third_unit)
	end

	if data.characters then
		for character, char_data in pairs(data.characters) do
			if char_data.unit and include_fps then
				table.insert(units, char_data.unit)
			end

			if char_data.third_unit and include_third then
				table.insert(units, char_data.third_unit)
			end
		end
	end

	return table.list_union(units)
end

-- Lines 1586-1592
function BlackMarketTweakData:create_suit_string(player_style, suit_variation)
	if self:have_suit_variations(player_style) then
		return player_style .. "_" .. suit_variation
	end

	return player_style
end

-- Lines 1594-1609
function BlackMarketTweakData:create_suit_strings()
	local suit_strings = {}
	local suit_variations = nil

	for _, player_style in ipairs(self.player_style_list) do
		if self:have_suit_variations(player_style) then
			suit_variations = self:get_suit_variations_sorted(player_style)

			for _, suit_variation in ipairs(suit_variations) do
				table.insert(suit_strings, player_style .. "_" .. suit_variation)
			end
		else
			table.insert(suit_strings, player_style)
		end
	end

	return suit_strings
end

-- Lines 1611-1644
function BlackMarketTweakData:build_player_style_list(tweak_data)
	local x_td, y_td, x_gv, y_gv, x_sn, y_sn = nil

	-- Lines 1615-1641
	local function sort_func(x, y)
		if x == "none" then
			return true
		end

		if y == "none" then
			return false
		end

		x_td = self.player_styles[x]
		y_td = self.player_styles[y]

		if x_td.unlocked ~= y_td.unlocked then
			return x_td.unlocked
		end

		x_gv = x_td.global_value or x_td.dlc or "normal"
		y_gv = y_td.global_value or y_td.dlc or "normal"
		x_sn = x_gv and tweak_data.lootdrop.global_values[x_gv].sort_number or 0
		y_sn = y_gv and tweak_data.lootdrop.global_values[y_gv].sort_number or 0

		if x_sn ~= y_sn then
			return x_sn < y_sn
		end

		return x < y
	end

	self.player_style_list = table.map_keys(self.player_styles, sort_func)
end
