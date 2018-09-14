
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Grove Tending"] = {
			[279793] = 134914,
		},
		["Regrowth"] = {
			[8936] = 136085,
		},
		["Stellar Flare"] = {
			[202347] = 1052602,
		},
		["Wild Growth"] = {
			[48438] = 236153,
		},
		["Solar Empowerment"] = {
			[164545] = 535045,
		},
		["Predatory Swiftness"] = {
			[69369] = 132185,
		},
		["Warrior of Elune"] = {
			[202425] = 135900,
		},
		["Lifebloom"] = {
			[33763] = 134206,
		},
		["Rejuvenation (Germination)"] = {
			[155777] = 1033478,
		},
		["Lunar Empowerment"] = {
			[164547] = 135753,
		},
		["Rake"] = {
			[155722] = 132122,
			[163505] = 132122,
		},
		["Rip"] = {
			[1079] = 132152,
		},
		["Starfall"] = {
			[191034] = 236168,
		},
		["Cultivation"] = {
			[200389] = 236162,
		},
		["Moonfire"] = {
			[164812] = 136096,
			[155625] = 136096,
		},
		["Owlkin Frenzy"] = {
			[157228] = 236163,
		},
		["Maim"] = {
			[203123] = 132134,
		},
		["Feral Frenzy"] = {
			[274838] = 132140,
		},
		["Sunfire"] = {
			[164815] = 236216,
		},
		["Clearcasting"] = {
			[135700] = 136170,
			[16870] = 136170,
		},
		["Thrash"] = {
			[106830] = 451161,
			[192090] = 451161,
		},
		["Rejuvenation"] = {
			[774] = 136081,
		},
		["Cenarion Ward"] = {
			[102351] = 132137,
			[102352] = 132137,
		},
		["Travel Form"] = {
			[783] = 132144,
		},
	},
	["login_squelch_time"] = 10,
	["displays"] = {
		["Tranquility up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["xOffset"] = 0,
			["color"] = {
				0.4, -- [1]
				0.886274509803922, -- [2]
				0.505882352941176, -- [3]
				1, -- [4]
			},
			["parent"] = "Opportunities",
			["displayText"] = "%n",
			["fixedWidth"] = 200,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["height"] = 15.8333415985107,
			["width"] = 80.0000152587891,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellName"] = 740,
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Tranquility",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["use_unit"] = true,
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["id"] = "Tranquility up",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 740,
			},
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_combat"] = true,
				["spellknown"] = 740,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Feral Frenzy up"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				0.796078431372549, -- [1]
				0.172549019607843, -- [2]
				0.152941176470588, -- [3]
				1, -- [4]
			},
			["displayText"] = "%n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 3,
			["wordWrap"] = "WordWrap",
			["trigger"] = {
				["spellName"] = 274837,
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Feral Frenzy",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnActive",
				["use_unit"] = true,
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["font"] = "Oswald",
			["height"] = 15.8333415985107,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 274837,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["regionType"] = "text",
			["parent"] = "Opportunities",
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["disjunctive"] = "any",
			["frameStrata"] = 1,
			["width"] = 85.8333969116211,
			["fixedWidth"] = 200,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 274837,
			},
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["id"] = "Feral Frenzy up",
			["selfPoint"] = "BOTTOM",
		},
		["Stellar Flare"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 202347,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["cooldownTextEnabled"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["orientation"] = "HORIZONTAL",
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["numTriggers"] = 2,
			["sparkWidth"] = 10,
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["width"] = 248,
			["text1Enabled"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["desaturate"] = false,
			["textSize"] = 12,
			["id"] = "Stellar Flare",
			["backdropInFront"] = false,
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["rem"] = "5.4",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["remOperator"] = ">=",
				["names"] = {
					"Stellar Flare", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["sparkRotation"] = 0,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["disjunctive"] = "any",
			["text1"] = "%p",
			["glow"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["text2Point"] = "CENTER",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Font"] = "Oswald",
			["borderInFront"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["height"] = 26,
			["parent"] = "De/Buffs",
			["sparkHeight"] = 30,
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkHidden"] = "NEVER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["unit"] = "target",
						["names"] = {
							"Stellar Flare", -- [1]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["displayTextLeft"] = "%n %p",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["spark"] = false,
			["useAdjustededMin"] = false,
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "expirationTime",
						["op"] = "<=",
						["value"] = "7.2",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.580392156862745, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.0588235294117647, -- [2]
								0, -- [3]
								0.288460612297058, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [2]
			},
			["text2Enabled"] = false,
			["stacksFont"] = "Friz Quadrata TT",
		},
		["Proc - Predatory Swiftness"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["disjunctive"] = "all",
			["displayText"] = "%n (Regrowth, Roots)",
			["color"] = {
				0.286274509803922, -- [1]
				0.490196078431373, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 22812,
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "text",
			["conditions"] = {
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = 0,
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slideleft",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellName"] = 22812,
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["names"] = {
					"Predatory Swiftness", -- [1]
				},
				["realSpellName"] = "Barkskin",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnActive",
				["use_unit"] = true,
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["width"] = 260.520812988281,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["id"] = "Proc - Predatory Swiftness",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["selfPoint"] = "BOTTOM",
			["height"] = 15.8333415985107,
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 22812,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Stampeding Roar up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["disjunctive"] = "all",
			["color"] = {
				0.4, -- [1]
				0.886274509803922, -- [2]
				0.505882352941176, -- [3]
				1, -- [4]
			},
			["displayText"] = "%n",
			["regionType"] = "text",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 77764,
			},
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["xOffset"] = 0,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["wordWrap"] = "WordWrap",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Stampeding Roar",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 77764,
			},
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Stampeding Roar up",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 120.833358764648,
			["selfPoint"] = "BOTTOM",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["height"] = 15.8333415985107,
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 77764,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Opportunities",
		},
		["scratch - change several auras here together"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
			},
			["disjunctive"] = "all",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "TOP",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["stagger"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "scratch - change several auras here together",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["backgroundInset"] = 0,
			["align"] = "CENTER",
			["numTriggers"] = 1,
			["internalVersion"] = 3,
			["untrigger"] = {
			},
			["rotation"] = 0,
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["2x solar"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["rotate"] = true,
			["color"] = {
				0.196078431372549, -- [1]
				0.196078431372549, -- [2]
				0.196078431372549, -- [3]
				0.309828281402588, -- [4]
			},
			["height"] = 30,
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["parent"] = "Empowerment",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["discrete_rotation"] = 0,
			["internalVersion"] = 3,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "2x solar",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showActiveOrMissing",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Solar Empowerment", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["frameStrata"] = 1,
			["width"] = 48,
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["disjunctive"] = "custom",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["value"] = "2",
						["op"] = ">=",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.752941176470588, -- [2]
								0.411764705882353, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.152941176470588, -- [2]
								0.0431372549019608, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["customTriggerLogic"] = "function()\nreturn true\nend",
		},
		["1x solar"] = {
			["color"] = {
				0.196078431372549, -- [1]
				0.196078431372549, -- [2]
				0.196078431372549, -- [3]
				0.309828281402588, -- [4]
			},
			["untrigger"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = ">=",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.752941176470588, -- [2]
								0.411764705882353, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.152941176470588, -- [2]
								0.0431372549019608, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "Empowerment",
			["height"] = 30,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["anchorPoint"] = "CENTER",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["width"] = 48,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["rotation"] = 0,
			["internalVersion"] = 3,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["id"] = "1x solar",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showActiveOrMissing",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Solar Empowerment", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["frameStrata"] = 1,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["rotate"] = true,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "custom",
		},
		["Berserking up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				0.796078431372549, -- [1]
				0.490196078431373, -- [2]
				0.450980392156863, -- [3]
				1, -- [4]
			},
			["parent"] = "Opportunities",
			["disjunctive"] = "all",
			["displayText"] = "%n",
			["conditions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["height"] = 15.8333415985107,
			["width"] = 80.8333587646484,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Berserking",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 26297,
			},
			["id"] = "Berserking up",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 26297,
			},
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_race"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["single"] = "Troll",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["bar - Mana"] = {
			["textFlags"] = "THICKOUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.137254901960784, -- [1]
				0.164705882352941, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "DGround",
			["textFont"] = "Oswald",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = false,
			["timerFont"] = "Harry P",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Bars",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "  %p Mana",
			["internalVersion"] = 3,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stickyDuration"] = false,
			["backgroundColor"] = {
				0.0470588235294118, -- [1]
				0.0470588235294118, -- [2]
				0.0470588235294118, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["height"] = 40,
			["timerFlags"] = "THICKOUTLINE",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["trigger"] = {
				["use_absorbMode"] = true,
				["use_unit"] = true,
				["powertype"] = 0,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">",
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["spellIds"] = {
				},
				["power"] = "0",
				["showOn"] = "showOnActive",
				["subeventSuffix"] = "_CAST_START",
				["use_power"] = false,
				["use_requirePowerType"] = true,
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["width"] = 300,
			["textSize"] = 24,
			["additional_triggers"] = {
			},
			["border"] = false,
			["borderEdge"] = "Details BarBorder 3",
			["id"] = "bar - Mana",
			["borderInFront"] = true,
			["disjunctive"] = "any",
			["icon_side"] = "RIGHT",
			["displayTextRight"] = " ",
			["auto"] = true,
			["sparkHeight"] = 40,
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkWidth"] = 10,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 31,
			["borderSize"] = 16,
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["backdropColor"] = {
				0.125490196078431, -- [1]
				0.125490196078431, -- [2]
				0.125490196078431, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["op"] = ">=",
						["value"] = "40",
					},
					["changes"] = {
						{
							["value"] = {
								0.258823529411765, -- [1]
								1, -- [2]
								0.0705882352941177, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["op"] = ">",
						["value"] = "75",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.00392156862745098, -- [2]
								0.458823529411765, -- [3]
								1, -- [4]
							},
							["property"] = "sparkColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["op"] = "==",
						["value"] = "100",
					},
					["changes"] = {
						{
							["value"] = {
								0.909803921568627, -- [1]
								0.643137254901961, -- [2]
								0.105882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "timerColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.67843137254902, -- [2]
								0.286274509803922, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["borderOffset"] = 5,
			["zoom"] = 0,
		},
		["Renewal up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["parent"] = "Opportunities",
			["xOffset"] = 0,
			["displayText"] = "%n",
			["yOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 108238,
			},
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["color"] = {
				0.325490196078431, -- [1]
				0.525490196078431, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Renewal up",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Renewal",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 108238,
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 62.4999580383301,
			["selfPoint"] = "BOTTOM",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["regionType"] = "text",
			["height"] = 15.8333415985107,
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_combat"] = true,
				["spellknown"] = 108238,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Opportunities"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Proc - Clearcasting", -- [1]
				"Barkskin up", -- [2]
				"Survival Instincts up", -- [3]
				"Typhoon up", -- [4]
				"Healthstone up", -- [5]
				"Renewal up", -- [6]
				"Medallion up", -- [7]
				"proc - owlkin frenzy", -- [8]
				"proc - omen of clarity", -- [9]
				"Warror of Elune up", -- [10]
				"Feral Frenzy up", -- [11]
				"Celestial Alignment up", -- [12]
				"Berserk up", -- [13]
				"Tiger's Fury up", -- [14]
				"Berserking up", -- [15]
				"Ironbark up", -- [16]
				"Tranquility up", -- [17]
				"Thorns up", -- [18]
				"Stampeding Roar up", -- [19]
			},
			["disjunctive"] = "all",
			["yOffset"] = 0,
			["anchorPoint"] = "BOTTOMLEFT",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "BOTTOMRIGHT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["height"] = 336.833312988281,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:Bars",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "Opportunities",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["width"] = 150.833374023438,
			["xOffset"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["internalVersion"] = 3,
			["align"] = "RIGHT",
			["anchorFrameType"] = "SELECTFRAME",
			["backgroundInset"] = 0,
		},
		["Ironbark up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				0.4, -- [1]
				0.886274509803922, -- [2]
				0.505882352941176, -- [3]
				1, -- [4]
			},
			["parent"] = "Opportunities",
			["disjunctive"] = "all",
			["displayText"] = "%n (You)",
			["conditions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["height"] = 15.8333415985107,
			["anchorFrameType"] = "SCREEN",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["spellName"] = 102342,
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Ironbark",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["use_unit"] = true,
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["id"] = "Ironbark up",
			["frameStrata"] = 1,
			["width"] = 101.666709899902,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 102342,
			},
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 22812,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Wild Growth Self"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.627450980392157, -- [1]
				0.996078431372549, -- [2]
				0.454901960784314, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 48438,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["borderOffset"] = 5,
			["customText"] = "",
			["untrigger"] = {
			},
			["desaturate"] = false,
			["width"] = 248,
			["customTextUpdate"] = "update",
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "My %n %p",
			["sparkHidden"] = "NEVER",
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["type"] = "aura",
				["names"] = {
					"Wild Growth", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["icon"] = true,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "Wild Growth Self",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Feral Frenzy"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 274837,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["zoom"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["borderBackdrop"] = "Blizzard Tooltip",
			["auto"] = true,
			["disjunctive"] = "any",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["width"] = 248,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n %p",
			["textSize"] = 12,
			["text1FontFlags"] = "OUTLINE",
			["sparkHidden"] = "NEVER",
			["internalVersion"] = 3,
			["backdropInFront"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "6.6",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["names"] = {
					"Feral Frenzy", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["displayTextRight"] = " ",
			["stickyDuration"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["parent"] = "De/Buffs",
			["xOffset"] = 10,
			["sparkHeight"] = 30,
			["timer"] = true,
			["timerFlags"] = "None",
			["height"] = 26,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Oswald",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "None",
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["borderInFront"] = true,
			["sparkOffsetX"] = 0,
			["icon_side"] = "LEFT",
			["glow"] = false,
			["text2Point"] = "CENTER",
			["text1"] = "%p",
			["sparkWidth"] = 10,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["additional_triggers"] = {
			},
			["id"] = "Feral Frenzy",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkRotationMode"] = "AUTO",
			["text1Containment"] = "INSIDE",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Thrash"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["spellknown"] = 106830,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderBackdrop"] = "Blizzard Tooltip",
			["text1FontFlags"] = "OUTLINE",
			["disjunctive"] = "any",
			["desaturate"] = false,
			["inverse"] = false,
			["untrigger"] = {
			},
			["spark"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["width"] = 248,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n %p",
			["textSize"] = 12,
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["internalVersion"] = 3,
			["backdropInFront"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "6.6",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["names"] = {
					"Thrash", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["displayTextRight"] = " ",
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["parent"] = "De/Buffs",
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["timer"] = true,
			["timerFlags"] = "None",
			["height"] = 26,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Oswald",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["borderInFront"] = true,
			["sparkOffsetX"] = 0,
			["icon_side"] = "LEFT",
			["glow"] = false,
			["text2Point"] = "CENTER",
			["text1"] = "%p",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["textFlags"] = "None",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderOffset"] = 5,
			["id"] = "Thrash",
			["sparkRotation"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["text2Enabled"] = false,
			["borderInset"] = 11,
		},
		["Bars"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"bar - AP", -- [1]
				"bar - Energy", -- [2]
				"bar - Mana", -- [3]
				"bar - target", -- [4]
				"bar - health", -- [5]
			},
			["disjunctive"] = "all",
			["yOffset"] = -300,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["height"] = 178.000030517578,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 2,
			["id"] = "Bars",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["width"] = 300,
			["xOffset"] = 0,
			["rotation"] = 0,
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["internalVersion"] = 3,
			["align"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["backgroundInset"] = 0,
		},
		["Proc - Clearcasting"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["width"] = 234.041717529297,
			["parent"] = "Opportunities",
			["xOffset"] = 0,
			["displayText"] = "%n (Rake, Shred, Thrash)",
			["fixedWidth"] = 200,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 22812,
			},
			["anchorPoint"] = "CENTER",
			["height"] = 15.8333415985107,
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "aura",
				["unit"] = "player",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Barkskin",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnActive",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
					"Clearcasting", -- [1]
				},
				["spellName"] = 22812,
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = 0,
			["color"] = {
				0.325490196078431, -- [1]
				0.525490196078431, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Proc - Clearcasting",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOM",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["regionType"] = "text",
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 22812,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Combo Point 5"] = {
			["parent"] = "Combo Points",
			["mirror"] = false,
			["rotate"] = true,
			["color"] = {
				1, -- [1]
				0.0352941176470588, -- [2]
				0.2, -- [3]
				1, -- [4]
			},
			["height"] = 30,
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["regionType"] = "texture",
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
			["rotation"] = 0,
			["internalVersion"] = 3,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_absorbMode"] = true,
				["subeventPrefix"] = "SPELL",
				["powertype"] = 4,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["event"] = "Power",
				["names"] = {
				},
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnActive",
				["use_power"] = true,
				["use_unit"] = true,
				["use_requirePowerType"] = false,
			},
			["id"] = "Combo Point 5",
			["frameStrata"] = 1,
			["width"] = 30,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["init_started"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "power",
						["value"] = "5",
						["op"] = "<",
					},
					["changes"] = {
						{
							["value"] = {
								0.266666666666667, -- [1]
								0.266666666666667, -- [2]
								0.266666666666667, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [2]
					},
				}, -- [2]
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["ROGUE"] = true,
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Combo Point 4"] = {
			["color"] = {
				1, -- [1]
				0.0352941176470588, -- [2]
				0.2, -- [3]
				1, -- [4]
			},
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "power",
						["op"] = "<",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								0.266666666666667, -- [1]
								0.266666666666667, -- [2]
								0.266666666666667, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [2]
					},
				}, -- [2]
			},
			["disjunctive"] = "any",
			["height"] = 30,
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["xOffset"] = 0,
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["yOffset"] = 0,
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
			["discrete_rotation"] = 0,
			["internalVersion"] = 3,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Combo Point 4",
			["trigger"] = {
				["use_absorbMode"] = true,
				["unit"] = "player",
				["powertype"] = 4,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = ">=",
				["event"] = "Power",
				["use_unit"] = true,
				["use_power"] = true,
				["unevent"] = "auto",
				["spellIds"] = {
				},
				["power"] = "1",
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["use_requirePowerType"] = false,
			},
			["frameStrata"] = 1,
			["width"] = 30,
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["init_started"] = 1,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["ROGUE"] = true,
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Combo Points",
		},
		["Combo Point 2"] = {
			["color"] = {
				1, -- [1]
				0.0352941176470588, -- [2]
				0.2, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "power",
						["op"] = "<",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								0.266666666666667, -- [1]
								0.266666666666667, -- [2]
								0.266666666666667, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [2]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["height"] = 30,
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["parent"] = "Combo Points",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
			["discrete_rotation"] = 0,
			["internalVersion"] = 3,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_power"] = true,
				["names"] = {
				},
				["powertype"] = 4,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["power"] = "1",
				["power_operator"] = ">=",
				["event"] = "Power",
				["unit"] = "player",
				["use_absorbMode"] = true,
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["use_requirePowerType"] = false,
			},
			["id"] = "Combo Point 2",
			["frameStrata"] = 1,
			["width"] = 30,
			["rotation"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["init_started"] = 1,
			["rotate"] = true,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["ROGUE"] = true,
						["DRUID"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "any",
		},
		["Regrowth Self"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.627450980392157, -- [1]
				0.996078431372549, -- [2]
				0.454901960784314, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 8936,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["text1FontFlags"] = "OUTLINE",
			["customText"] = "",
			["untrigger"] = {
			},
			["desaturate"] = false,
			["width"] = 248,
			["customTextUpdate"] = "update",
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["displayTextLeft"] = "My %n %p",
			["sparkHidden"] = "NEVER",
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["type"] = "aura",
				["names"] = {
					"Regrowth", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["xOffset"] = 10,
			["sparkHeight"] = 30,
			["timer"] = true,
			["height"] = 26,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["icon"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["id"] = "Regrowth Self",
			["additional_triggers"] = {
			},
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Warror of Elune up"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				0.796078431372549, -- [1]
				0.172549019607843, -- [2]
				0.152941176470588, -- [3]
				1, -- [4]
			},
			["displayText"] = "%n x%s",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 202425,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 1,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 3,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Warrior of Elune",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnActive",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 202425,
			},
			["font"] = "Oswald",
			["height"] = 15.8333415985107,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 202425,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["regionType"] = "text",
			["xOffset"] = 0,
			["selfPoint"] = "BOTTOM",
			["justify"] = "LEFT",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["showOn"] = "showOnActive",
						["names"] = {
							"Warrior of Elune", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "Warror of Elune up",
			["parent"] = "Opportunities",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
			},
			["yOffset"] = 0,
			["numTriggers"] = 2,
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["width"] = 126.666664123535,
			["disjunctive"] = "any",
		},
		["bar - health"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.192156862745098, -- [1]
				1, -- [2]
				0.192156862745098, -- [3]
				0.245725691318512, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				0.180392156862745, -- [1]
				0.137254901960784, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "DGround",
			["textFont"] = "Oswald",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["customText"] = "function()\n    local p = math.max(0, UnitMana(\"player\")) / math.max(1, UnitManaMax(\"player\")) * 100;\n    return string.format(\"%.f\", p) .. \"%%\";\nend",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " %p / %t",
			["internalVersion"] = 3,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["parent"] = "Bars",
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["init_started"] = 1,
			["borderOffset"] = 5,
			["timer"] = false,
			["timerFlags"] = "None",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0.125490196078431, -- [1]
				0.125490196078431, -- [2]
				0.125490196078431, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 300,
			["height"] = 40,
			["textFlags"] = "THICKOUTLINE",
			["border"] = false,
			["borderEdge"] = "None",
			["additional_triggers"] = {
			},
			["borderInFront"] = true,
			["borderSize"] = 16,
			["icon_side"] = "RIGHT",
			["displayTextRight"] = " ",
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["textSize"] = 24,
			["auto"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["sparkHidden"] = "NEVER",
			["id"] = "bar - health",
			["sparkRotationMode"] = "AUTO",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["use_absorbMode"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["use_health"] = false,
				["unevent"] = "auto",
				["health_operator"] = ">",
				["percenthealth"] = "0",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["health"] = "0",
				["spellIds"] = {
				},
				["unit"] = "player",
				["showOn"] = "showOnActive",
				["use_percenthealth"] = true,
				["percenthealth_operator"] = ">",
				["use_unit"] = true,
			},
			["icon"] = false,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "percenthealth",
						["op"] = "<",
						["value"] = "75",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.87843137254902, -- [2]
								0.549019607843137, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "percenthealth",
						["op"] = "<",
						["value"] = "45",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.0980392156862745, -- [2]
								0.364705882352941, -- [3]
								1, -- [4]
							},
							["property"] = "borderColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.258823529411765, -- [2]
								0.16078431372549, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [2]
					},
				}, -- [2]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
		},
		["bar - target"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0.0549019607843137, -- [3]
				0.737178772687912, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["disjunctive"] = "all",
			["untrigger"] = {
				["unit"] = "target",
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%p / %t",
			["internalVersion"] = 3,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["parent"] = "Bars",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["orientation"] = "HORIZONTAL",
			["timer"] = false,
			["timerFlags"] = "None",
			["height"] = 10,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["numTriggers"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = false,
			["anchorFrameType"] = "SCREEN",
			["textSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["trigger"] = {
				["use_absorbMode"] = true,
				["unit"] = "target",
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["use_health"] = false,
				["unevent"] = "auto",
				["use_unit"] = true,
				["percenthealth"] = "0",
				["event"] = "Health",
				["health_operator"] = ">",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["health"] = "0",
				["names"] = {
				},
				["showOn"] = "showOnActive",
				["use_percenthealth"] = true,
				["percenthealth_operator"] = ">",
				["subeventSuffix"] = "_CAST_START",
			},
			["borderSize"] = 16,
			["id"] = "bar - target",
			["icon_side"] = "RIGHT",
			["sparkRotationMode"] = "AUTO",
			["timerSize"] = 12,
			["sparkHeight"] = 30,
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkWidth"] = 10,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["auto"] = true,
			["sparkHidden"] = "NEVER",
			["borderInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 300,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				0.556862745098039, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["borderOffset"] = 5,
			["zoom"] = 0,
		},
		["bar - Energy"] = {
			["textFlags"] = "THICKOUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.737254901960784, -- [2]
				0.270588235294118, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "DGround",
			["textFont"] = "Oswald",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = true,
			["timerFont"] = "Harry P",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "  %p",
			["internalVersion"] = 3,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_power"] = false,
				["subeventPrefix"] = "SPELL",
				["powertype"] = 3,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">",
				["event"] = "Power",
				["use_unit"] = true,
				["unit"] = "player",
				["use_absorbMode"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnActive",
				["power"] = "0",
				["names"] = {
				},
				["use_requirePowerType"] = true,
			},
			["text"] = true,
			["zoom"] = 0,
			["stickyDuration"] = false,
			["borderOffset"] = 5,
			["backdropInFront"] = false,
			["orientation"] = "HORIZONTAL",
			["backgroundColor"] = {
				0.0470588235294118, -- [1]
				0.0470588235294118, -- [2]
				0.0470588235294118, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "THICKOUTLINE",
			["numTriggers"] = 1,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0.125490196078431, -- [1]
				0.125490196078431, -- [2]
				0.125490196078431, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["sparkRotation"] = 0,
			["anchorFrameType"] = "SCREEN",
			["height"] = 40,
			["borderInFront"] = true,
			["border"] = false,
			["borderEdge"] = "Details BarBorder 3",
			["id"] = "bar - Energy",
			["borderSize"] = 16,
			["textSize"] = 24,
			["icon_side"] = "RIGHT",
			["timerSize"] = 31,
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 40,
			["auto"] = true,
			["sparkWidth"] = 10,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 300,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["useAdjustededMax"] = false,
			["inverse"] = false,
			["sparkDesature"] = false,
			["init_started"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["value"] = "40",
						["op"] = ">=",
					},
					["changes"] = {
						{
							["value"] = {
								0.258823529411765, -- [1]
								1, -- [2]
								0.0705882352941177, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["value"] = "75",
						["op"] = ">",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.00392156862745098, -- [2]
								0.458823529411765, -- [3]
								1, -- [4]
							},
							["property"] = "sparkColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["value"] = "100",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								0.909803921568627, -- [1]
								0.643137254901961, -- [2]
								0.105882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "timerColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.67843137254902, -- [2]
								0.286274509803922, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["parent"] = "Bars",
		},
		["Rake"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 1822,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2"] = "%p",
			["borderBackdrop"] = "Blizzard Tooltip",
			["spark"] = false,
			["disjunctive"] = "any",
			["text1FontFlags"] = "OUTLINE",
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["desaturate"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["anchorFrameType"] = "SCREEN",
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["sparkRotation"] = 0,
			["id"] = "Rake",
			["internalVersion"] = 3,
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["timerSize"] = 12,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["textFlags"] = "None",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["text1"] = "%p",
			["height"] = 26,
			["timerFlags"] = "None",
			["text2Point"] = "CENTER",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Oswald",
			["sparkOffsetX"] = 0,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInFront"] = true,
			["borderSize"] = 16,
			["borderEdge"] = "None",
			["icon_side"] = "LEFT",
			["useAdjustededMax"] = false,
			["timer"] = true,
			["sparkHeight"] = 30,
			["borderOffset"] = 5,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["rem"] = "6.6",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Rake", -- [1]
				},
				["debuffType"] = "HARMFUL",
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkHidden"] = "NEVER",
			["additional_triggers"] = {
			},
			["displayTextLeft"] = "%n %p",
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Enabled"] = true,
			["parent"] = "De/Buffs",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["xOffset"] = 10,
			["stacksFont"] = "Friz Quadrata TT",
		},
		["Rip"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_combat"] = true,
				["spellknown"] = 1079,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderBackdrop"] = "Blizzard Tooltip",
			["text1FontFlags"] = "OUTLINE",
			["disjunctive"] = "any",
			["desaturate"] = false,
			["inverse"] = false,
			["untrigger"] = {
			},
			["spark"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["width"] = 248,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["displayTextLeft"] = "%n %p",
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["internalVersion"] = 3,
			["backdropInFront"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "6.6",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["names"] = {
					"Rip", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["displayTextRight"] = " ",
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["parent"] = "De/Buffs",
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timerFlags"] = "None",
			["timer"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Oswald",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["borderInFront"] = true,
			["sparkOffsetX"] = 0,
			["icon_side"] = "LEFT",
			["glow"] = false,
			["text2Point"] = "CENTER",
			["text1"] = "%p",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["textFlags"] = "None",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderOffset"] = 5,
			["id"] = "Rip",
			["sparkRotation"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["text2Enabled"] = false,
			["borderInset"] = 11,
		},
		["Starfall"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_spellknown"] = false,
				["use_combat"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["xOffset"] = 10,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["orientation"] = "HORIZONTAL",
			["borderBackdrop"] = "Blizzard Tooltip",
			["text2Font"] = "Friz Quadrata TT",
			["disjunctive"] = "any",
			["inverse"] = false,
			["spark"] = false,
			["untrigger"] = {
			},
			["parent"] = "De/Buffs",
			["width"] = 248,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["displayTextLeft"] = "%n %p",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["showOn"] = "showOnMissing",
						["names"] = {
							"Starfall", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkHidden"] = "NEVER",
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["type"] = "aura",
				["names"] = {
					"Starfall", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["borderOffset"] = 5,
			["sparkHeight"] = 30,
			["timer"] = true,
			["height"] = 26,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["text1"] = "%p",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["text1Containment"] = "INSIDE",
			["id"] = "Starfall",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkWidth"] = 10,
			["text1FontFlags"] = "OUTLINE",
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "expirationTime",
						["value"] = "1.5",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.654901960784314, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
		},
		["Maim"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 22570,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["borderOffset"] = 5,
			["disjunctive"] = "any",
			["spark"] = false,
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayTextLeft"] = "%n %p",
			["textSize"] = 12,
			["id"] = "Maim",
			["internalVersion"] = 3,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["rem"] = "6.6",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Maim", -- [1]
				},
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["timerSize"] = 12,
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["height"] = 26,
			["timerFlags"] = "None",
			["text2Point"] = "CENTER",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Oswald",
			["sparkOffsetX"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["borderInFront"] = true,
			["borderSize"] = 16,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["useAdjustededMax"] = false,
			["timer"] = true,
			["sparkHeight"] = 30,
			["cooldownTextEnabled"] = true,
			["parent"] = "De/Buffs",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["backdropInFront"] = false,
			["sparkHidden"] = "NEVER",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 248,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["zoom"] = 0,
			["text2"] = "%p",
		},
		["bar - AP"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.0470588235294118, -- [1]
				0.0470588235294118, -- [2]
				0.0470588235294118, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.662745098039216, -- [1]
				0.635294117647059, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "DGround",
			["textFont"] = "Oswald",
			["zoom"] = 0,
			["spark"] = true,
			["timerFont"] = "Harry P",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "  %p",
			["internalVersion"] = 3,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["parent"] = "Bars",
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["orientation"] = "HORIZONTAL",
			["borderOffset"] = 5,
			["timer"] = true,
			["timerFlags"] = "THICKOUTLINE",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["height"] = 40,
			["width"] = 300,
			["trigger"] = {
				["use_absorbMode"] = true,
				["use_unit"] = true,
				["powertype"] = 8,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">",
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["spellIds"] = {
				},
				["power"] = "0",
				["showOn"] = "showOnActive",
				["subeventSuffix"] = "_CAST_START",
				["use_power"] = false,
				["use_requirePowerType"] = true,
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "Details BarBorder 3",
			["additional_triggers"] = {
			},
			["borderInFront"] = true,
			["sparkOffsetX"] = 0,
			["icon_side"] = "RIGHT",
			["displayTextRight"] = "DUMP!",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 40,
			["auto"] = true,
			["textSize"] = 24,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 31,
			["sparkRotationMode"] = "AUTO",
			["id"] = "bar - AP",
			["textFlags"] = "THICKOUTLINE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon"] = false,
			["backdropColor"] = {
				0.125490196078431, -- [1]
				0.125490196078431, -- [2]
				0.125490196078431, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["op"] = ">=",
						["value"] = "40",
					},
					["changes"] = {
						{
							["value"] = {
								0.258823529411765, -- [1]
								1, -- [2]
								0.0705882352941177, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["op"] = ">",
						["value"] = "75",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.00392156862745098, -- [2]
								0.458823529411765, -- [3]
								1, -- [4]
							},
							["property"] = "sparkColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "value",
						["op"] = "==",
						["value"] = "100",
					},
					["changes"] = {
						{
							["value"] = {
								0.909803921568627, -- [1]
								0.643137254901961, -- [2]
								0.105882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "timerColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.67843137254902, -- [2]
								0.286274509803922, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
		},
		["Healthstone up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["width"] = 83.3333435058594,
			["parent"] = "Opportunities",
			["xOffset"] = 0,
			["displayText"] = "Healthstone",
			["fixedWidth"] = 200,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 5512,
			},
			["regionType"] = "text",
			["height"] = 15.8333330154419,
			["id"] = "Healthstone up",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["color"] = {
				0.325490196078431, -- [1]
				0.525490196078431, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 5512,
				["use_count"] = true,
				["use_absorbMode"] = true,
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
				["type"] = "status",
				["spellName"] = 0,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["use_itemName"] = true,
				["event"] = "Item Count",
				["count"] = "0",
				["realSpellName"] = 0,
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
				},
				["showOn"] = "showOnReady",
				["unevent"] = "auto",
				["unit"] = "player",
				["count_operator"] = ">",
			},
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["use_combat"] = true,
				["spellknown"] = 108238,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Sunfire"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 93402,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["orientation"] = "HORIZONTAL",
			["borderBackdrop"] = "Blizzard Tooltip",
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["inverse"] = false,
			["spark"] = false,
			["untrigger"] = {
			},
			["parent"] = "De/Buffs",
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["displayTextLeft"] = "%n %p",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["names"] = {
							"Sunfire", -- [1]
						},
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkHidden"] = "NEVER",
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["trigger"] = {
				["rem"] = "5.4",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["names"] = {
					"Sunfire", -- [1]
				},
				["remOperator"] = ">=",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["borderOffset"] = 5,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["text2Point"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["glow"] = false,
			["disjunctive"] = "any",
			["text1"] = "%p",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["desaturate"] = false,
			["id"] = "Sunfire",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["width"] = 248,
			["sparkWidth"] = 10,
			["useAdjustededMin"] = false,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "expirationTime",
						["value"] = "5.4",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.580392156862745, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.0588235294117647, -- [2]
								0, -- [3]
								0.288460612297058, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [2]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
		},
		["Cultivation Focus"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["desaturate"] = false,
			["customText"] = "function()\n    name, a = UnitName(\"focus\")\n    n = name\n    len = string.len(name)\n    if len > 5 then\n    n = string.sub(1, 5)\n    end\n    return n\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 248,
			["text1Enabled"] = true,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
			},
			["displayTextLeft"] = "F/%n %p",
			["sparkHidden"] = "NEVER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["type"] = "aura",
				["names"] = {
					"Cultivation", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["xOffset"] = 10,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["sparkRotation"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkRotationMode"] = "AUTO",
			["id"] = "Cultivation Focus",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["borderOffset"] = 5,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["Rejuvenation 2 Target"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.12156862745098, -- [1]
				0.298039215686275, -- [2]
				0.0588235294117647, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = true,
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 774,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["text2"] = "%p",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["customText"] = "function()\n    return UnitName(\"target\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["borderOffset"] = 5,
			["width"] = 248,
			["sparkRotationMode"] = "AUTO",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["sparkHidden"] = "NEVER",
			["backdropInFront"] = false,
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["names"] = {
					"Rejuvenation (Germination)", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["xOffset"] = 10,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["textFlags"] = "None",
			["text1"] = "%p",
			["text1Enabled"] = true,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["id"] = "Rejuvenation 2 Target",
			["additional_triggers"] = {
			},
			["displayTextLeft"] = "T/%n %p",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["useAdjustededMin"] = false,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["proc - omen of clarity"] = {
			["outline"] = "OUTLINE",
			["glow"] = false,
			["text1FontSize"] = 28,
			["parent"] = "Opportunities",
			["displayText"] = "%n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["font"] = "Oswald",
			["text1Enabled"] = false,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Omen of Clarity", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["untrigger"] = {
			},
			["desaturate"] = false,
			["fixedWidth"] = 200,
			["text1Point"] = "CENTER",
			["icon"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 15.8333415985107,
			["numTriggers"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["spellknown"] = 16864,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextEnabled"] = true,
			["text2Point"] = "CENTER",
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["width"] = 108.333267211914,
			["text1Color"] = {
				0.776470588235294, -- [1]
				0.635294117647059, -- [2]
				0.494117647058824, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["stickyDuration"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["text1FontFlags"] = "THICKOUTLINE",
			["xOffset"] = 0,
			["text2FontSize"] = 24,
			["justify"] = "LEFT",
			["zoom"] = 0,
			["anchorFrameParent"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "2002",
			["text2"] = "%p",
			["auto"] = true,
			["text1"] = "%s",
			["id"] = "proc - omen of clarity",
			["anchorFrameFrame"] = "WeakAuras:lunar proc",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["internalVersion"] = 3,
			["text1Containment"] = "OUTSIDE",
			["inverse"] = false,
			["color"] = {
				0.796078431372549, -- [1]
				0.141176470588235, -- [2]
				0.12156862745098, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["disjunctive"] = "all",
			["wordWrap"] = "WordWrap",
		},
		["Combo Point 3"] = {
			["color"] = {
				1, -- [1]
				0.0352941176470588, -- [2]
				0.2, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["rotate"] = true,
			["parent"] = "Combo Points",
			["height"] = 30,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
			["rotation"] = 0,
			["internalVersion"] = 3,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_power"] = true,
				["use_unit"] = true,
				["powertype"] = 4,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["power"] = "1",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnActive",
				["use_absorbMode"] = true,
				["unit"] = "player",
				["use_requirePowerType"] = false,
			},
			["id"] = "Combo Point 3",
			["frameStrata"] = 1,
			["width"] = 30,
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["init_started"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "power",
						["value"] = "3",
						["op"] = "<",
					},
					["changes"] = {
						{
							["value"] = {
								0.266666666666667, -- [1]
								0.266666666666667, -- [2]
								0.266666666666667, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [2]
					},
				}, -- [2]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["ROGUE"] = true,
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Tiger's Fury up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["parent"] = "Opportunities",
			["color"] = {
				0.796078431372549, -- [1]
				0.490196078431373, -- [2]
				0.450980392156863, -- [3]
				1, -- [4]
			},
			["displayText"] = "%n",
			["yOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 5217,
			},
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["disjunctive"] = "all",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Tiger's Fury up",
			["width"] = 83.3333740234375,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unit"] = "player",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Tiger's Fury",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
				},
				["spellName"] = 5217,
			},
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["regionType"] = "text",
			["height"] = 15.8333415985107,
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Troll",
					["multi"] = {
						["Troll"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 5217,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["New"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["disjunctive"] = "all",
			["scale"] = 1,
			["internalVersion"] = 3,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderOffset"] = 5,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["id"] = "New",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderEdge"] = "None",
		},
		["Grove Tending Focus"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["text1FontFlags"] = "OUTLINE",
			["customText"] = "function()\n    name, a = UnitName(\"focus\")\n    n = name\n    len = string.len(name)\n    if len > 5 then\n    n = string.sub(1, 5)\n    end\n    return n\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["borderOffset"] = 5,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayTextLeft"] = "F/%n %p",
			["id"] = "Grove Tending Focus",
			["sparkRotationMode"] = "AUTO",
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Grove Tending", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["timer"] = true,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Font"] = "Oswald",
			["borderInFront"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["height"] = 26,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["auto"] = true,
			["text2"] = "%p",
		},
		["Regrowth Focus"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 8936,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["text1FontFlags"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 2,
			["disjunctive"] = "any",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["customText"] = "function()\n    return UnitName(\"focus\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["id"] = "Regrowth Focus",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Regrowth", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["textFlags"] = "None",
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["height"] = 26,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Font"] = "Oswald",
			["borderInFront"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["timer"] = true,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["borderOffset"] = 5,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["unit"] = "focus",
						["names"] = {
							"Regrowth", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkHidden"] = "NEVER",
			["displayTextLeft"] = "F/%n %p",
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Containment"] = "INSIDE",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.196078431372549, -- [2]
								0.109803921568627, -- [3]
								0.555554360151291, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["auto"] = true,
			["text2"] = "%p",
		},
		["Wild Growth Focus"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 48438,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["text1FontFlags"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 2,
			["disjunctive"] = "any",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["customText"] = "function()\n    return UnitName(\"focus\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["id"] = "Wild Growth Focus",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Wild Growth", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["textFlags"] = "None",
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["timer"] = true,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Font"] = "Oswald",
			["borderInFront"] = true,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["height"] = 26,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["borderOffset"] = 5,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkHidden"] = "NEVER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["unit"] = "focus",
						["names"] = {
							"Wild Growth", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["displayTextLeft"] = "F/%n %p",
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Containment"] = "INSIDE",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.196078431372549, -- [2]
								0.109803921568627, -- [3]
								0.555554360151291, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["auto"] = true,
			["text2"] = "%p",
		},
		["Details! Aura Group"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
			},
			["xOffset"] = -678.999450683594,
			["yOffset"] = 212.765991210938,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["space"] = 0,
			["background"] = "None",
			["actions"] = {
			},
			["internalVersion"] = 3,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["rotation"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = true,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "Details! Aura Group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["radius"] = 200,
			["numTriggers"] = 1,
			["stagger"] = 0,
			["init_started"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["backgroundInset"] = 0,
		},
		["Lifebloom Self"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.627450980392157, -- [1]
				0.996078431372549, -- [2]
				0.454901960784314, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["borderOffset"] = 5,
			["customText"] = "",
			["untrigger"] = {
			},
			["desaturate"] = false,
			["width"] = 248,
			["sparkRotationMode"] = "AUTO",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "My %n %p",
			["sparkHidden"] = "NEVER",
			["backdropInFront"] = false,
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["type"] = "aura",
				["names"] = {
					"Lifebloom", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["timer"] = true,
			["height"] = 26,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["icon"] = true,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["id"] = "Lifebloom Self",
			["additional_triggers"] = {
			},
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["2x lunar"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["rotate"] = true,
			["color"] = {
				0.196078431372549, -- [1]
				0.196078431372549, -- [2]
				0.196078431372549, -- [3]
				0.309828281402588, -- [4]
			},
			["height"] = 30,
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["parent"] = "Empowerment",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["discrete_rotation"] = 0,
			["internalVersion"] = 3,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "2x lunar",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showActiveOrMissing",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Lunar Empowerment", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["frameStrata"] = 1,
			["width"] = 48,
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["disjunctive"] = "custom",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["value"] = "2",
						["op"] = ">=",
					},
					["changes"] = {
						{
							["value"] = {
								0.607843137254902, -- [1]
								0.670588235294118, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.152941176470588, -- [2]
								0.0431372549019608, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["customTriggerLogic"] = "function()\nreturn true\nend",
		},
		["Survival Instincts up"] = {
			["outline"] = "OUTLINE",
			["disjunctive"] = "all",
			["displayText"] = "%n x%c",
			["customText"] = "function()\n    local charges, b, c, d, e = GetSpellCharges(\"Survival Instincts\")\n    return charges\nend\n\n\n\n",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 61336,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 3,
			["wordWrap"] = "WordWrap",
			["trigger"] = {
				["spellName"] = 61336,
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Survival Instincts",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["use_unit"] = true,
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["font"] = "Oswald",
			["height"] = 15.8333415985107,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 61336,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["regionType"] = "text",
			["xOffset"] = 0,
			["justify"] = "LEFT",
			["anchorFrameType"] = "SCREEN",
			["id"] = "Survival Instincts up",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["width"] = 136.666732788086,
			["color"] = {
				0.325490196078431, -- [1]
				0.525490196078431, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["conditions"] = {
			},
			["fixedWidth"] = 200,
			["selfPoint"] = "BOTTOM",
			["parent"] = "Opportunities",
		},
		["1x lunar"] = {
			["disjunctive"] = "custom",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = ">=",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								0.607843137254902, -- [1]
								0.670588235294118, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.152941176470588, -- [2]
								0.0431372549019608, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["color"] = {
				0.196078431372549, -- [1]
				0.196078431372549, -- [2]
				0.196078431372549, -- [3]
				0.309828281402588, -- [4]
			},
			["height"] = 30,
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["parent"] = "Empowerment",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["mirror"] = false,
			["id"] = "1x lunar",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["rotation"] = 0,
			["internalVersion"] = 3,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showActiveOrMissing",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Lunar Empowerment", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 48,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Medallion up"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "%n",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 208683,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 3,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["itemName"] = 0,
				["use_absorbMode"] = true,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["spellName"] = 208683,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["names"] = {
				},
				["use_itemName"] = true,
				["unevent"] = "auto",
				["use_itemSlot"] = true,
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unit"] = "player",
				["showOn"] = "showOnReady",
				["realSpellName"] = "Gladiator's Medallion",
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
			},
			["font"] = "Oswald",
			["height"] = 15.8333415985107,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 208683,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["regionType"] = "text",
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["justify"] = "LEFT",
			["conditions"] = {
			},
			["id"] = "Medallion up",
			["color"] = {
				0.325490196078431, -- [1]
				0.525490196078431, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 146.66667175293,
			["disjunctive"] = "all",
			["yOffset"] = 0,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_range"] = false,
						["threatUnit"] = "target",
						["range"] = 8,
						["use_threatUnit"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["fixedWidth"] = 200,
			["parent"] = "Opportunities",
			["wordWrap"] = "WordWrap",
		},
		["Empowerment"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"3x solar", -- [1]
				"2x solar", -- [2]
				"1x solar", -- [3]
				"1x lunar", -- [4]
				"2x lunar", -- [5]
				"3x lunar", -- [6]
			},
			["disjunctive"] = "all",
			["yOffset"] = 20,
			["anchorPoint"] = "TOP",
			["activeTriggerMode"] = -10,
			["space"] = 0,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["stagger"] = 0,
			["height"] = 30,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:Bars",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 0,
			["id"] = "Empowerment",
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["width"] = 288.000061035156,
			["anchorFrameType"] = "SELECTFRAME",
			["align"] = "CENTER",
			["numTriggers"] = 1,
			["internalVersion"] = 3,
			["untrigger"] = {
			},
			["rotation"] = 0,
			["xOffset"] = -0.0001220703125,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["Lifebloom Focus"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["text1FontFlags"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 2,
			["disjunctive"] = "any",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["customText"] = "function()\n    return UnitName(\"focus\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["id"] = "Lifebloom Focus",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Lifebloom", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["textFlags"] = "None",
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["height"] = 26,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Font"] = "Oswald",
			["borderInFront"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["timer"] = true,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["borderOffset"] = 5,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["unit"] = "focus",
						["names"] = {
							"Lifebloom", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkHidden"] = "NEVER",
			["displayTextLeft"] = "F/%n %p",
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Containment"] = "INSIDE",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.196078431372549, -- [2]
								0.109803921568627, -- [3]
								0.555554360151291, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["auto"] = true,
			["text2"] = "%p",
		},
		["Rejuvenation 2 Self"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.627450980392157, -- [1]
				0.996078431372549, -- [2]
				0.454901960784314, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_spellknown"] = true,
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 774,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["text1FontFlags"] = "OUTLINE",
			["customText"] = "",
			["untrigger"] = {
			},
			["desaturate"] = false,
			["width"] = 248,
			["customTextUpdate"] = "update",
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["displayTextLeft"] = "My %n %p",
			["sparkHidden"] = "NEVER",
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["type"] = "aura",
				["names"] = {
					"Rejuvenation (Germination)", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["xOffset"] = 10,
			["sparkHeight"] = 30,
			["timer"] = true,
			["height"] = 26,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["icon"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["id"] = "Rejuvenation 2 Self",
			["additional_triggers"] = {
			},
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["New 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["init_started"] = 1,
			["disjunctive"] = "all",
			["displayText"] = "%p",
			["conditions"] = {
			},
			["yOffset"] = 0,
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "New 2",
			["width"] = 11.6666078567505,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["selfPoint"] = "BOTTOM",
			["height"] = 11.6666812896729,
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_absorbMode"] = true,
				["event"] = "Unit Characteristics",
				["unit"] = "player",
				["use_form"] = false,
				["use_unit"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
		},
		["Rejuvenation 2 Focus"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 2,
			["disjunctive"] = "any",
			["text2Font"] = "Friz Quadrata TT",
			["customText"] = "function()\n    return UnitName(\"focus\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["borderOffset"] = 5,
			["anchorFrameType"] = "SCREEN",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "F/%n %p",
			["textSize"] = 12,
			["id"] = "Rejuvenation 2 Focus",
			["sparkRotationMode"] = "AUTO",
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Rejuvenation (Germination)", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["height"] = 26,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInFront"] = true,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["timer"] = true,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkHidden"] = "NEVER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["unit"] = "focus",
						["names"] = {
							"Rejuvenation (Germination)", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Containment"] = "INSIDE",
			["useAdjustededMin"] = false,
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.196078431372549, -- [2]
								0.109803921568627, -- [3]
								0.555554360151291, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["auto"] = true,
			["text2"] = "%p",
		},
		["Cenarion Ward Self"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.627450980392157, -- [1]
				0.996078431372549, -- [2]
				0.454901960784314, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["auto"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["text2Font"] = "Friz Quadrata TT",
			["customText"] = "",
			["untrigger"] = {
			},
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["sparkRotationMode"] = "AUTO",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["id"] = "Cenarion Ward Self",
			["backdropInFront"] = false,
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
					102352, -- [1]
				},
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Cenarion Ward", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stickyDuration"] = false,
			["icon"] = true,
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["timer"] = true,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Font"] = "Oswald",
			["borderInFront"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["height"] = 26,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["text1FontFlags"] = "OUTLINE",
			["parent"] = "De/Buffs",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["displayTextLeft"] = "My %n %p",
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Containment"] = "INSIDE",
			["text2"] = "%p",
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0,
		},
		["Cenarion Ward Target"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.12156862745098, -- [1]
				0.298039215686275, -- [2]
				0.0588235294117647, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["text1Containment"] = "INSIDE",
			["customText"] = "function()\n    return UnitName(\"target\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "T/%n %p",
			["additional_triggers"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
					102352, -- [1]
				},
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Cenarion Ward", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["text1Enabled"] = true,
			["textFlags"] = "None",
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["height"] = 26,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInFront"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["timer"] = true,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["icon"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["id"] = "Cenarion Ward Target",
			["sparkHidden"] = "NEVER",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["width"] = 248,
			["borderOffset"] = 5,
			["text1FontFlags"] = "OUTLINE",
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["zoom"] = 0,
			["text2"] = "%p",
		},
		["My HOTs"] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
			},
			["disjunctive"] = "all",
			["yOffset"] = 0,
			["anchorPoint"] = "TOPLEFT",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "RIGHT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:Bars",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "My HOTs",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["xOffset"] = 0,
			["numTriggers"] = 1,
			["rotation"] = 0,
			["untrigger"] = {
			},
			["internalVersion"] = 3,
			["align"] = "CENTER",
			["backgroundInset"] = 0,
		},
		["Cenarion Ward Focus"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_spellknown"] = false,
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["text1Containment"] = "INSIDE",
			["customText"] = "function()\n    name, a = UnitName(\"focus\")\n    n = name\n    len = string.len(name)\n    if len > 5 then\n    n = string.sub(1, 5)\n    end\n    return n\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["width"] = 248,
			["icon"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["sparkHidden"] = "NEVER",
			["textSize"] = 12,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							102352, -- [1]
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["names"] = {
							"Cenarion Ward", -- [1]
						},
						["unit"] = "focus",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["type"] = "aura",
				["names"] = {
					"Cenarion Ward", -- [1]
				},
				["spellIds"] = {
					102352, -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkRotation"] = 0,
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["timer"] = true,
			["height"] = 26,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Font"] = "Oswald",
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["textFlags"] = "None",
			["text1"] = "%p",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["borderOffset"] = 5,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["customTextUpdate"] = "update",
			["id"] = "Cenarion Ward Focus",
			["displayTextLeft"] = "F/%n %p",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMin"] = false,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.196078431372549, -- [2]
								0.109803921568627, -- [3]
								0.555554360151291, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2Enabled"] = false,
			["borderInset"] = 11,
		},
		["Barkskin up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				0.325490196078431, -- [1]
				0.525490196078431, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["disjunctive"] = "all",
			["displayText"] = "%n (Me)",
			["fixedWidth"] = 200,
			["yOffset"] = 0,
			["regionType"] = "text",
			["height"] = 15.8333415985107,
			["anchorFrameType"] = "SCREEN",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Barkskin up",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["unit"] = "player",
				["realSpellName"] = "Barkskin",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 22812,
			},
			["frameStrata"] = 1,
			["width"] = 98.3333511352539,
			["wordWrap"] = "WordWrap",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 22812,
			},
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 22812,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Opportunities",
		},
		["proc - owlkin frenzy"] = {
			["outline"] = "OUTLINE",
			["text2Point"] = "CENTER",
			["text1FontSize"] = 28,
			["cooldownTextEnabled"] = true,
			["displayText"] = "%n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["icon"] = true,
			["disjunctive"] = "all",
			["text1Enabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Owlkin Frenzy", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["untrigger"] = {
			},
			["conditions"] = {
			},
			["desaturate"] = false,
			["font"] = "Oswald",
			["text1Point"] = "CENTER",
			["color"] = {
				0.796078431372549, -- [1]
				0.141176470588235, -- [2]
				0.12156862745098, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 15.8333415985107,
			["inverse"] = false,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "OUTSIDE",
			["internalVersion"] = 3,
			["fontSize"] = 16,
			["text2Containment"] = "INSIDE",
			["anchorFrameType"] = "SELECTFRAME",
			["text1Color"] = {
				0.776470588235294, -- [1]
				0.635294117647059, -- [2]
				0.494117647058824, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameFrame"] = "WeakAuras:lunar proc",
			["regionType"] = "text",
			["text1FontFlags"] = "THICKOUTLINE",
			["anchorFrameParent"] = false,
			["text2FontSize"] = 24,
			["auto"] = true,
			["text2"] = "%p",
			["text1"] = "%s",
			["text1Font"] = "2002",
			["text2Font"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["xOffset"] = 0,
			["id"] = "proc - owlkin frenzy",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["width"] = 97.5000762939453,
			["glow"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fixedWidth"] = 200,
			["parent"] = "Opportunities",
			["wordWrap"] = "WordWrap",
		},
		["Rejuvenation Target"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.12156862745098, -- [1]
				0.298039215686275, -- [2]
				0.0588235294117647, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 774,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInset"] = 11,
			["text2Enabled"] = false,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["icon"] = true,
			["customText"] = "function()\n    local n\n    n, a = UnitName(\"target\")\n    if string.len(n) > 5 then\n        n = string.sub(1, 5)\n    end\n    return n\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["sparkRotation"] = 0,
			["displayTextLeft"] = "T/%n %p",
			["id"] = "Rejuvenation Target",
			["sparkRotationMode"] = "AUTO",
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Rejuvenation", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["textFlags"] = "None",
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["timer"] = true,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Font"] = "Oswald",
			["borderInFront"] = true,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["height"] = 26,
			["xOffset"] = 10,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["borderOffset"] = 5,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["width"] = 248,
			["useAdjustededMin"] = false,
			["text1Enabled"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["text2"] = "%p",
		},
		["Rejuvenation Self"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.627450980392157, -- [1]
				0.996078431372549, -- [2]
				0.454901960784314, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 774,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["alpha"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["text2Font"] = "Friz Quadrata TT",
			["customText"] = "",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["anchorFrameType"] = "SCREEN",
			["borderOffset"] = 5,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["id"] = "Rejuvenation Self",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Rejuvenation", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["icon"] = true,
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["height"] = 26,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInFront"] = true,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["timer"] = true,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkHidden"] = "NEVER",
			["additional_triggers"] = {
			},
			["displayTextLeft"] = "My %n %p",
			["frameStrata"] = 1,
			["width"] = 248,
			["text1Containment"] = "INSIDE",
			["useAdjustededMin"] = false,
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
			},
			["auto"] = true,
			["text2"] = "%p",
		},
		["Regrowth Target"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.12156862745098, -- [1]
				0.298039215686275, -- [2]
				0.0588235294117647, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 8936,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["spark"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["numTriggers"] = 1,
			["disjunctive"] = "any",
			["text1Containment"] = "INSIDE",
			["customText"] = "function()\n    return UnitName(\"target\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "T/%n %p",
			["additional_triggers"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 3,
			["timerSize"] = 12,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["rem"] = "1",
				["use_specific_unit"] = false,
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Regrowth", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["text1Enabled"] = true,
			["textFlags"] = "None",
			["text1"] = "%p",
			["text2Point"] = "CENTER",
			["timer"] = true,
			["timerFlags"] = "None",
			["glow"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["sparkOffsetX"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInFront"] = true,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["height"] = 26,
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["parent"] = "De/Buffs",
			["icon"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkHidden"] = "NEVER",
			["id"] = "Regrowth Target",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["width"] = 248,
			["borderOffset"] = 5,
			["text1FontFlags"] = "OUTLINE",
			["inverse"] = false,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["zoom"] = 0,
			["text2"] = "%p",
		},
		["Thorns up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				0.4, -- [1]
				0.886274509803922, -- [2]
				0.505882352941176, -- [3]
				1, -- [4]
			},
			["parent"] = "Opportunities",
			["disjunctive"] = "all",
			["displayText"] = "%n",
			["fixedWidth"] = 200,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 236696,
			},
			["anchorPoint"] = "CENTER",
			["height"] = 15.8333415985107,
			["width"] = 53.3333702087402,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = 0,
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "Thorns up",
			["trigger"] = {
				["spellName"] = 236696,
				["type"] = "status",
				["unit"] = "player",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Thorns",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["regionType"] = "text",
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_combat"] = true,
				["spellknown"] = 236696,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["De/Buffs"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Rejuvenation Self", -- [1]
				"Rejuvenation 2 Self", -- [2]
				"Regrowth Self", -- [3]
				"Lifebloom Self", -- [4]
				"Cenarion Ward Self", -- [5]
				"Wild Growth Self", -- [6]
				"Lifebloom Target", -- [7]
				"Cenarion Ward Target", -- [8]
				"Regrowth Target", -- [9]
				"Wild Growth Target", -- [10]
				"Rejuvenation Target", -- [11]
				"Rejuvenation 2 Target", -- [12]
				"Lifebloom Focus", -- [13]
				"Rejuvenation Focus", -- [14]
				"Rejuvenation 2 Focus", -- [15]
				"Wild Growth Focus", -- [16]
				"Regrowth Focus", -- [17]
				"Cenarion Ward Focus", -- [18]
				"Grove Tending Focus", -- [19]
				"Cultivation Focus", -- [20]
				"Starfall", -- [21]
				"Stellar Flare", -- [22]
				"Sunfire", -- [23]
				"Moonfire", -- [24]
				"Feral Frenzy", -- [25]
				"Maim", -- [26]
				"Thrash", -- [27]
				"Rake", -- [28]
				"Rip", -- [29]
			},
			["disjunctive"] = "all",
			["yOffset"] = 0,
			["anchorPoint"] = "BOTTOMRIGHT",
			["activeTriggerMode"] = -10,
			["space"] = 3,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["height"] = 838,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = true,
			["scale"] = 1,
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:Bars",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "De/Buffs",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 248,
			["align"] = "LEFT",
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["internalVersion"] = 3,
			["init_started"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["backgroundInset"] = 0,
			["rotation"] = 0,
		},
		["Combo Point 1"] = {
			["color"] = {
				1, -- [1]
				0.0352941176470588, -- [2]
				0.2, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["rotate"] = true,
			["disjunctive"] = "any",
			["height"] = 30,
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["xOffset"] = 0,
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["width"] = 30,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
			["rotation"] = 0,
			["internalVersion"] = 3,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Combo Point 1",
			["trigger"] = {
				["use_absorbMode"] = true,
				["unit"] = "player",
				["powertype"] = 4,
				["use_powertype"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = ">=",
				["event"] = "Power",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["spellIds"] = {
				},
				["use_power"] = true,
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["power"] = "1",
				["use_requirePowerType"] = false,
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 1,
			["mirror"] = false,
			["init_started"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "power",
						["value"] = "1",
						["op"] = "<",
					},
					["changes"] = {
						{
							["value"] = {
								0.266666666666667, -- [1]
								0.266666666666667, -- [2]
								0.266666666666667, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [2]
					},
				}, -- [2]
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["ROGUE"] = true,
						["DRUID"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Combo Points",
		},
		["Typhoon up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["xOffset"] = 0,
			["disjunctive"] = "all",
			["parent"] = "Opportunities",
			["displayText"] = "%n",
			["conditions"] = {
			},
			["yOffset"] = 0,
			["regionType"] = "text",
			["height"] = 15.8333415985107,
			["anchorFrameType"] = "SCREEN",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Typhoon up",
			["trigger"] = {
				["spellName"] = 132469,
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Typhoon",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["use_unit"] = true,
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["frameStrata"] = 1,
			["width"] = 62.4999580383301,
			["wordWrap"] = "WordWrap",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 132469,
			},
			["fixedWidth"] = 200,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_combat"] = true,
				["spellknown"] = 132469,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.325490196078431, -- [1]
				0.525490196078431, -- [2]
				0.886274509803922, -- [3]
				1, -- [4]
			},
		},
		["Moonfire"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.133333333333333, -- [1]
				0.352941176470588, -- [2]
				0.796078431372549, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 8921,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["stacksFont"] = "Friz Quadrata TT",
			["xOffset"] = 10,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["orientation"] = "HORIZONTAL",
			["borderBackdrop"] = "Blizzard Tooltip",
			["text2Font"] = "Friz Quadrata TT",
			["disjunctive"] = "any",
			["inverse"] = false,
			["spark"] = false,
			["untrigger"] = {
			},
			["parent"] = "De/Buffs",
			["width"] = 248,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["displayTextLeft"] = "%n %p",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["names"] = {
							"Moonfire", -- [1]
						},
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkHidden"] = "NEVER",
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["trigger"] = {
				["rem"] = "6.6",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["names"] = {
					"Moonfire", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HARMFUL",
			},
			["borderOffset"] = 5,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Font"] = "Oswald",
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["text1"] = "%p",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["text1Containment"] = "INSIDE",
			["id"] = "Moonfire",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkWidth"] = 10,
			["text1FontFlags"] = "OUTLINE",
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "expirationTime",
						["value"] = "6.6",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.662745098039216, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.196078431372549, -- [2]
								0.109803921568627, -- [3]
								0.373930871486664, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [2]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
		},
		["Berserk up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				0.796078431372549, -- [1]
				0.490196078431373, -- [2]
				0.450980392156863, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["displayText"] = "%n",
			["yOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 106951,
			},
			["anchorPoint"] = "CENTER",
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "BOTTOM",
			["id"] = "Berserk up",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellName"] = 106951,
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["names"] = {
				},
				["realSpellName"] = "Berserk",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["use_unit"] = true,
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 60.0000114440918,
			["wordWrap"] = "WordWrap",
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["regionType"] = "text",
			["height"] = 15.8333415985107,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Troll",
					["multi"] = {
						["Troll"] = true,
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 106951,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Opportunities",
		},
		["3x solar"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["rotate"] = true,
			["color"] = {
				0.196078431372549, -- [1]
				0.196078431372549, -- [2]
				0.196078431372549, -- [3]
				0.309828281402588, -- [4]
			},
			["height"] = 30,
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["parent"] = "Empowerment",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["discrete_rotation"] = 0,
			["internalVersion"] = 3,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "3x solar",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showActiveOrMissing",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Solar Empowerment", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["frameStrata"] = 1,
			["width"] = 48,
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["disjunctive"] = "custom",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["value"] = "3",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.752941176470588, -- [2]
								0.411764705882353, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.152941176470588, -- [2]
								0.0431372549019608, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["customTriggerLogic"] = "function()\nreturn true\nend",
		},
		["Celestial Alignment up"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				0.796078431372549, -- [1]
				0.490196078431373, -- [2]
				0.450980392156863, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["parent"] = "Opportunities",
			["displayText"] = "%n",
			["conditions"] = {
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 194223,
			},
			["regionType"] = "text",
			["height"] = 15.8333415985107,
			["anchorFrameType"] = "SCREEN",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unit"] = "player",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_absorbMode"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Celestial Alignment",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["showOn"] = "showOnReady",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
				},
				["spellName"] = 194223,
			},
			["id"] = "Celestial Alignment up",
			["frameStrata"] = 1,
			["width"] = 134.999984741211,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["font"] = "Oswald",
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Rejuvenation Focus"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.325490196078431, -- [1]
				0.796078431372549, -- [2]
				0.156862745098039, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["spellknown"] = 774,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["text1Containment"] = "INSIDE",
			["customText"] = "function()\n    return UnitName(\"focus\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["width"] = 248,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["sparkHidden"] = "NEVER",
			["textSize"] = 12,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_specific_unit"] = false,
						["showOn"] = "showOnMissing",
						["unit"] = "focus",
						["names"] = {
							"Rejuvenation", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "focus",
				["type"] = "aura",
				["names"] = {
					"Rejuvenation", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnMissing",
				["remOperator"] = ">",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["customTextUpdate"] = "update",
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Font"] = "Oswald",
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["textFlags"] = "None",
			["text1"] = "%p",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["borderOffset"] = 5,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkRotation"] = 0,
			["id"] = "Rejuvenation Focus",
			["displayTextLeft"] = "F/%n %p",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["text1Enabled"] = true,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.196078431372549, -- [2]
								0.109803921568627, -- [3]
								0.555554360151291, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2Enabled"] = false,
			["borderInset"] = 11,
		},
		["Combo Points"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Combo Point 1", -- [1]
				"Combo Point 2", -- [2]
				"Combo Point 3", -- [3]
				"Combo Point 4", -- [4]
				"Combo Point 5", -- [5]
			},
			["disjunctive"] = "all",
			["yOffset"] = 0,
			["anchorPoint"] = "TOP",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["stagger"] = 0,
			["height"] = 30,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = "false",
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:Bars",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "Combo Points",
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["width"] = 158.000061035156,
			["anchorFrameType"] = "SELECTFRAME",
			["align"] = "RIGHT",
			["numTriggers"] = 1,
			["internalVersion"] = 3,
			["untrigger"] = {
			},
			["rotation"] = 0,
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["Wild Growth Target"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["xOffset"] = 10,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.12156862745098, -- [1]
				0.298039215686275, -- [2]
				0.0588235294117647, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 8936,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["icon"] = true,
			["customText"] = "function()\n    return UnitName(\"target\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 248,
			["desaturate"] = false,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["textSize"] = 12,
			["additional_triggers"] = {
			},
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["names"] = {
					"Wild Growth", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnActive",
				["remOperator"] = ">",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkRotationMode"] = "AUTO",
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["cooldownTextEnabled"] = true,
			["sparkHeight"] = 30,
			["height"] = 26,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Font"] = "Oswald",
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["sparkWidth"] = 10,
			["text1"] = "%p",
			["text1Enabled"] = true,
			["sparkRotation"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["id"] = "Wild Growth Target",
			["sparkHidden"] = "NEVER",
			["displayTextLeft"] = "T/%n %p",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["borderOffset"] = 5,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["text2Enabled"] = false,
			["borderInset"] = 11,
		},
		["Details! Boss Mods Group"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
			},
			["xOffset"] = 0,
			["yOffset"] = 370,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 3,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["rotation"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = true,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "Details! Boss Mods Group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["stagger"] = 0,
			["numTriggers"] = 1,
			["backgroundInset"] = 0,
			["init_started"] = 1,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["radius"] = 200,
		},
		["3x lunar"] = {
			["disjunctive"] = "custom",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = "==",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								0.607843137254902, -- [1]
								0.670588235294118, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 0,
						["variable"] = "stacks",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.152941176470588, -- [2]
								0.0431372549019608, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["color"] = {
				0.196078431372549, -- [1]
				0.196078431372549, -- [2]
				0.196078431372549, -- [3]
				0.309828281402588, -- [4]
			},
			["height"] = 30,
			["customTriggerLogic"] = "function()\nreturn true\nend",
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["parent"] = "Empowerment",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = -10,
			["mirror"] = false,
			["id"] = "3x lunar",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["rotation"] = 0,
			["internalVersion"] = 3,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["showOn"] = "showActiveOrMissing",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Lunar Empowerment", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 48,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["yOffset"] = 0,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Lifebloom Target"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["text1FontSize"] = 36,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.12156862745098, -- [1]
				0.298039215686275, -- [2]
				0.0588235294117647, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["text1Point"] = "CENTER",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_spellknown"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "aurabar",
			["stacks"] = false,
			["text2FontSize"] = 24,
			["texture"] = "BantoBar",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["borderInset"] = 11,
			["text2"] = "%p",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["zoom"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["inverse"] = false,
			["disjunctive"] = "any",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["customText"] = "function()\n    return UnitName(\"target\")\nend\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
			["untrigger"] = {
			},
			["borderOffset"] = 5,
			["width"] = 248,
			["customTextUpdate"] = "update",
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["displayTextLeft"] = "T/%n %p",
			["sparkHidden"] = "NEVER",
			["backdropInFront"] = false,
			["internalVersion"] = 3,
			["displayTextRight"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "1",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["type"] = "aura",
				["names"] = {
					"Lifebloom", -- [1]
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["remOperator"] = ">",
				["showOn"] = "showOnActive",
				["use_specific_unit"] = false,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "De/Buffs",
			["xOffset"] = 10,
			["sparkHeight"] = 30,
			["timer"] = true,
			["height"] = 26,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["borderEdge"] = "None",
			["text1Font"] = "Oswald",
			["borderSize"] = 16,
			["border"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["text2Point"] = "CENTER",
			["textFlags"] = "None",
			["text1"] = "%p",
			["text1Enabled"] = true,
			["color"] = {
				0.533333333333333, -- [1]
				0.533333333333333, -- [2]
				0.533333333333333, -- [3]
				0.52350378036499, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "Lifebloom Target",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["useAdjustededMin"] = false,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -371.672973632813,
		["width"] = 957.499877929688,
		["height"] = 992.833374023438,
		["yOffset"] = -24.83251953125,
	},
	["editor_theme"] = "Monokai",
}
