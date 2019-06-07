local WidgetAPI = {
	ScriptObject = {
		inherits = {},
		handlers = {
			"OnLoad",
			"OnUpdate",
		},
		methods = {
			"GetScript",
			"HasScript",
			"HookScript",
			"SetScript",
		},
	},
	Object = {
		inherits = {},
		methods = {
			"GetName",
			"GetObjectType",
			"IsObjectType",
		},
	},
	UIObject = {
		inherits = {"Object"},
		methods = {
			"GetDebugName",
			"GetParent",
			"IsForbidden",
			"SetForbidden",
		},
	},
	Region = {
		inherits = {"UIObject"},
		methods = {
			"CanChangeProtectedState",
			"ClearAllPoints",
			"CreateAnimationGroup",
			"GetAlpha",
			"GetAnimationGroups",
			"GetBottom",
			"GetCenter",
			"GetEffectiveScale",
			"GetHeight",
			"GetLeft",
			"GetNumPoints",
			"GetPoint",
			"GetRect",
			"GetRight",
			"GetScale",
			"GetScaledRect",
			"GetSize",
			"GetTop",
			"GetWidth",
			"Hide",
			"IsDragging",
			"IsIgnoringParentAlpha",
			"IsIgnoringParentScale",
			"IsMouseOver",
			"IsObjectLoaded",
			"IsProtected",
			"IsRectValid",
			"IsShown",
			"IsVisible",
			"SetAllPoints",
			"SetAlpha",
			"SetHeight",
			"SetIgnoreParentAlpha",
			"SetIgnoreParentScale",
			"SetParent",
			"SetPoint",
			"SetScale",
			"SetShown",
			"SetSize",
			"SetWidth",
			"Show",
			"StopAnimating",
		},
	},
	LayeredRegion = {
		inherits = {"Region"},
		methods = {
			"GetDrawLayer",
			"SetDrawLayer",
			"SetVertexColor",
		},
	},
	FontInstance = {
		inherits = {"Object"},
		methods = {
			"GetFont",
			"GetFontObject",
			"GetIndentedWordWrap",
			"GetJustifyH",
			"GetJustifyV",
			"GetShadowColor",
			"GetShadowOffset",
			"GetSpacing",
			"GetTextColor",
			"SetFont",
			"SetFontObject",
			"SetIndentedWordWrap",
			"SetJustifyH",
			"SetJustifyV",
			"SetShadowColor",
			"SetShadowOffset",
			"SetSpacing",
			"SetTextColor",
		},
	},
	Font = {
		inherits = {"FontInstance"},
		methods = {
			"CopyFontObject",
			"GetAlpha",
			"SetAlpha",
		},
	},
	FontString = {
		inherits = {"LayeredRegion", "FontInstance"},
		methods = {
			"CalculateScreenAreaFromCharacterSpan",
			"CanNonSpaceWrap",
			"CanWordWrap",
			"FindCharacterIndexAtCoordinate",
			"GetFieldSize",
			"GetLineHeight",
			"GetMaxLines",
			"GetNumLines",
			"GetStringHeight",
			"GetStringWidth",
			"GetText",
			"GetUnboundedStringWidth",
			"GetWrappedWidth",
			"IsTruncated",
			"SetAlphaGradient",
			"SetFormattedText",
			"SetMaxLines",
			"SetNonSpaceWrap",
			"SetText",
			"SetTextHeight",
			"SetWordWrap",
		},
	},
	Texture = {
		inherits = {"LayeredRegion"},
		methods = {
			"AddMaskTexture",
			"GetAtlas",
			"GetBlendMode",
			"GetDesaturation",
			"GetHorizTile",
			"GetMaskTexture",
			"GetNonBlocking",
			"GetNumMaskTextures",
			"GetRotation",
			"GetTexCoord",
			"GetTexelSnappingBias",
			"GetTexture",
			"GetTextureFileID",
			"GetTextureFilePath",
			"GetVertTile",
			"GetVertexColor",
			"GetVertexOffset",
			"IsDesaturated",
			"IsSnappingToPixelGrid",
			"RemoveMaskTexture",
			"SetAtlas",
			"SetBlendMode",
			"SetColorTexture",
			"SetDesaturated",
			"SetDesaturation",
			"SetGradient",
			"SetGradientAlpha",
			"SetHorizTile",
			"SetMask",
			"SetNonBlocking",
			"SetRotation",
			"SetSnapToPixelGrid",
			"SetTexCoord",
			"SetTexelSnappingBias",
			"SetTexture",
			"SetVertTile",
			"SetVertexOffset",
		},
	},
	Line = {
		inherits = {"Texture"},
		methods = {
			"GetEndPoint",
			"GetStartPoint",
			"GetThickness",
			"SetEndPoint",
			"SetStartPoint",
			"SetThickness",
		},
	},
	MaskTexture = {
		inherits = {"Texture"},
		methods = {
		},
	},
	AnimationGroup = {
		inherits = {"UIObject", "ScriptObject"},
		handlers = {
			"OnFinished",
			"OnLoop",
			"OnPause",
			"OnPlay",
			"OnStop",
		},
		methods = {
			"CreateAnimation",
			"Finish",
			"GetAnimations",
			"GetDuration",
			"GetLoopState",
			"GetLooping",
			"GetProgress",
			"IsDone",
			"IsPaused",
			"IsPendingFinish",
			"IsPlaying",
			"IsSetToFinalAlpha",
			"Pause",
			"Play",
			"Restart",
			"SetLooping",
			"SetToFinalAlpha",
			"Stop",
		},
	},
	Animation = {
		inherits = {"UIObject", "ScriptObject"},
		handlers = {
			"OnFinished",
			"OnPause",
			"OnPlay",
			"OnStop",
		},
		methods = {
			"GetDuration",
			"GetElapsed",
			"GetEndDelay",
			"GetOrder",
			"GetProgress",
			"GetRegionParent",
			"GetSmoothProgress",
			"GetSmoothing",
			"GetStartDelay",
			"GetTarget",
			"IsDelaying",
			"IsDone",
			"IsPaused",
			"IsPlaying",
			"IsStopped",
			"Pause",
			"Play",
			"Restart",
			"SetChildKey",
			"SetDuration",
			"SetEndDelay",
			"SetOrder",
			"SetParent",
			"SetSmoothProgress",
			"SetSmoothing",
			"SetStartDelay",
			"SetTarget",
			"SetTargetKey",
			"Stop",
		},
	},
	Alpha = {
		inherits = {"Animation"},
		methods = {
			"GetFromAlpha",
			"GetToAlpha",
			"SetFromAlpha",
			"SetToAlpha",
		},
	},
	Scale = {
		inherits = {"Animation"},
		methods = {
			"GetFromScale",
			"GetOrigin",
			"GetScale",
			"GetToScale",
			"SetFromScale",
			"SetOrigin",
			"SetScale",
			"SetToScale",
		},
	},
	LineScale = {
		inherits = {"Animation"},
		methods = {
			"GetFromScale",
			"GetOrigin",
			"GetScale",
			"GetToScale",
			"SetFromScale",
			"SetOrigin",
			"SetScale",
			"SetToScale",
		},
	},
	Translation = {
		inherits = {"Animation"},
		methods = {
			"GetOffset",
			"SetOffset",
		},
	},
	LineTranslation = {
		inherits = {"Animation"},
		methods = {
			"GetOffset",
			"SetOffset",
		},
	},
	Path = {
		inherits = {"Animation"},
		methods = {
			"CreateControlPoint",
			"GetControlPoints",
			"GetCurve",
			"GetMaxOrder",
			"SetCurve",
		},
	},
	ControlPoint = {
		inherits = {"UIObject"},
		methods = {
			"GetOffset",
			"GetOrder",
			"SetOffset",
			"SetOrder",
			"SetParent",
		},
	},
	Rotation = {
		inherits = {"Animation"},
		methods = {
			"GetDegrees",
			"GetOrigin",
			"GetRadians",
			"SetDegrees",
			"SetOrigin",
			"SetRadians",
		},
	},
	TextureCoordTranslation = {
		inherits = {"Animation"},
		methods = {
		},
	},
	Frame = {
		inherits = {"Region", "ScriptObject"},
		handlers = {
			"OnAttributeChanged",
			"OnChar",
			"OnDisable",
			"OnDragStart",
			"OnDragStop",
			"OnEnable",
			"OnEnter",
			"OnEvent",
			"OnHide",
			"OnHyperlinkClick",
			"OnHyperlinkEnter",
			"OnHyperlinkLeave",
			"OnKeyDown",
			"OnKeyUp",
			"OnLeave",
			"OnMouseDown",
			"OnMouseUp",
			"OnMouseWheel",
			"OnReceiveDrag",
			"OnShow",
			"OnSizeChanged",
		},
		methods = {
			"CanChangeAttribute",
			"CreateFontString",
			"CreateLine",
			"CreateMaskTexture",
			"CreateTexture",
			"DisableDrawLayer",
			"DoesClipChildren",
			"EnableDrawLayer",
			"EnableJoystick",
			"EnableKeyboard",
			"EnableMouse",
			"EnableMouseWheel",
			"ExecuteAttribute",
			"GetAttribute",
			"GetBackdrop",
			"GetBackdropBorderColor",
			"GetBackdropColor",
			"GetBoundsRect",
			"GetChildren",
			"GetClampRectInsets",
			"GetDepth",
			"GetDontSavePosition",
			"GetEffectiveAlpha",
			"GetEffectiveDepth",
			"GetEffectivelyFlattensRenderLayers",
			"GetFlattensRenderLayers",
			"GetFrameLevel",
			"GetFrameStrata",
			"GetHitRectInsets",
			"GetHyperlinksEnabled",
			"GetID",
			"GetMaxResize",
			"GetMinResize",
			"GetNumChildren",
			"GetNumRegions",
			"GetPropagateKeyboardInput",
			"GetRegions",
			"IgnoreDepth",
			"IsClampedToScreen",
			"IsEventRegistered",
			"IsIgnoringDepth",
			"IsJoystickEnabled",
			"IsKeyboardEnabled",
			"IsMouseClickEnabled",
			"IsMouseEnabled",
			"IsMouseMotionEnabled",
			"IsMouseWheelEnabled",
			"IsMovable",
			"IsResizable",
			"IsToplevel",
			"IsUserPlaced",
			"Lower",
			"Raise",
			"RegisterAllEvents",
			"RegisterEvent",
			"RegisterForDrag",
			"RegisterUnitEvent",
			"SetAttribute",
			"SetBackdrop",
			"SetBackdropBorderColor",
			"SetBackdropColor",
			"SetClampRectInsets",
			"SetClampedToScreen",
			"SetClipsChildren",
			"SetDepth",
			"SetDontSavePosition",
			"SetFlattensRenderLayers",
			"SetFrameLevel",
			"SetFrameStrata",
			"SetHitRectInsets",
			"SetHyperlinksEnabled",
			"SetID",
			"SetMaxResize",
			"SetMinResize",
			"SetMouseClickEnabled",
			"SetMouseMotionEnabled",
			"SetMovable",
			"SetPropagateKeyboardInput",
			"SetResizable",
			"SetToplevel",
			"SetUserPlaced",
			"StartMoving",
			"StartSizing",
			"StopMovingOrSizing",
			"UnregisterAllEvents",
			"UnregisterEvent",
		},
	},
	Browser = {
		inherits = {"Frame"},
		handlers = {
			"OnButtonUpdate",
			"OnEditFocusGained",
			"OnEditFocusLost",
			"OnError",
			"OnEscapePressed",
			"OnExternalLink",
		},
		methods = {
			"ClearCache",
			"ClearFocus",
			"CopyExternalLink",
			"DeleteCookies",
			"HasConnection",
			"NavigateBack",
			"NavigateForward",
			"NavigateHome",
			"NavigateReload",
			"NavigateStop",
			"OpenExternalLink",
			"OpenTicket",
			"SetFocus",
			"SetZoom",
		},
	},
	Button = {
		inherits = {"Frame"},
		handlers = {
			"OnClick",
			"OnDoubleClick",
			"PostClick",
			"PreClick",
		},
		methods = {
			"Click",
			"Disable",
			"Enable",
			"GetButtonState",
			"GetDisabledFontObject",
			"GetDisabledTexture",
			"GetFontString",
			"GetHighlightFontObject",
			"GetHighlightTexture",
			"GetMotionScriptsWhileDisabled",
			"GetNormalFontObject",
			"GetNormalTexture",
			"GetPushedTextOffset",
			"GetPushedTexture",
			"GetText",
			"GetTextHeight",
			"GetTextWidth",
			"IsEnabled",
			"LockHighlight",
			"RegisterForClicks",
			"SetButtonState",
			"SetDisabledAtlas",
			"SetDisabledFontObject",
			"SetDisabledTexture",
			"SetEnabled",
			"SetFontString",
			"SetFormattedText",
			"SetHighlightAtlas",
			"SetHighlightFontObject",
			"SetHighlightTexture",
			"SetMotionScriptsWhileDisabled",
			"SetNormalAtlas",
			"SetNormalFontObject",
			"SetNormalTexture",
			"SetPushedAtlas",
			"SetPushedTextOffset",
			"SetPushedTexture",
			"SetText",
			"UnlockHighlight",
		},
	},
	CheckButton = {
		inherits = {"Button"},
		methods = {
			"GetChecked",
			"GetCheckedTexture",
			"GetDisabledCheckedTexture",
			"SetChecked",
			"SetCheckedTexture",
			"SetDisabledCheckedTexture",
		},
	},
	ItemButton = {
		inherits = {"Button"},
		methods = {
		},
	},
	Checkout = {
		inherits = {"Frame"},
		handlers = {
			"OnRequestNewSize",
		},
		methods = {
			"CancelOpenCheckout",
			"ClearFocus",
			"ClearRenderSize",
			"CloseCheckout",
			"OpenCheckout",
			"SetFocus",
			"SetRenderSize",
			"SetZoom",
		},
	},
	ColorSelect = {
		inherits = {"Frame"},
		handlers = {
			"OnColorSelect",
		},
		methods = {
			"GetColorHSV",
			"GetColorRGB",
			"GetColorValueTexture",
			"GetColorValueThumbTexture",
			"GetColorWheelTexture",
			"GetColorWheelThumbTexture",
			"SetColorHSV",
			"SetColorRGB",
			"SetColorValueTexture",
			"SetColorValueThumbTexture",
			"SetColorWheelTexture",
			"SetColorWheelThumbTexture",
		},
	},
	Cooldown = {
		inherits = {"Frame"},
		handlers = {
			"OnCooldownDone",
		},
		methods = {
			"Clear",
			"GetCooldownDisplayDuration",
			"GetCooldownDuration",
			"GetCooldownTimes",
			"GetDrawBling",
			"GetDrawEdge",
			"GetDrawSwipe",
			"GetEdgeScale",
			"GetReverse",
			"GetRotation",
			"IsPaused",
			"Pause",
			"Resume",
			"SetBlingTexture",
			"SetCooldown",
			"SetCooldownDuration",
			"SetCooldownUNIX",
			"SetDrawBling",
			"SetDrawEdge",
			"SetDrawSwipe",
			"SetEdgeScale",
			"SetEdgeTexture",
			"SetHideCountdownNumbers",
			"SetReverse",
			"SetRotation",
			"SetSwipeColor",
			"SetSwipeTexture",
			"SetUseCircularEdge",
		},
	},
	EditBox = {
		inherits = {"Frame", "FontInstance"},
		handlers = {
			"OnArrowPressed",
			"OnCharComposition",
			"OnCursorChanged",
			"OnEditFocusGained",
			"OnEditFocusLost",
			"OnEnterPressed",
			"OnEscapePressed",
			"OnInputLanguageChanged",
			"OnSpacePressed",
			"OnTabPressed",
			"OnTextChanged",
			"OnTextSet",
		},
		methods = {
			"AddHistoryLine",
			"ClearFocus",
			"ClearHistory",
			"Disable",
			"Enable",
			"GetAltArrowKeyMode",
			"GetBlinkSpeed",
			"GetCursorPosition",
			"GetDisplayText",
			"GetHighlightColor",
			"GetHistoryLines",
			"GetInputLanguage",
			"GetMaxBytes",
			"GetMaxLetters",
			"GetNumLetters",
			"GetNumber",
			"GetText",
			"GetTextInsets",
			"GetUTF8CursorPosition",
			"GetVisibleTextByteLimit",
			"HasFocus",
			"HighlightText",
			"Insert",
			"IsAutoFocus",
			"IsCountInvisibleLetters",
			"IsEnabled",
			"IsInIMECompositionMode",
			"IsMultiLine",
			"IsNumeric",
			"IsPassword",
			"IsSecureText",
			"SetAltArrowKeyMode",
			"SetAutoFocus",
			"SetBlinkSpeed",
			"SetCountInvisibleLetters",
			"SetCursorPosition",
			"SetEnabled",
			"SetFocus",
			"SetHighlightColor",
			"SetHistoryLines",
			"SetMaxBytes",
			"SetMaxLetters",
			"SetMultiLine",
			"SetNumber",
			"SetNumeric",
			"SetPassword",
			"SetSecureText",
			"SetSecurityDisablePaste",
			"SetSecurityDisableSetText",
			"SetText",
			"SetTextInsets",
			"SetVisibleTextByteLimit",
			"ToggleInputLanguage",
		},
	},
	FogOfWarFrame = {
		inherits = {"Frame"},
		handlers = {
			"OnUiMapChanged",
		},
		methods = {
			"GetFogOfWarBackgroundAtlas",
			"GetFogOfWarBackgroundTexture",
			"GetFogOfWarMaskAtlas",
			"GetFogOfWarMaskTexture",
			"GetMaskScalar",
			"GetUiMapID",
			"SetFogOfWarBackgroundAtlas",
			"SetFogOfWarBackgroundTexture",
			"SetFogOfWarMaskAtlas",
			"SetFogOfWarMaskTexture",
			"SetMaskScalar",
			"SetUiMapID",
		},
	},
	GameTooltip = {
		inherits = {"Frame"},
		handlers = {
			"OnTooltipAddMoney",
			"OnTooltipCleared",
			"OnTooltipSetAchievement",
			"OnTooltipSetDefaultAnchor",
			"OnTooltipSetEquipmentSet",
			"OnTooltipSetFramestack",
			"OnTooltipSetItem",
			"OnTooltipSetQuest",
			"OnTooltipSetSpell",
			"OnTooltipSetUnit",
		},
		methods = {
			"AddDoubleLine",
			"AddFontStrings",
			"AddLine",
			"AddSpellByID",
			"AddTexture",
			"AdvanceSecondaryCompareItem",
			"AppendText",
			"ClearLines",
			"CopyTooltip",
			"FadeOut",
			"GetAnchorType",
			"GetAzeritePowerID",
			"GetItem",
			"GetMinimumWidth",
			"GetOwner",
			"GetPadding",
			"GetSpell",
			"GetUnit",
			"IsEquippedItem",
			"IsOwned",
			"IsUnit",
			"NumLines",
			"ResetSecondaryCompareItem",
			"SetAchievementByID",
			"SetAction",
			"SetAnchorType",
			"SetArtifactItem",
			"SetArtifactPowerByID",
			"SetAuctionItem",
			"SetAuctionSellItem",
			"SetAzeritePower",
			"SetBackpackToken",
			"SetBagItem",
			"SetBagItemChild",
			"SetBuybackItem",
			"SetCompanionPet",
			"SetCompareAzeritePower",
			"SetCompareItem",
			"SetCurrencyByID",
			"SetCurrencyToken",
			"SetCurrencyTokenByID",
			"SetEquipmentSet",
			"SetExistingSocketGem",
			"SetFrameStack",
			"SetGuildBankItem",
			"SetHeirloomByItemID",
			"SetHyperlink",
			"SetInboxItem",
			"SetInstanceLockEncountersComplete",
			"SetInventoryItem",
			"SetInventoryItemByID",
			"SetItemByID",
			"SetLFGDungeonReward",
			"SetLFGDungeonShortageReward",
			"SetLootCurrency",
			"SetLootItem",
			"SetLootRollItem",
			"SetMerchantCostItem",
			"SetMerchantItem",
			"SetMinimumWidth",
			"SetMountBySpellID",
			"SetOwnedItemByID",
			"SetOwner",
			"SetPadding",
			"SetPetAction",
			"SetPossession",
			"SetPvpBrawl",
			"SetPvpTalent",
			"SetQuestCurrency",
			"SetQuestItem",
			"SetQuestLogCurrency",
			"SetQuestLogItem",
			"SetQuestLogRewardSpell",
			"SetQuestLogSpecialItem",
			"SetQuestRewardSpell",
			"SetRecipeRankInfo",
			"SetRecipeReagentItem",
			"SetRecipeResultItem",
			"SetSendMailItem",
			"SetShapeshift",
			"SetSocketGem",
			"SetSocketedItem",
			"SetSocketedRelic",
			"SetSpellBookItem",
			"SetSpellByID",
			"SetTalent",
			"SetText",
			"SetTotem",
			"SetToyByItemID",
			"SetTradePlayerItem",
			"SetTradeTargetItem",
			"SetTrainerService",
			"SetTransmogrifyItem",
			"SetUnit",
			"SetUnitAura",
			"SetUnitBuff",
			"SetUnitDebuff",
			"SetUpgradeItem",
			"SetVoidDepositItem",
			"SetVoidItem",
			"SetVoidWithdrawalItem",
		},
	},
	MessageFrame = {
		inherits = {"Frame", "FontInstance"},
		methods = {
			"AddMessage",
			"Clear",
			"GetFadeDuration",
			"GetFadePower",
			"GetFading",
			"GetFontStringByID",
			"GetInsertMode",
			"GetTimeVisible",
			"HasMessageByID",
			"ResetMessageFadeByID",
			"SetFadeDuration",
			"SetFadePower",
			"SetFading",
			"SetInsertMode",
			"SetTimeVisible",
		},
	},
	Minimap = {
		inherits = {"Frame"},
		methods = {
			"GetPingPosition",
			"GetZoom",
			"GetZoomLevels",
			"PingLocation",
			"SetArchBlobInsideAlpha",
			"SetArchBlobInsideTexture",
			"SetArchBlobOutsideAlpha",
			"SetArchBlobOutsideTexture",
			"SetArchBlobRingAlpha",
			"SetArchBlobRingScalar",
			"SetArchBlobRingTexture",
			"SetBlipTexture",
			"SetCorpsePOIArrowTexture",
			"SetIconTexture",
			"SetMaskTexture",
			"SetPOIArrowTexture",
			"SetPlayerTexture",
			"SetQuestBlobInsideAlpha",
			"SetQuestBlobInsideTexture",
			"SetQuestBlobOutsideAlpha",
			"SetQuestBlobOutsideSelectedTexture",
			"SetQuestBlobOutsideTexture",
			"SetQuestBlobRingAlpha",
			"SetQuestBlobRingScalar",
			"SetQuestBlobRingTexture",
			"SetStaticPOIArrowTexture",
			"SetTaskBlobInsideAlpha",
			"SetTaskBlobInsideTexture",
			"SetTaskBlobOutsideAlpha",
			"SetTaskBlobOutsideSelectedTexture",
			"SetTaskBlobOutsideTexture",
			"SetTaskBlobRingAlpha",
			"SetTaskBlobRingScalar",
			"SetTaskBlobRingTexture",
			"SetZoom",
			"UpdateBlips",
		},
	},
	Model = {
		inherits = {"Frame"},
		handlers = {
			"OnAnimFinished",
			"OnModelLoaded",
		},
		methods = {
			"AdvanceTime",
			"ClearFog",
			"ClearModel",
			"ClearTransform",
			"GetCameraDistance",
			"GetCameraFacing",
			"GetCameraPosition",
			"GetCameraRoll",
			"GetCameraTarget",
			"GetDesaturation",
			"GetFacing",
			"GetFogColor",
			"GetFogFar",
			"GetFogNear",
			"GetLight",
			"GetModelAlpha",
			"GetModelDrawLayer",
			"GetModelFileID",
			"GetModelScale",
			"GetPaused",
			"GetPitch",
			"GetPosition",
			"GetRoll",
			"GetShadowEffect",
			"GetViewInsets",
			"GetViewTranslation",
			"GetWorldScale",
			"HasAttachmentPoints",
			"HasCustomCamera",
			"IsUsingModelCenterToTransform",
			"MakeCurrentCameraCustom",
			"ReplaceIconTexture",
			"SetCamera",
			"SetCameraDistance",
			"SetCameraFacing",
			"SetCameraPosition",
			"SetCameraRoll",
			"SetCameraTarget",
			"SetCustomCamera",
			"SetDesaturation",
			"SetFacing",
			"SetFogColor",
			"SetFogFar",
			"SetFogNear",
			"SetGlow",
			"SetLight",
			"SetModel",
			"SetModelAlpha",
			"SetModelDrawLayer",
			"SetModelScale",
			"SetParticlesEnabled",
			"SetPaused",
			"SetPitch",
			"SetPosition",
			"SetRoll",
			"SetSequence",
			"SetSequenceTime",
			"SetShadowEffect",
			"SetTransform",
			"SetViewInsets",
			"SetViewTranslation",
			"TransformCameraSpaceToModelSpace",
			"UseModelCenterToTransform",
		},
	},
	PlayerModel = {
		inherits = {"Model"},
		methods = {
			"ApplySpellVisualKit",
			"CanSetUnit",
			"FreezeAnimation",
			"GetDisplayInfo",
			"GetDoBlend",
			"GetKeepModelOnHide",
			"HasAnimation",
			"PlayAnimKit",
			"RefreshCamera",
			"RefreshUnit",
			"SetAnimation",
			"SetBarberShopAlternateForm",
			"SetCamDistanceScale",
			"SetCreature",
			"SetCustomRace",
			"SetDisplayInfo",
			"SetDoBlend",
			"SetItem",
			"SetItemAppearance",
			"SetKeepModelOnHide",
			"SetPortraitZoom",
			"SetRotation",
			"SetUnit",
			"StopAnimKit",
		},
	},
	CinematicModel = {
		inherits = {"PlayerModel"},
		handlers = {
			"OnPanFinished",
		},
		methods = {
			"EquipItem",
			"InitializeCamera",
			"InitializePanCamera",
			"SetAnimOffset",
			"SetCreatureData",
			"SetFacingLeft",
			"SetFadeTimes",
			"SetHeightFactor",
			"SetJumpInfo",
			"SetPanDistance",
			"SetSpellVisualKit",
			"SetTargetDistance",
			"StartPan",
			"StopPan",
			"UnequipItems",
		},
	},
	DressupModel = {
		inherits = {"PlayerModel"},
		handlers = {
			"OnDressModel",
		},
		methods = {
			"Dress",
			"GetAutoDress",
			"GetSheathed",
			"GetSlotTransmogSources",
			"GetUseTransmogSkin",
			"SetAutoDress",
			"SetSheathed",
			"SetUseTransmogSkin",
			"TryOn",
			"Undress",
			"UndressSlot",
		},
	},
	TabardModel = {
		inherits = {"PlayerModel"},
		methods = {
			"CanSaveTabardNow",
			"CycleVariation",
			"GetLowerBackgroundFileName",
			"GetLowerEmblemFileName",
			"GetLowerEmblemTexture",
			"GetUpperBackgroundFileName",
			"GetUpperEmblemFileName",
			"GetUpperEmblemTexture",
			"InitializeTabardColors",
			"Save",
		},
	},
	ModelScene = {
		inherits = {"Frame"},
		methods = {
			"ClearFog",
			"CreateActor",
			"GetActorAtIndex",
			"GetCameraFarClip",
			"GetCameraFieldOfView",
			"GetCameraForward",
			"GetCameraNearClip",
			"GetCameraPosition",
			"GetCameraRight",
			"GetCameraUp",
			"GetDrawLayer",
			"GetFogColor",
			"GetFogFar",
			"GetFogNear",
			"GetLightAmbientColor",
			"GetLightDiffuseColor",
			"GetLightDirection",
			"GetLightPosition",
			"GetLightType",
			"GetNumActors",
			"GetViewInsets",
			"GetViewTranslation",
			"IsLightVisible",
			"Project3DPointTo2D",
			"SetCameraFarClip",
			"SetCameraFieldOfView",
			"SetCameraNearClip",
			"SetCameraOrientationByAxisVectors",
			"SetCameraOrientationByYawPitchRoll",
			"SetCameraPosition",
			"SetDrawLayer",
			"SetFogColor",
			"SetFogFar",
			"SetFogNear",
			"SetLightAmbientColor",
			"SetLightDiffuseColor",
			"SetLightDirection",
			"SetLightPosition",
			"SetLightType",
			"SetLightVisible",
			"SetViewInsets",
			"SetViewTranslation",
			"TakeActor",
		},
	},
	MovieFrame = {
		inherits = {"Frame"},
		handlers = {
			"OnMovieFinished",
			"OnMovieHideSubtitle",
			"OnMovieShowSubtitle",
		},
		methods = {
			"EnableSubtitles",
			"StartMovie",
			"StopMovie",
		},
	},
	OffScreenFrame = {
		inherits = {"Frame"},
		methods = {
			"ApplySnapshot",
			"Flush",
			"GetMaxSnapshots",
			"IsSnapshotValid",
			"SetMaxSnapshots",
			"TakeSnapshot",
			"UsesNPOT",
		},
	},
	POIFrame = {
		inherits = {"Frame"},
		methods = {
			"DrawAll",
			"DrawBlob",
			"DrawNone",
			"EnableMerging",
			"EnableSmoothing",
			"GetMapID",
			"SetBorderAlpha",
			"SetBorderScalar",
			"SetBorderTexture",
			"SetFillAlpha",
			"SetFillTexture",
			"SetMapID",
			"SetMergeThreshold",
			"SetNumSplinePoints",
		},
	},
	ArchaeologyDigSiteFrame = {
		inherits = {"POIFrame"},
		methods = {
		},
	},
	QuestPOIFrame = {
		inherits = {"POIFrame"},
		methods = {
			"GetNumTooltips",
			"GetTooltipIndex",
			"UpdateMouseOverTooltip",
		},
	},
	ScenarioPOIFrame = {
		inherits = {"POIFrame"},
		methods = {
			"GetScenarioTooltipText",
			"UpdateMouseOverTooltip",
		},
	},
	ScrollFrame = {
		inherits = {"Frame"},
		handlers = {
			"OnHorizontalScroll",
			"OnScrollRangeChanged",
			"OnVerticalScroll",
		},
		methods = {
			"GetHorizontalScroll",
			"GetHorizontalScrollRange",
			"GetScrollChild",
			"GetVerticalScroll",
			"GetVerticalScrollRange",
			"SetHorizontalScroll",
			"SetScrollChild",
			"SetVerticalScroll",
			"UpdateScrollChildRect",
		},
	},
	ScrollingMessageFrame = {
		inherits = {"Frame", "FontInstance"},
		methods = {
			"AcquireFontString",
			"AcquireHighlightTexture",
			"AddMessage",
			"AdjustMessageColors",
			"AtBottom",
			"AtTop",
			"BackFillMessage",
			"CalculateLineAlphaValueFromTimestamp",
			"CalculateLineSpacing",
			"CalculateNumVisibleLines",
			"CalculateSelectingCharacterIndicesForVisibleLine",
			"CallOnDisplayRefreshed",
			"CanEffectivelyFade",
			"Clear",
			"FindCharacterAndLineIndexAtCoordinate",
			"GatherSelectedText",
			"GetFadeDuration",
			"GetFading",
			"GetInsertMode",
			"GetMaxLines",
			"GetMaxScrollRange",
			"GetMessageInfo",
			"GetNumMessages",
			"GetNumVisibleLines",
			"GetOnDisplayRefreshedCallback",
			"GetOnScrollChangedCallback",
			"GetOnTextCopiedCallback",
			"GetPagingScrollAmount",
			"GetScaledCursorPosition",
			"GetScrollOffset",
			"GetTimeVisible",
			"HasFontObject",
			"InitializeFontableFrame",
			"IsSelectingText",
			"IsTextCopyable",
			"MakeFontObjectCustom",
			"MarkDisplayDirty",
			"MarkLayoutDirty",
			"OnFontObjectUpdated",
			"OnPostHide",
			"OnPostMouseDown",
			"OnPostMouseUp",
			"OnPostShow",
			"OnPostUpdate",
			"OnPreLoad",
			"OnPreSizeChanged",
			"PackageEntry",
			"PageDown",
			"PageUp",
			"RefreshDisplay",
			"RefreshIfNecessary",
			"RefreshLayout",
			"RemoveMessagesByPredicate",
			"ResetAllFadeTimes",
			"ResetSelectingText",
			"ScrollByAmount",
			"ScrollDown",
			"ScrollToBottom",
			"ScrollToTop",
			"ScrollUp",
			"SetFadeDuration",
			"SetFading",
			"SetInsertMode",
			"SetMaxLines",
			"SetOnDisplayRefreshedCallback",
			"SetOnScrollChangedCallback",
			"SetOnTextCopiedCallback",
			"SetScrollOffset",
			"SetTextCopyable",
			"SetTimeVisible",
			"TransformMessages",
			"UnpackageEntry",
			"UpdateFading",
			"UpdateSelectingText",
		},
	},
	SimpleHTML = {
		inherits = {"Frame", "FontInstance"},
		methods = {
			"GetContentHeight",
			"GetHyperlinkFormat",
			"SetHyperlinkFormat",
			"SetText",
		},
	},
	Slider = {
		inherits = {"Frame"},
		handlers = {
			"OnMinMaxChanged",
			"OnValueChanged",
		},
		methods = {
			"Disable",
			"Enable",
			"GetMinMaxValues",
			"GetObeyStepOnDrag",
			"GetOrientation",
			"GetStepsPerPage",
			"GetThumbTexture",
			"GetValue",
			"GetValueStep",
			"IsDraggingThumb",
			"IsEnabled",
			"SetEnabled",
			"SetMinMaxValues",
			"SetObeyStepOnDrag",
			"SetOrientation",
			"SetStepsPerPage",
			"SetThumbTexture",
			"SetValue",
			"SetValueStep",
		},
	},
	StatusBar = {
		inherits = {"Frame"},
		handlers = {
			"OnMinMaxChanged",
			"OnValueChanged",
		},
		methods = {
			"GetFillStyle",
			"GetMinMaxValues",
			"GetOrientation",
			"GetReverseFill",
			"GetRotatesTexture",
			"GetStatusBarAtlas",
			"GetStatusBarColor",
			"GetStatusBarTexture",
			"GetValue",
			"SetFillStyle",
			"SetMinMaxValues",
			"SetOrientation",
			"SetReverseFill",
			"SetRotatesTexture",
			"SetStatusBarAtlas",
			"SetStatusBarColor",
			"SetStatusBarTexture",
			"SetValue",
		},
	},
	UnitPositionFrame = {
		inherits = {"Frame"},
		methods = {
			"AddUnit",
			"AddUnitAtlas",
			"AddUnitFileID",
			"ClearUnits",
			"FinalizeUnits",
			"GetMouseOverUnits",
			"GetPlayerPingScale",
			"GetUiMapID",
			"SetPlayerPingScale",
			"SetPlayerPingTexture",
			"SetUiMapID",
			"SetUnitColor",
			"StartPlayerPing",
			"StopPlayerPing",
		},
	},
	WorldFrame = {
		inherits = {"Frame"},
		methods = {
		},
	},
}

return WidgetAPI
