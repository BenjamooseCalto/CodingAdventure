----------------------------------------------------------------------------------
-- Total RP 3
--	---------------------------------------------------------------------------
--	Copyright 2015 Sylvain Cossement (telkostrasz@totalrp3.info)
--  Copyright 2018 Morgane "Ellypse" Parize <ellypse@totalrp3.info> @EllypseCelwe
--
--	Licensed under the Apache License, Version 2.0 (the "License");
--	you may not use this file except in compliance with the License.
--	You may obtain a copy of the License at
--
--		http://www.apache.org/licenses/LICENSE-2.0
--
--	Unless required by applicable law or agreed to in writing, software
--	distributed under the License is distributed on an "AS IS" BASIS,
--	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--	See the License for the specific language governing permissions and
--	limitations under the License.
----------------------------------------------------------------------------------
local Localization = TRP3_API.loc;

--- This is a trick to get IntelliJ's code completion to work on a table that was already initialized elsewhere.
--- We are not redefining TRP3_API.loc, but IntelliJ thinks so
---@type TRP3_API
local TRP3_API = {}
TRP3_API.loc = {

	NEW_EXTENDED_VERSION = "|cffff9900A new version for TRP3:Extended is available (%s). |cff00ff00Go check it out on Curse!",

-- MISC
	EX_SOUND_HISTORY = "Sounds history",
	EX_SOUND_HISTORY_EMPTY = "No sound has been played.",
	EX_SOUND_HISTORY_LINE = "%s played soundID %s in channel %s.",
	EX_SOUND_HISTORY_STOP = "Stop",
	EX_SOUND_HISTORY_REPLAY = "Replay",
	EX_SOUND_HISTORY_CLEAR = "Clear",
	EX_SOUND_HISTORY_STOP_ALL = "Stop all",
	EX_SOUND_HISTORY_TT = "See what sounds have been played, see where they're from and stop them if they still are playing.\n\n|cffffff00Click:|r Open sound history\n|cffffff00Right-click:|r Stop all sounds/musics",
	BINDING_NAME_TRP3_INVENTORY = "Open character's inventory",
	BINDING_NAME_TRP3_MAIN_CONTAINER = "Open main container",
	BINDING_NAME_TRP3_SEARCH_FOR_ITEMS = "Search for items",
	BINDING_NAME_TRP3_QUESTLOG = "Open TRP3's quest log",
	BINDING_NAME_TRP3_QUEST_LOOK = "Quest action: inspect",
	BINDING_NAME_TRP3_QUEST_LISTEN = "Quest action: listen",
	BINDING_NAME_TRP3_QUEST_ACTION = "Quest action: interact",
	BINDING_NAME_TRP3_QUEST_TALK = "Quest action: talk",
	ERROR_MISSING_ARG = "Missing argument %1$s when trying to call function %2$s.",

-- INVENTORY
	IT_CON = "Container",
	IT_CON_TT = "Container (%d/%d slots used)",
	IT_CON_ERROR_TYPE = "This container can't contain this kind of items.",
	IT_CON_ERROR_TRADE = "You can't drop this container if it's not empty.",
	IT_CON_OPEN = "Open/Close container",
	IT_CON_CAN_INNER = "Can't place a container inside itself!",
	IT_INV_SHOW_ALL = "Show all inventory",
	IT_INV_SHOW_CONTENT = "|cffffff00Click:|r Open main container (if exists)\n|cffffff00Right-click:|r Open inventory",
	IT_INV_ERROR_MAX = "You can't carry any more of %s.",
	IT_INV_ERROR_FULL = "%s is full.",
	IT_INV_ERROR_CANT_HERE = "You can't place items here.",
	IT_INV_ERROR_CANT_DESTROY_LOOT = "You can't destroy loot items.",
	IT_INV_SCAN_MY_ITEMS = "Scan for my items",
	IT_CON_TT_MISSING_CLASS = "Missing item class ID",
	IT_EX_DOWNLOAD = "Download",
	IT_EX_DOWNLOAD_TT = "|cffff9900This item is %s messages long and would take at minimum %.1f seconds to be downloaded (in the best condition).\n\n|cff00ff00Click to requests %s to send you all the data about this item.\n\n|cffff9900You can't finish a trade if you don't have all the updated information about all items you would receive.",
	IT_EX_EMPTY_DRAG = "You can drag and drop items here.",
	IT_EX_EMPTY = "Nothing to trade",
	IT_EX_SLOT_DOWNLOAD = "|rYou don't have the information about this item.\n\n|cff00ff00If the item is not too large, TRP3 will download it automatically from %s.\n\n|cffff9900If it is too large, you can manually request its information with the download button, but keep in mind that it could take some time to be downloaded.",
	IT_EX_DOWNLOADING = "Downloading: %0.1f %%",
	IT_LOOT_ERROR = "Can't display loot right now, another loot is currently shown.",
	IT_INV_GOT = "Received: %s x%d",

-- INVENTORY PAGE
	INV_PAGE_CAMERA_CONFIG = "Camera parameters:\n   Rotation: %.2f",
	INV_PAGE_MARKER = "Marker position:\n   x: %.2f\n   y: %.2f",
	INV_PAGE_PLAYER_INV = "%s's inventory",
	INV_PAGE_CHARACTER_INV = "Inventory",
	INV_PAGE_INV_OPEN = "Open inventory",
	INV_PAGE_LOOT_ALL = "Loot all",
	INV_PAGE_QUICK_SLOT = "Quick slot",
	INV_PAGE_QUICK_SLOT_TT = "This slot will be used as primary container.",
	INV_PAGE_ITEM_LOCATION = "Item location on character",
	INV_PAGE_TOTAL_VALUE = "Total items value",
	INV_PAGE_TOTAL_VALUE_TT = "This is the value of your inventory.\n\nThis is not the amount of \"coins\" but the estimated total value of all items in the inventory.",
	INV_PAGE_CHARACTER_INSPECTION = "Character inspection",
	INV_PAGE_CHARACTER_INSPECTION_TT = "Inspect this character's inventory.",
	INV_PAGE_WEAR_TT = "This item is wearable.\nThe green zone indicates the item location on the character.",
	INV_PAGE_WEAR_ACTION = "Configure item location",
	INV_PAGE_WEAR_ACTION_RESET = "Reset configuration",
	INV_PAGE_SEQUENCE = "Sequence ID",
	INV_PAGE_WAIT = "Waiting for response",
	INV_PAGE_SEQUENCE_TT = "You can change the pose of your character by entering an animation ID here and select the animation frame with the slider below.\n\nWarning: If the animation flickers it's because there is a problem with the animation for your race model. If it happens, please select another animation.",
	INV_PAGE_SEQUENCE_PRESET = "You can select a sequence ID corresponding to an emote.",
	INV_PAGE_EDIT_ERROR1 = "You must be the author of this item to edit it.",
	INV_PAGE_EDIT_ERROR2 = "This item is not in Quick mode.",

-- SEC
	SEC_LEVEL = "Security level",
	SEC_LEVEL_DETAIL = "Click to see a detail of the used unsecure scripts.",
	SEC_LEVEL_DETAIL2 = "Click to see a detail of the used unsecure scripts and configure which one can be executed.",
	SEC_LOW = "Low",
	SEC_LOW_TT = "This item, or one of its related object, uses one or more unsecure scripts that can have malicious effects.",
	SEC_MEDIUM = "Medium",
	SEC_MEDIUM_TT = "This item, or one of its related object, uses one or more unsecure scripts that can have undesirable effects.",
	SEC_HIGH = "High",
	SEC_HIGH_TT = "This item and all of its related object are secured and don't use any malicious or undesirable effects.",
	SEC_LEVEL_DETAILS = "Security details",
	SEC_LEVEL_DETAILS_TT = "For %s and all its inner objects.\n|cffff9900Made by: |cff00ff00%s\n|cffff9900Received from: |cff00ff00%s",
	SEC_LEVEL_DETAILS_SECURED = "This object and all its inner objects are secure!",
	SEC_UNSECURED_WHY = "Why is this unsecure?",
	SEC_REASON_SCRIPT = "Lua script",
	SEC_REASON_SCRIPT_WHY = "This object could trigger any of the Extended effects.\n\n|cffff0000It may be used in a malicious way to force you so say something reprehensible by the Blizzard terms of services that can make you banned from the game.\n\n|cff00ff00If blocked, the code will still be executed but in a secured environment (for instance, chat effects will be printed only for you and not said by your character).",
	SEC_REASON_TALK = "Character talk",
	SEC_REASON_TALK_WHY = "This object could force your character to say something (through /say, /yell or any other channel).\n\n|cffff0000It may be used in a malicious way to force you so say something reprehensible by the Blizzard terms of services that can make you banned from the game.\n\n|cff00ff00If blocked, the text will be printed only for you (and not said by your character).",
	SEC_REASON_SOUND = "Playing a sound",
	SEC_REASON_SOUND_WHY = "This object could play a sound or a music that will be heard by the TRP3:E users around you.\n\n|cffff9900It may be undesirable for them if the sound is spammed or if the sound is particulary annoying. And if it's the case, they could blame you and block you.\n\n|cff00ff00If blocked, the sound/music will be played only for you.",
	SEC_REASON_DISMOUNT = "Dismount",
	SEC_REASON_DISMOUNT_WHY = "This object could force you to unmount.\n\n|cffff9900It may be undesirable for you... Especially if you are on a flying mount!",
	SEC_LEVEL_DETAILS_THIS = "Switch security for this objects",
	SEC_LEVEL_DETAILS_THIS_TT = "Accept the execution of this effect for this object only.",
	SEC_LEVEL_DETAILS_ALL = "Switch security for all objects",
	SEC_LEVEL_DETAILS_ALL_TT = "Accept the execution of this effect for all objects, now and in the future.",
	SEC_LEVEL_DETAILS_BLOCKED = "Blocked",
	SEC_LEVEL_DETAILS_ACCEPTED = "Accepted",
	SEC_LEVEL_DETAILS_FROM = "Always accept when received from %s",
	SEC_EFFECT_BLOCKED = "Effect(s) blocked",
	SEC_EFFECT_BLOCKED_TT = "Due to your current security settings, at least one of this item (or sub-objects) effects has been secured.\n\n|cffff9900Click to review security for this item.\n\nYou can also Ctrl+Right-click on the item in your inventory to configure the security later.",
	SEC_MISSING_SCRIPT = "Cannot find workflow \"%s\"",
	SEC_SCRIPT_ERROR = "Error in workflow %s.",
	SEC_TT_COMBO = "Alt + Right click:|cffff9900 Configure security",
	SET_TT_SECURED = "Some potentially malicious effects have been secured for your safety.\n|cff00ff00Alt + Right click for more details.",
	SET_TT_DETAILS_1 = "Hold Alt key to show more",
	SET_TT_DETAILS_2 = "%s warning(s)",
	SET_TT_OLD = "This item has been created with an older version of Extended (v %s). Incompatibilities may occured.",

-- LOOT
	LOOT = "Loot",
	LOOT_CONTAINER = "Loot container",
	LOOT_DISTANCE = "You moved too far from the loot point.",

-- DOCUMENT
	DOC_UNKNOWN_ALERT = "Can't open the document. (Missing class)",
	DO_PAGE_FIRST = "First page",
	DO_PAGE_NEXT = "Next page",
	DO_PAGE_LAST = "Last page",
	DO_PAGE_PREVIOUS = "Previous page",
	DO_EMPTY = "Empty document",

-- Campaign
	QE_CAMPAIGN = "Campaign",
	QE_CAMPAIGNS = "Campaigns",
	QE_CAMPAIGN_LIST = "%s available campaigns",
	QE_CAMPAIGN_START = "Starting campaign |cff00ff00[%s]|r.",
	QE_CAMPAIGN_START_BUTTON = "Start or resume campaign",
	QE_CAMPAIGN_RESUME = "Resuming campaign |cff00ff00[%s]|r.",
	QE_CAMPAIGN_RESET = "Reset campaign",
	QE_CAMPAIGN_PAUSE = "Pausing current campaign.",
	QE_CAMPAIGN_CURRENT = "Current campaign",
	QE_CAMPAIGN_CURRENT_NO = "No active campaign.",
	QE_CAMPAIGN_UNSTARTED = "You haven't started this campaign yet.\nClick on the top right \"Start\" button to start it.",
	QE_CAMPAIGN_NOQUEST = "No quest revealed yet for this campaign.\nTake a look at the campaign description to unlock your first quest.",
	QE_CAMPAIGN_EMPTY = "This campaign has no quest.",
	QE_QUEST_START = "Starting quest |cff00ff00[%s]|r.",
	QE_QUEST_TT_STEP = "|cffffff00Currently:|r\n\"%s\"",
	QE_QUEST_OBJ_AND_HIST = "Objectives and history",
	QE_QUEST = "Quest",
	QE_QUESTS = "Quests",
	QE_QUEST_OBJ_REVEALED = "|cffffff00New objective: |cff00ff00%s",
	QE_QUEST_OBJ_UPDATED = "|cffffff00Objective updated: |cff00ff00%s",
	QE_QUEST_OBJ_FINISHED = "|cffffff00Objective complete: |cff00ff00%s",
	QE_QUEST_LIST = "Quests for this campaign",
	QE_STEP = "Step",
	QE_STEP_LIST = "Steps for this quest",
	QE_STEP_LIST_CURRENT = "Available quests",
	QE_STEP_LIST_FINISHED = "Finished quests",
	QE_STEP_MISSING = "Missing step information.",
	QE_BUTTON = "Open quest log",
	QE_NPC = "Campaign NPC",
	QE_RESET_CONFIRM = "Reset this campaign?\n\nThis will lose all your progression for ALL the quests in this campaign.\n\nNote that you will keep all items you gained through this campaign.",
	QE_AUTORESUME_CONFIRM = "An effect was called for the campaign |cff00ff00[%s]|r.\n\nActivate this campaign ?\n(If you already have an active campaign, it will be paused and your progress will be saved.)",
	QE_ACTIONS_TYPE_LOOK = "Inspect",
	QE_ACTIONS_TYPE_TALK = "Talk",
	QE_ACTIONS_TYPE_LISTEN = "Listen",
	QE_ACTIONS_TYPE_INTERRACT = "Interact",
	QE_NOACTION_LOOK = "You don't see anything special.",
	QE_NOACTION_LISTEN = "You don't hear anything special.",
	QE_NOACTION_ACTION = "There is nothing to do.",
	QE_NOACTION_TALK = "There is nothing to say.",
	QE_PREVIOUS_STEP = "Previously",
	QE_OVERVIEW = "Quest overview",
	QE_COMPLETED = "Completed",
	QE_FAILED = "Failed",
	QE_NEW = "New quest revealed",
	QE_ACTION = "Quest action",
	QE_MACRO = "Create macro",
	QE_MACRO_TT = "Creates a macro for this action type and pickup the macro on your cursor to be placed in any action bars.",
	QE_MACRO_MAX = "You can't have more macro. Please free a macro slot before trying again.",
	QE_PROGRESS = "Campaign progression",
	DI_NEXT = "Next",
	DI_WAIT_LOOT = "Please loot all items",
	QE_ACTION_NO_CURRENT = "You don't have any active campaign. You should activate a campaign before trying to do an action..",
	QE_CAMPAIGN_NO = "No started yet",
	QE_CAMPAIGN_FULL = "Finished",

-- COMMANDS
	COM_NPC_ID = " get targeted npc id",

-- SETTINGS
	UNIT_FRIES = "fries",
	UNIT_POTATOES = "potatoes",
	CONF_MAIN = "Extended settings",
	CONF_UNIT = "Units",
	CONF_UNIT_WEIGHT = "Weight unit",
	CONF_UNIT_WEIGHT_TT = "Defines how weight values are displayed.",
	CONF_UNIT_WEIGHT_1 = "Grams",
	CONF_UNIT_WEIGHT_2 = "Pounds",
	CONF_UNIT_WEIGHT_3 = "Potatoes",
	CONF_SOUNDS = "Local sounds / musics",
	CONF_SOUNDS_ACTIVE = "Play local sounds",
	CONF_SOUNDS_ACTIVE_TT = "Local sounds are sounds played by other players (for example through an item) to a certain range in yards.\n\nTurn this off if you don't want to hear these sounds at all.\n\n|cff00ff00Note that you will never hear sounds from ignored players.\n\n|cff00ff00Note that all sounds are interruptible via the Sound History in the TRP3 shortcuts bar.",
	CONF_SOUNDS_METHOD = "Local sound playback method",
	CONF_SOUNDS_METHOD_TT = "Determine how you will hear a local sound when you are in range.",
	CONF_SOUNDS_METHOD_1 = "Play automatically",
	CONF_SOUNDS_METHOD_1_TT = "If you are in range, it will play the sound/music without asking your permission.",
	CONF_SOUNDS_METHOD_2 = "Ask permission",
	CONF_SOUNDS_METHOD_2_TT = "If you are in range, a link will be placed in the chat frame to ask you confirmation to play the sound/music.",
	CONF_MUSIC_ACTIVE = "Play local musics",
	CONF_MUSIC_ACTIVE_TT = "Local musics are musics played by other players (for example through an item) to a certain range in yards.\n\nTurn this off if you don't want to hear these musics at all.\n\n|cff00ff00Note that you will never hear musics from ignored players.\n\n|cff00ff00Note that all musics are interruptible via the Sound History in the TRP3 shortcuts bar.",
	CONF_MUSIC_METHOD = "Local music playback method",
	CONF_MUSIC_METHOD_TT = "Determine how you will hear a local music when you are in range.",
	CONF_SOUNDS_MAXRANGE = "Playback maximum range",
	CONF_SOUNDS_MAXRANGE_TT = "Set the maximum range (in yards) within which you will hear local sounds/musics.\n\n|cff00ff00Usefull to avoid people playing sounds through the whole contient.\n\n|cffff9900Zero means no limit!",

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- SPEECH
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	NPC_SAYS = "says",
	NPC_YELLS = "yells",
	NPC_WHISPERS = "whispers",
	NPC_EMOTES = "emotes",

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- DROP SYSTEM
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	DR_SYSTEM = "Drop system",
	DR_SYSTEM_TT = "Drop / search for items and create / access your stashes.\n\nThe drop system does not work in dungeons/arenas/battlegrounds.",
	DR_POPUP = "Drop here",
	DR_POPUP_ASK = "Total RP 3\n \nSelect what to do with the item:\n%s",
	DR_POPUP_REMOVE = "Destroy",
	DR_POPUP_REMOVE_TEXT = "Destroy this item?",
	DR_SEARCH_BUTTON = "Search for |cff00ff00my|r items",
	DR_SEARCH_BUTTON_TT = "Search for your items in the area within 15 yards.",
	DR_NOTHING = "No items found in this area.",
	DR_DELETED = "Destroyed: %s x%d",
	DR_DROPED = "Droped on the ground: %s x%d",
	DR_RESULTS = "Found %s items",
	DR_STASHES = "Stashes",
	DR_STASHES_CREATE = "Create a stash here",
	DR_STASHES_CREATE_TT = "Create a stash where you stand.",
	DR_STASHES_EDIT = "Edit stash",
	DR_STASHES_REMOVE = "Remove stash",
	DR_STASHES_REMOVE_PP = "Remove this stash?\n|cffff9900All items still inside will be lost!",
	DR_STASHES_NAME = "Stash",
	DR_STASHES_MAX = "max 50 characters",
	DR_STASHES_WITHIN = "|cff00ff00Your|r stashes within 15 yards",
	DR_STASHES_SEARCH = "Search for |cff00ff00players|r stashes",
	DR_STASHES_SEARCH_TT = "Search for stashes from other players in the area within 15 yards.\n\nIt will launch a scan for 3 seconds, stand still!",
	DR_STASHES_SCAN_MY = "Scan for my stashes",
	DR_STASHES_SCAN = "Scan for players stashes",
	DR_STASHES_TOO_FAR = "You are too far from this stash.",
	DR_STASHES_REMOVED = "Stash removed.",
	DR_STASHES_FULL = "This stash is full.",
	DR_STASHED = "Stashed: %s x%d",
	DR_STASHES_FOUND = "Stashes found: %s",
	DR_STASHES_NOTHING = "No stashes found in this area.",
	DR_STASHES_SYNC = "Synchronizing...",
	DR_STASHES_RESYNC = "Resynchronize",
	DR_STASHES_ERROR_SYNC = "Stash is not synced.",
	DR_STASHES_ERROR_OUT_SYNC = "Stash out of sync, please retry.",
	DR_STASHES_DROP = "You can't drop item in someone else's stash.",
	DR_STASHES_HIDE = "Hide from scan",
	DR_STASHES_HIDE_TT = "This stash won't appear on other players map scan.\n\nNote that they will always be able to access it if they know where it is.",

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- EXTENDED TOOLS
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

-- TOOLBAR BUTTON
	TB_TOOLS = "Extended objects database",
	TB_TOOLS_TT = "Create your own items and quests.",

-- TYPES
	ALL = "All",
	TYPE = "Type",
	TYPE_CAMPAIGN = "Campaign",
	TYPE_QUEST = "Quest",
	TYPE_QUEST_STEP = "Quest step",
	TYPE_ITEM = "Item",
	TYPE_LOOT = "Loot",
	TYPE_DOCUMENT = "Document",
	TYPE_DIALOG = "Cutscene",
	TYPE_ITEMS = "Item(s)",

-- MODES
	MODE_QUICK = "Quick",
	MODE_NORMAL = "Normal",
	MODE_EXPERT = "Expert",

-- DATABASE
	DB = "Database",
	DB_MY = "My database (%s)",
	DB_OTHERS = "Players database (%s)",
	DB_BACKERS = "Backers database (%s)",
	DB_FULL = "Full database (%s)",
	DB_LIST = "Creations list",
	DB_RESULTS = "Search results",
	DB_FILTERS = "Search filters",
	DB_FILTERS_OWNER = "Created by",
	DB_FILTERS_NAME = "Object name",
	DB_ACTIONS = "Actions",
	DB_WARNING = "\n|cffff0000!!! Warning !!!\n\n|cffff9900Don't forget to save your changes before returning to the database list!",
	DB_FILTERS_CLEAR = "Clear",
	DB_BROWSER = "Object browser",
	DB_DELETE_TT = "Removes this object and all its children objects.",
	DB_EXPERT_TT = "Switchs this object to expert mode, allowing more complex customizations.",
	DB_SECURITY_TT = "Shows all security parameters for this object. From there you can allow or prevent certain undesirable effects.",
	DB_ADD_ITEM_TT = "Adds units of this item in your primary container (or main inventory if you don't have any primary container on your character).",
	DB_COPY_ID_TT = "Display the object ID in a popup to be copy/pastable.",
	DB_COPY_TT = "Copy all this object information and child objects to be pastable as inner objects in another object.",
	DB_EXPORT = "Quick export object",
	DB_EXPORT_TT = "Serializes the object content to be exchangeable outside the game.\n\nOnly works on small objects (lesser than 20 kB once serialized). For larger object, use the full export feature.",
	DB_EXPORT_TT_2 = "Serializes the object content to be exchangeable outside the game.\n\n|cffff0000Note: Exporting large object may freeze the game for a few seconds.|r",
	DB_EXPORT_TOO_LARGE = "This object is too large once serialized to be exported this way. Please use the full export feature.\n\nSize: %0.1f kB.",
	DB_EXPORT_HELP = "Code for object %s (size: %0.1f kB)",
	DB_WAGO_INFO = [[|cffff0000New:|r You can now post your quick exports on the WeakAuras sharing website |cff00ff00[<a href="http://wago.io">wago.io</a>]|r !<br/>Paste this export string on their website, add a description, a few screenshots and you will have a nice URL to share with your friends!]],
	DB_IMPORT = "Quick object import",
	DB_IMPORT_TT = "Paste here a previously serialized object",
	DB_IMPORT_TT_WAGO = [[Don't have anything to paste here? The WeakAuras sharing website |cff00ff00[<a href="http://wago.io">wago.io</a>]|r now hosts Total RP 3: Extended creations.
<br/>
You can browse their website for other people's creations and paste them here.]],
	DB_IMPORT_WORD = "Import",
	DB_IMPORT_ERROR1 = "The object could not be deserialized.",
	DB_IMPORT_CONFIRM = "This object was serialized in a different version of Total RP 3 Extended than yours.\n\nImport TRP3E version: %s\nYour TRP3E version: %s\n\n|cffff9900This can lead to incompatibilities.\nContinue the import anyway?",
	DB_IMPORT_VERSION = "You are importing an older version of this object than the version you already have.\n\nImport version: %s\nYour version: %s\n\n|cffff9900Do you confirm you want to downgrade?",
	DB_LOCALE = "Object locale",
	DB_FULL_EXPORT = "Full export",
	DB_FULL_EXPORT_TT = "Make a full export for this object regardless of its size.\n\nThis will trigger a UI reload in order to force the writing of add-on save file.",
	DB_EXPORT_MODULE_NOT_ACTIVE = "Object full export/import: Please enable the totalRP3_Extended_ImpExport add-on first.",
	DB_EXPORT_DONE = "Your object has been exported in the file called |cff00ff00totalRP3_Extended_ImpExport.lua|r in this game directory:\n\nWorld of Warcraft\\WTF\\\naccount\\YOUR_ACCOUNT\\SavedVariables\n\nYou can share this file with your friends!\n\nThey can follow the import process in the |cff00ff00Full Database tab|r.",
	DB_IMPORT_FULL = "Full objects import",
	DB_IMPORT_FULL_TT = "Import the |cff00ff00totalRP3_Extended_ImpExport.lua|r file.",
	DB_IMPORT_EMPTY = "There is no object to import in your |cff00ff00totalRP3_Extended_ImpExport.lua|r file.\n\nThe file must be placed in this game directory |cffff9900prior to the game launch|r:\n\nWorld of Warcraft\\WTF\\\naccount\\YOUR_ACCOUNT\\SavedVariables",
	DB_IMPORT_DONE = "Object successfully imported!",
	DB_BACKERS_LIST = "Credits",

	DB_MY_EMPTY = "You don't have created any object yet.\nUse one of the buttons below to unleash your creativity!",
	DB_OTHERS_EMPTY = "Here will be placed all objects created by other players.",
	DB_CREATE_ITEM = "Create item",
	DB_CREATE_ITEM_TT = "Select a template for a new item",
	DB_CREATE_ITEM_TEMPLATES = "Or select a template",
	DB_CREATE_ITEM_TEMPLATES_QUICK = "Quick creation",
	DB_CREATE_ITEM_TEMPLATES_QUICK_TT = "Quickly creates a simple item without any effect.\nThen adds one unit of this item in your primary bag.",
	DB_CREATE_ITEM_TEMPLATES_DOCUMENT = "Document item",
	DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT = "An item template with an inner document object.\nUseful to quickly create a book or a scroll.",
	DB_CREATE_ITEM_TEMPLATES_BLANK = "Blank item",
	DB_CREATE_ITEM_TEMPLATES_BLANK_TT = "A blank template.\nFor those who like to start from scratch.",
	DB_CREATE_ITEM_TEMPLATES_CONTAINER = "Container item",
	DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT = "A container template.\nContainer can hold other items.",
	DB_CREATE_ITEM_TEMPLATES_FROM = "Create from ...",
	DB_CREATE_ITEM_TEMPLATES_FROM_TT = "Create a copy of an existing item.",
	DB_ADD_ITEM = "Add to main inventory",
	DB_TO_EXPERT = "Convert to expert mode",
	DB_CREATE_CAMPAIGN = "Create campaign",
	DB_CREATE_CAMPAIGN_TT = "Start creating a campaign",
	DB_CREATE_CAMPAIGN_TEMPLATES_BLANK = "Blank campaign",
	DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT = "A blank template.\nFor those who like to start from scratch.",
	DB_CREATE_CAMPAIGN_TEMPLATES_FROM = "Create from ...",
	DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT = "Create a copy of an existing campaign.",
	DB_REMOVE_OBJECT_POPUP = "Please confirm the removal of the object:\nID: |cff00ffff\"%s\"|r\n|cff00ff00[%s]|r\n\n|cffff9900Warning: This action cannot be reverted!.",
	DB_ADD_COUNT = "How many units of %s do you want to add to your inventory?",
	DB_IMPORT_ITEM = "Import item",
	DB_HARD_SAVE = "Hard save",
	DB_HARD_SAVE_TT = "Reload the game UI in order to force saved variables to be written on the disk.",
	DB_IMPORT_FULL_CONFIRM = "Do you want to import the following object?\n\n%s\n%s\nBy |cff00ff00%s|r\nVersion %s",

-- Creation
	ROOT_TITLE = "Root object",
	ROOT_ID = "Object ID",
	ROOT_GEN_ID = "Generated ID",
	ROOT_VERSION = "Version",
	ROOT_CREATED = "Created by %s on %s",
	ROOT_CREATED_BY = "Created by",
	ROOT_CREATED_ON = "Created on",
	ROOT_SAVED = "Last modification by %s on %s",
	SPECIFIC_INNER_ID = "Inner ID",
	SPECIFIC_PATH = "Root path",
	SPECIFIC_MODE = "Mode",
	SPECIFIC = "Specific object",
	ITEM_ID = "Item ID",
	QUEST_ID = "Quest ID",

-- Editor common
	EDITOR_MORE = "More",
	EDITOR_PREVIEW = "Preview",
	EDITOR_ICON_SELECT = "Click to select an icon.",
	EDITOR_NOTES = "Free notes",
	EDITOR_MAIN = "Main",
	EDITOR_CONFIRM = "Confirm",
	EDITOR_SAVE_TT = "Save all changes to the whole object %s (root object and all inner objects) and automatically increments the version number.",
	EDITOR_CANCEL_TT = "Cancel all changes to the whole object %s (root object and all inner objects).\n\n|cffff9900Unsaved changes will be lost!",
	EDITOR_ID_COPY = "Copy ID",
	EDITOR_ID_COPY_POPUP = "You can copy the object ID below if you need to paste it somewhere.",
	EDITOR_WARNINGS = "There are %s warnings.\n\n|cffff9900%s|r\n\nSave anyway?",
	EDITOR_TOP = "Top",
	EDITOR_BOTTOM = "Bottom",
	EDITOR_WIDTH = "Width",
	EDITOR_HEIGHT = "Height",
	EDITOR_ICON = "Select icon",

-- Item creation
	IT_CAST = "Casting",
	IT_NEW_NAME = "New item",
	IT_NEW_NAME_CO = "New container",
	IT_QUICK_EDITOR = "Quick item creation",
	IT_QUICK_EDITOR_EDIT = "Quick item edition",
	IT_CONVERT_TO_NORMAL = "Convert to normal mode",
	IT_CONVERT_TO_NORMAL_TT = "You are in quick mode, an easy first approach to create a simple item.\n\nYou can go further and edit this item in normal mode. This will bring you more possibilities but it's also more complex to learn and use.\n\n|cffff9900Warning: if you convert this item to normal mode, you can't revert it back to quick mode.",
	IT_DISPLAY_ATT = "Display attributes",
	IT_GAMEPLAY_ATT = "Gameplay attributes",
	IT_FIELD_QUALITY = "Item quality",
	IT_FIELD_NAME = "Item name",
	IT_FIELD_NAME_TT = "It's your item name, as it will appear on the tooltip or in item links in the chat frame.",
	IT_TT_LEFT = "Tooltip left custom text",
	IT_TT_LEFT_TT = "It's a free text that will be in the tooltip, bellow the item name.\n\n|cff00ff00A good example of information to put there is the item type (Armor, clothe, weapon, potion ...).",
	IT_TT_RIGHT = "Tooltip right custom text",
	IT_TT_RIGHT_TT = "It's a free text that will be in the tooltip, right to the left custom text.\n\n|cff00ff00A good example of information to put there would be a precision of the item type you put in the left custom text.\n\nFor example if you put Armor as left custom text you could precise here Helmet or Gloves.",
	IT_TT_DESCRIPTION = "Tooltip description",
	IT_TT_DESCRIPTION_TT = "It's your item description.\n\n|cff00ff00It shouldn't be a wall of text here, try to stay concise.\n\nIf your item is usable, try to give hints here to how it should be used.",
	IT_TT_REAGENT = "Crafting reagent flag",
	IT_TT_REAGENT_TT = "Shows the \"Crafting reagent\" line in the tooltip.\n\n|cffff7700Like others display attributes, it's just a visual flag and it's not required for your item to really be a crafting reagent.",
	IT_QUEST = "Quest flag",
	IT_QUEST_TT = "Adds a marker to the item icon to indicates that using this item should start a quest.\n\n|cffff7700Like others display attributes, it's just a visual flag and it's not required for your item to really be able to start a quest.",
	IT_TT_VALUE = "Item value",
	IT_TT_VALUE_FORMAT = "Item value (in %s)",
	IT_TT_VALUE_TT = "This value will be informed on the tooltip extension (hold Alt) or during transactions.\n\n|cffff7700If you think that this item is invaluable, please leave 0. Zero doesn't mean that is has no value, it means that the value is undefined.",
	IT_TT_WEIGHT = "Item weight",
	IT_TT_WEIGHT_FORMAT = "Item weight (in grams)",
	IT_TT_WEIGHT_TT = "The weight influence the total weight of the container.\n\n|cffff7700Please enter the value in GRAMS, as it will be converted to the user selected unit on display.",
	IT_SOULBOUND_TT = "This item will be bound to the player when put on his inventory and cannot be exchanged or dropped on the ground.",
	IT_UNIQUE_TT = "When active, the maximum item units that can be possessed by a character will be limited.",
	IT_UNIQUE_COUNT = "Max units",
	IT_UNIQUE_COUNT_TT = "Sets the maximum units that a character can possessed. Should be greater than 0.",
	IT_CRAFTED = "Crafted",
	IT_CRAFTED_TT = "A crafted item will display in the tooltip the name of the player who crafted it. The player who craft the item is the player making the action of creating one instance of this item, manually or through a workflow.",
	IT_STACK = "Stackable",
	IT_STACK_TT = "Allow units for this item to be stacked in a same container slot.",
	IT_STACK_COUNT = "Max units per stack",
	IT_STACK_COUNT_TT = "Sets the maximum units that can be stacked in a same container slot. Should be greated than 1.",
	IT_USE = "Usable",
	IT_ON_USE = "On use",
	IT_ON_USE_TT = "This workflow will be triggered when the player uses this item.\n\n|cffff9900Note:|r If you want to have more workflows for this item, you can convert it to Expert mode through the Databases view (by right-clicking on it and select |cff00ff00Convert to Expert mode|r).",
	IT_USE_TT = "Allow this item to be usable.\n\n|cff00ff00You can configure the item use effect in the 'Workflow' tab of this editor.",
	IT_USE_TEXT = "Usage text",
	IT_USE_TEXT_TT = "This text, explaining the effect for using this item, will appears in the tooltip.",
	IT_WEARABLE = "Wearable",
	IT_WEARABLE_TT = "Enables this item for the inspection feature and allows you to precisely place it on your character.\n\n|cffff9900If this flag is checked people will be able to see this item on your inventory if they inspect you, even if you don't configure the item position.",
	IT_CONTAINER_TT = "Sets this item to be a container. Container can hold other items.\n\n|cff00ff00The container can be configured in the 'Container' tab of this editor.",
	IT_CO_DURABILITY = "Durability",
	IT_CO_DURABILITY_TT = "Determine the overall max health for your container. A container can lose health over time or can be damaged. But it can also be repaired with the proper items.\n\n|cff00ff00Zero means invulnerable.",
	IT_CO_MAX = "Max weight (in grams)",
	IT_CO_MAX_TT = "This sets the limit of weight from where your container will start losing health over time due to overweight.\n\n|cff00ff00Zero means no limit.\n\n|cffff9900Please enter the max weight in GRAMS.",
	IT_CO_SIZE = "Container size",
	IT_CO_SIZE_COLROW = "%s |1row;rows; by %s columns",
	IT_DOC_ACTION = "Read document",
	IT_WARNING_1 = "Shouldn't make an item both stackable and craftable. (%s)",
	IT_WARNING_2 = "Shouldn't make a stackable container. (%s)",
	IT_CO_ONLY_INNER = "Can only contain inner items",
	IT_CO_ONLY_INNER_TT = "Marks this container to be able to contain only children items from the same root object.\n\nAs for now, only container with this option enabled can be traded while containing items.",
	IT_TRIGGER_ON_USE = "On use",
	IT_TRIGGER_ON_USE_TT = "Triggered each time the player use this item.\n\n|cff00ff00Don't forget to make your item usable in the main tab.",
	IT_TRIGGER_ON_DESTROY = "On stack destroy",
	IT_TRIGGER_ON_DESTROY_TT = "Triggered when the player destroy a stack of this item (drags & drops it out of his inventory and confirms the destruction).|cffff9900\n\nIt is triggered once per stack, and just before the actual stack destruction (so counting the item units in inventory in this workflow will still count the stack).",
	IT_NO_ADD = "Prevent manual adding",
	IT_NO_ADD_TT = "Prevent the player to manually adding the item to his inventory. Then it can only be added or looted through workflows.",
	IT_PU_SOUND = "Pick up sound",
	IT_PU_SOUND_1183 = "Bag",
	IT_PU_SOUND_1184 = "Book",
	IT_PU_SOUND_1185 = "Cloth",
	IT_PU_SOUND_1186 = "Food",
	IT_PU_SOUND_1187 = "Herb",
	IT_PU_SOUND_1188 = "Chain",
	IT_PU_SOUND_1189 = "Meat",
	IT_PU_SOUND_1190 = "Metal large",
	IT_PU_SOUND_1191 = "Metal small",
	IT_PU_SOUND_1192 = "Paper",
	IT_PU_SOUND_1193 = "Ring",
	IT_PU_SOUND_1194 = "Rock",
	IT_PU_SOUND_1195 = "Small chain",
	IT_PU_SOUND_1196 = "Wand",
	IT_PU_SOUND_1197 = "Liquid",
	IT_PU_SOUND_1198 = "Wood small",
	IT_PU_SOUND_1199 = "Wood large",
	IT_PU_SOUND_1221 = "Gems",
	IT_DR_SOUND = "Drop sound",

-- Documents
	DO_NEW_DOC = "Document",
	DO_PREVIEW = "Click to see a preview",
	DO_PARAMS_GLOBAL = "Default parameters",
	DO_PARAMS_GLOBAL_TT = "Change the document default parameters. These parameters will be used for all pages that does not use custom page parameters.",
	DO_PARAMS_CUSTOM = "Page custom parameters",
	DO_PAGE_MANAGER = "Pages manager",
	DO_PAGE_EDITOR = "Page editor: page %s",
	DO_PAGE_HEIGHT = "Page height",
	DO_PAGE_HEIGHT_TT = "The page height, in pixel. Please note that certain background support only a certain height/width ratio and can be deformed.",
	DO_PAGE_WIDTH = "Page width",
	DO_PAGE_WIDTH_TT = "The page width, in pixel. Please note that certain background support only a certain height/width ratio and can be deformed.",
	DO_PAGE_FONT = "%s font",
	DO_PAGE_BORDER = "Border",
	DO_PAGE_BORDER_1 = "Parchment",
	DO_PAGE_TILING = "Background tiling",
	DO_PAGE_TILING_TT = "Sets if the background will tile vertically and horizontally. If not, the texture will be stretched.",
	DO_PAGE_RESIZE = "Resizable",
	DO_PAGE_RESIZE_TT = "Allow the user to resize the frame.\n\n|cffff9900Be sure that your layout can be readable and does not depend on height/width ratio.\n\n|cff00ff00Note that the user will never be able to reduce the frame size below the default width and height.",
	DO_PAGE_REMOVE = "Remove page",
	DO_PAGE_REMOVE_POPUP = "Remove the page %s ?",
	DO_PAGE_ADD = "Add page",
	DO_PAGE_COUNT = "Page %s / %s",
	DO_LINKS_ONOPEN = "On open",
	DO_LINKS_ONOPEN_TT = "Triggered when the document is shown to the player.",
	DO_LINKS_ONCLOSE = "On close",
	DO_LINKS_ONCLOSE_TT = "Triggered when the document is closed by the player or another event (e.g. through a workflow effect)",

-- Workflows
	WO_WORKFLOW = "Workflows",
	WO_NO = "No workflows",
	WO_EXECUTION = "Workflow execution",
	WO_EMPTY = "You can start by adding an element to your workflow.\nThis can be an effect, a condition or a delay.",
	WO_ELEMENT_ADD = "Add element to workflow",
	WO_ELEMENT_COPY = "Copy element content",
	WO_ELEMENT_PASTE = "Paste element content",
	WO_END = "End of workflow",
	WO_ELEMENT = "Element edition",
	WO_ELEMENT_EDIT = "Click to edit element",
	WO_ELEMENT_EDIT_RIGHT = "Right-click for more operations",
	WO_ELEMENT_EDIT_CTRL = "Control-click to condition this instruction",
	WO_ELEMENT_COND = "Edit effect condition",
	WO_ELEMENT_COND_TT = "Adds a condition to this single effect.",
	WO_ELEMENT_COND_NO = "Remove effect condition",
	WO_EFFECT = "Effect",
	WO_EFFECT_TT = "Plays an effect.\nIt can be playind sounds, displaying text ...etc",
	WO_EFFECT_SELECT = "Select an effect",
	WO_EFFECT_CAT_COMMON = "Common",
	WO_EFFECT_NO_EDITOR = "This effect can't be configured.",
	WO_CONDITION = "Condition",
	WO_CONDITION_TT = "Evaluates a condition.\nStops the workflow if the condition fails.",
	WO_DELAY = "Delay",
	WO_DELAY_TT = "Pauses the workflow.\nCan also be used as a cast and can be interrupt.",
	WO_DELAY_WAIT = "Waits for",
	WO_DELAY_CAST = "Casts for",
	WO_DELAY_SECONDS = "second(s)",
	WO_DELAY_CAST_SOUND = "Cast sound ID",
	WO_DELAY_CAST_SOUND_TT = "A sound ID for a precast sound. You can put a loopable sound here and it will be interrupted in case of cast interruption.\n\n|cff00ff00Examples: 12273, 12361, ...etc.",
	WO_DELAY_CAST_TEXT = "Cast text",
	WO_DELAY_CAST_TEXT_TT = "The text placed on the cast bar.",
	WO_ELEMENT_TYPE = "Select the element type",
	WO_SECURITY = "Security level",
	WO_WO_SECURITY = "Workflow security",
	WO_SECURITY_HIGH = "High",
	WO_SECURITY_HIGH_DETAILS = "This effect is secured and will not prompt security warning.",
	WO_SECURITY_NORMAL = "Medium",
	WO_SECURITY_NORMAL_DETAILS = "This effect is secured but could cause inconveniences. It will prompt security warning, based on the user security settings.",
	WO_SECURITY_LOW = "Low",
	WO_SECURITY_LOW_DETAILS = "This effect is not secured and could be malicious. It will prompt security warning and will ask for confirmation, based on the user security settings.",
	WO_EXPERT = "Expert mode",
	WO_EXPERT_TT = "A workflow is a set of instructions that can make your object dynamic.\n\nHere you can define all your workflows for this object, then you can link them to an action in the event links tab.",
	WO_EXPERT_DONE = "Switched %s to expert mode. Now unleash your creativity!",
	WO_ADD = "Create workflow",
	WO_ADD_ID = "|cff00ff00Enter the workflow ID.|r\n\nIt's an internal ID to help you manage your workflows and won't be visible by the user.\n\nPlease note that you can't have two workflows with the same ID within the same object.",
	WO_ADD_ID_NO_AVAILABLE = "This workflow ID is not available.",
	WO_REMOVE_POPUP = "Delete the workflow %s?",
	WO_LINKS = "Event links",
	WO_EVENT_LINKS = "Object event links",
	WO_ACTIONS_LINKS = "Action links",
	WO_ACTIONS_LINKS_TT = "Here you can link your workflows to player quest actions.\nThese actions are: |cff00ff00Interact, listen, talk and inspect.|r\nEach link can be conditioned.",
	WO_LINKS_TRIGGERS = "Here you can link your workflows to specifics events for this object.",
	WO_LINKS_NO_LINKS = "No link",
	WO_LINKS_NO_LINKS_TT = "Does not link this action/event to a workflow.",
	WO_LINKS_SELECT = "Select a workflow to link",
	WO_LINKS_TO = "Linked to workflow",
	WO_CONTEXT = "Context",
	WO_CONTEXT_TT = "The workflow context determines which effects can be used in the workflow.",
	WO_COMMON_EFFECT = "Common effects",
	WO_EXPERT_EFFECT = "Expert effects",
	WO_COPY = "Copy workflow content",
	WO_PASTE = "Paste workflow content",
	WO_PASTE_CONFIRM = "Replace this workflow content with the one you copied earlier?",
	WO_EVENT_EX_LINKS = "Game event links",
	WO_EVENT_EX_LINKS_TT = "Here you can link your workflows to game events.\nEach link can be conditioned.",
	WO_EVENT_EX_LINK = "Game event link",
	WO_EVENT_EX_ADD = "Add event link",
	WO_EVENT_EX_NO = "No event link",
	WO_EVENT_EX_EDITOR = "Event link editor",
	WO_EVENT_EX_CONDI = "Event link condition editor",
	WO_EVENT_ID = "Event ID",
	WO_EVENT_ID_TT = "The event ID.\n\nYou can see the whole events list on websites like wowwiki of wowpedia.\n\nHere as an example, PLAYER_REGEN_DISABLED is triggered when you enter a combat.",

-- Delay editor
	WO_DELAY_DURATION = "Duration",
	WO_DELAY_DURATION_TT = "The duration for this delay, in seconds.",
	WO_DELAY_TYPE = "Delay type",
	WO_DELAY_TYPE_1 = "Regular delay",
	WO_DELAY_TYPE_1_TT = "Simply pauses the workflow, without showing any specific information to the player.",
	WO_DELAY_TYPE_2 = "Cast",
	WO_DELAY_TYPE_2_TT = "Show a casting bar during the workflow pause.",
	WO_DELAY_INTERRUPT = "Interruption",
	WO_DELAY_INTERRUPT_1 = "No interruption",
	WO_DELAY_INTERRUPT_2 = "Interrupt on move",

-- Effects editors
	EFFECT_SCRIPT = "Execute restricted lua script",
	EFFECT_SCRIPT_TT = "Execute a lua script in a restricted safe environment.",
	EFFECT_SCRIPT_SCRIPT = "Lua code",
	EFFECT_SCRIPT_SCRIPT_TT = [[This script will be executed in a safe environment where you can have access to all lua synthax and API (table, string, math...) and the Extended |cff00ff00effect|r function.

|cffff0000You don't have access to the game API here!|r

A custom lua script will always be less efficient than a workflow effect, as it is compiled each time, in opposition to a workflow effect being compiled once.

|cffff9900So keep the script to the minimum and only use this script effect if necessary.]],
	EFFECT_SCRIPT_I_EFFECT = "Insert effect",
	EFFECT_SCRIPT_I_EFFECT_TT = [[Insert an effect function where the cursor is in the code.

The function is in the form of:
|cff00ffffeffect( effectID, args, arg1, arg2, ...);|r
- |cff00ffffEffect ID|r: the effect ID, you can find it by looking at the addon source code.
- |cff00ffffargs|r: The execution arguments: should always be the args variable.
- |cff00ffffEffect arguments argX|r: All effects arguments can be found in the addon source code.

|cffffff00Please always keep the 'args' as second parameters, |rit is needed by the effect function and contains all workflows arguments.

|cff00ff00We won't, for now, heavily document all effect ID and arguments as we consider this effect restricted to users capable of looking at the addon source code. ;)]],
	EFFECT_CAT_SOUND = "Sound and music",
	EFFECT_CAT_SPEECH = "Speech and emotes",
	EFFECT_CAT_CAMPAIGN = "Campaign and quest",
	EFFECT_TEXT = "Display text",
	EFFECT_TEXT_TT = "Displays a text.\nDifferent outputs are possible.",
	EFFECT_TEXT_PREVIEW = "Displayed text",
	EFFECT_TEXT_TEXT = "Text",
	EFFECT_TEXT_TEXT_DEFAULT = "Hello.\nHow are you?",
	EFFECT_TEXT_TEXT_TT = "The text to display.",
	EFFECT_TEXT_TYPE = "Text type",
	EFFECT_TEXT_TYPE_1 = "Chat frame text",
	EFFECT_TEXT_TYPE_2 = "Alert popup",
	EFFECT_TEXT_TYPE_3 = "Raid alert text",
	EFFECT_TEXT_TYPE_4 = "Alert message",
	EFFECT_DISMOUNT = "Dismiss mount",
	EFFECT_DISMOUNT_TT = "Dismount the player from his current mount.",
	EFFECT_DISPET = "Dismiss battle pet",
	EFFECT_DISPET_TT = "Dismiss the currently invoked battle pet.",
	EFFECT_RANDSUM = "Summon random battle pet",
	EFFECT_SUMMOUNT = "Summon a mount",
	EFFECT_SUMMOUNT_TT = "Summon a specific mount, if available.",
	EFFECT_SHEATH = "Toggle weapons sheath",
	EFFECT_SHEATH_TT = "Draw or put up the character weapons.",
	EFFECT_VAR_OBJECT_CHANGE = "Variable operation",
	EFFECT_VAR_OBJECT_CHANGE_TT = "Performs an operation on a variable.\n\n|cffff9900For math operations: If the variable does not exists or can't be cast as a number, it will be initialized at 0.",
	EFFECT_VAR_OPERAND = "Variable dynamic value",
	EFFECT_VAR_OPERAND_TT = "Place a dynamic value in a variable. You have access to all test values from conditions.",
	EFFECT_VAR_OPERAND_CONFIG = "Value configuration",
	EFFECT_VAR_OPERAND_CONFIG_NO = "No configuration for this value",
	EFFECT_VAR = "Variable name",
	EFFECT_SOURCE = "Source",
	EFFECT_SOURCE_V = "Variable source",
	EFFECT_SOURCE_W = "Workflow source",
	EFFECT_SOURCE_WORKFLOW = "Workflow",
	EFFECT_SOURCE_WORKFLOW_TT = "Search the variable in the workflow execution. The scope for this variable is limited to the workflow execution and will be discarded afterward.",
	EFFECT_SOURCE_OBJECT = "Object",
	EFFECT_SOURCE_OBJECT_TT = "Search the variable in the workflow source object.\n\nOnly works if the source object is an item or a campaign/quest/step.\n\nIn the case of a campaign, quest or quest step, the variable will be searched in the campaign level (global for the whole campaign).",
	EFFECT_SOURCE_CAMPAIGN = "Active campaign",
	EFFECT_SOURCE_CAMPAIGN_TT = "Search the variable in the current campaign, if there is a currently active campaign.",
	EFFECT_SOURCE_PARENT = "Parent container",
	EFFECT_SOURCE_PARENT_TT = "Search for the workflow in the parent container item.",
	EFFECT_SOURCE_SLOT = "Item in slot (child)",
	EFFECT_SOURCE_SLOT_TT = "Search the workflow in the item in a specific slot inside the container item. Only works for container item!",
	EFFECT_SOURCE_SLOT_B = "Item in slot (sibling)",
	EFFECT_SOURCE_SLOT_B_TT = "Search the workflow in the item in a specific slot of the same parent container.",
	EFFECT_OPERATION = "Operation",
	EFFECT_OPERATION_TYPE = "Operation type",
	EFFECT_OPERATION_TYPE_INIT = "Init",
	EFFECT_OPERATION_TYPE_INIT_TT = "Initializes the variable to a value, only if the variable does not exist yet.",
	EFFECT_OPERATION_TYPE_SET = "Set",
	EFFECT_OPERATION_TYPE_SET_TT = "Sets the variable to a value, even if the variable has already been initialiazed.",
	EFFECT_OPERATION_TYPE_MULTIPLY = "Multiplication",
	EFFECT_OPERATION_TYPE_ADD = "Addition",
	EFFECT_OPERATION_TYPE_DIV = "Division",
	EFFECT_OPERATION_TYPE_SUB = "Substraction",
	EFFECT_VAR_VALUE = "Variable value",
	EFFECT_OPERATION_VALUE = "Operation value",
	EFFECT_DOC_DISPLAY = "Display document",
	EFFECT_DOC_DISPLAY_TT = "Display a document to the player. If there is already a shown document, it will be replaced.",
	EFFECT_DOC_CLOSE = "Close document",
	EFFECT_DOC_CLOSE_TT = "Close the currently opened document. Do nothing if there is no shown document.",
	EFFECT_SPEECH_NAR = "Speech: Narration",
	EFFECT_SPEECH_NAR_TT = "Plays a narration as a formated emote.\n\n|cff00ff00Has the same effect as playing an emote starting with a || (pipe character). It will be formated in chat for other TRP users.",
	EFFECT_SPEECH_NAR_DEFAULT = "The snow blows white on the mountain tonight ...",
	EFFECT_SPEECH_NAR_TEXT_TT = "Please do not include the leading pipe || character.",
	EFFECT_SPEECH_TYPE = "Speech type",
	EFFECT_SPEECH_NPC = "Speech: NPC",
	EFFECT_SPEECH_NPC_TT = "Plays a npc speech as a formated emote.\n\n|cff00ff00Has the same effect as playing an emote starting with a || (pipe character) with a npc name and a text. It will be formated in chat for other TRP users.",
	EFFECT_SPEECH_NPC_DEFAULT = "Do you want to build a snowman?",
	EFFECT_SPEECH_NPC_NAME = "NPC name",
	EFFECT_SPEECH_NPC_NAME_TT = "The NPC name.",
	EFFECT_SPEECH_PLAYER = "Speech: Player",
	EFFECT_SPEECH_PLAYER_TT = "Makes the player speak, yell or do an /e emote.",
	EFFECT_SPEECH_PLAYER_DEFAULT = "Let the dragon consume you!",
	EFFECT_SOUND_PLAY = "Play",
	EFFECT_SOUND_ID_SELF = "Play sound ID",
	EFFECT_SOUND_ID_SELF_TT = "Plays a sound in a particular channel. Only the player will hear it.",
	EFFECT_SOUND_ID_SELF_PREVIEW = "Plays sound ID %s in channel %s.",
	EFFECT_SOUND_ID_SELF_ID = "Sound ID",
	EFFECT_SOUND_ID_SELF_ID_TT = "The ID is an internal identifier for sounds in the game.\n\n|cff00ff00You can easily find all ID on websites like wowhead.\n\n|cffff9900Note that if the ID points to multiple sub-sounds, a sub-sound will be chosen randomly.",
	EFFECT_SOUND_ID_SELF_CHANNEL = "Channel",
	EFFECT_SOUND_ID_SELF_CHANNEL_SFX = "SFX",
	EFFECT_SOUND_ID_SELF_CHANNEL_SFX_TT = "SFX is for effect sounds. It uses the sound volume game option.\n\nMultiple different SFX sounds can be played simultaneously.",
	EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE = "Ambience",
	EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE_TT = "Ambience is for ambiant sound. It uses the ambience volume game option\n\nMultiple different ambience sounds can be played simultaneously.\n\n|cffff9900Please do not use this effect to play music as this won't stop the current game music and you would have musics overlaping each other. If you want to play a music use the proper music effect.",
	EFFECT_SOUND_ID_SELF_ID_TT = "The ID is an internal identifier for sounds in the game.\n\n|cff00ff00You can easily find all ID on websites like wowhead.\n\n|cffff9900Leave empty to stop all sounds played on the selected channel.",
	EFFECT_SOUND_MUSIC_SELF = "Play music",
	EFFECT_SOUND_MUSIC_SELF_TT = "Plays a music. Only the player will hear it.\n\nNote that the music will loop until the game plays a music of his own (when entering a zone for example), or until a \"stop music\" effect is played. Also the player can always manually stop the music through the sound history frame.",
	EFFECT_SOUND_MUSIC_SELF_PREVIEW = "Plays music: %s",
	EFFECT_SOUND_MUSIC_SELF_PATH = "Music path",
	EFFECT_SOUND_MUSIC_SELF_PATH_TT = "The music path within the game files.\n\n|cffff9900It must not contains the Sounds\\Music\\ part of the path, nor the .mp3 at the end.",
	EFFECT_SOUND_MUSIC_STOP = "Stop music",
	EFFECT_SOUND_ID_LOCAL = "Play local sound",
	EFFECT_SOUND_ID_LOCAL_TT = "Plays a sound for players around you.",
	EFFECT_SOUND_ID_LOCAL_PREVIEW = "Plays sound ID %s in channel %s in a %s yards radius.",
	EFFECT_SOUND_LOCAL_DISTANCE = "Playback radius",
	EFFECT_SOUND_LOCAL_DISTANCE_TT = "Determine the radius around the player within which other players will hear this sound.",
	EFFECT_SOUND_MUSIC_LOCAL = "Play local music",
	EFFECT_SOUND_MUSIC_LOCAL_TT = "Plays a music for players around you.",
	EFFECT_SOUND_MUSIC_LOCAL_PREVIEW = "Plays music \"%s\" in a %s yards radius.",
	EFFECT_ITEM_BAG_DURABILITY = "Damage/repair container",
	EFFECT_ITEM_BAG_DURABILITY_TT = "Repair or damage the durability of the item parent container.\n\n|cff00ff00Only works on containers having durability.",
	EFFECT_ITEM_BAG_DURABILITY_PREVIEW_1 = "|cff00ff00Repair|cffffff00 parent container for %s durability points.",
	EFFECT_ITEM_BAG_DURABILITY_PREVIEW_2 = "|cffff0000Damage|cffffff00 parent container for %s durability points.",
	EFFECT_ITEM_BAG_DURABILITY_METHOD = "Type",
	EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL = "Repair",
	EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL_TT = "Repair the parent container. The parent container health can't exceed the container maximum durability.",
	EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE = "Damage",
	EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE_TT = "Damage the parent container. The parent container health can't be damage below 0.",
	EFFECT_ITEM_BAG_DURABILITY_VALUE = "Durability point",
	EFFECT_ITEM_BAG_DURABILITY_VALUE_TT = "The amount of durability points to add/substract from the parent container health.",
	EFFECT_ITEM_CONSUME = "Consume item",
	EFFECT_ITEM_CONSUME_TT = "Consumes the used item and destroys it.",
	EFFECT_DOC_ID = "Document ID",
	EFFECT_DOC_ID_TT = "The document to show.\n\n|cffffff00Please enter the full document ID (parents ID and inner ID).\n\n|cff00ff00Hint: copy/paste the full ID to be sure to avoid typos.",
	EFFECT_ITEM_ADD = "Add item",
	EFFECT_ITEM_ADD_TT = "Adds items to your bag.",
	EFFECT_ITEM_ADD_PREVIEW = "Adds %sx %s",
	EFFECT_ITEM_ADD_ID = "Item ID",
	EFFECT_ITEM_ADD_ID_TT = "The item to add.\n\n|cffffff00Please enter the full item ID (parents ID and inner ID).\n\n|cff00ff00Hint: copy/paste the full ID to be sure to avoid typos.",
	EFFECT_ITEM_ADD_QT = "Amount",
	EFFECT_ITEM_ADD_QT_TT = "The number of item to add.\n\n|cff00ff00Note that the addon will do his best to reach this amount but it is possible that not all items will be added: for example if the bag becomes full or if the item has a maximum of units the character can have ('Unique' attribute).",
	EFFECT_ITEM_ADD_CRAFTED = "Crafted",
	EFFECT_ITEM_ADD_CRAFTED_TT = "When checked, and if the added items are craftable (have the crafted flag in their display attributes), will display \"Crafted by xxx\" in the items tooltip where xxx will be the player name.",
	EFFECT_ITEM_REMOVE = "Destroy item",
	EFFECT_ITEM_REMOVE_TT = "Destroy items from your inventory.",
	EFFECT_ITEM_REMOVE_PREVIEW = "Destroys %sx %s",
	EFFECT_ITEM_REMOVE_ID_TT = "The item to remove.\n\n|cffffff00Please enter the full item ID (parents ID and inner ID).\n\n|cff00ff00Hint: copy/paste the full ID to be sure to avoid typos.",
	EFFECT_ITEM_REMOVE_QT_TT = "The number of item to remove.",
	EFFECT_ITEM_COOLDOWN = "Start cooldown",
	EFFECT_ITEM_COOLDOWN_TT = "Start a cooldown for this item.",
	EFFECT_COOLDOWN_DURATION = "Cooldown duration",
	EFFECT_ITEM_COOLDOWN_PREVIEW = "Duration: %s second(s)",
	EFFECT_COOLDOWN_DURATION_TT = "The cooldown duration, in seconds.",
	EFFECT_ITEM_SOURCE_ID = "You can select an item ID you want to search, or leave empty if you want to search for all types of items.",
	EFFECT_ITEM_SOURCE_1 = "All inventory",
	EFFECT_ITEM_SOURCE_2 = "Parent container",
	EFFECT_ITEM_SOURCE_3 = "This item",
	EFFECT_ITEM_USE = "Container: item use",
	EFFECT_ITEM_USE_TT = "Use a item in a slot in the container.\n\n|cffff9900Only works if this workflow is triggered by a container.",
	EFFECT_ITEM_USE_PREVIEW = "Use item in slot %s",
	EFFECT_ITEM_WORKFLOW_PREVIEW_P = "Triggers workflow %s in parent container.",
	EFFECT_ITEM_WORKFLOW_PREVIEW_S = "Triggers workflow %s in sibling item in slot %s.",
	EFFECT_ITEM_WORKFLOW_PREVIEW_C = "Triggers workflow %s in child item in slot %s.",
	EFFECT_ITEM_WORKFLOW = "Run item workflow",
	EFFECT_ITEM_WORKFLOW_TT = "Run a workflow on the parent container or on an item in a specific child item (for container only).",
	EFFECT_ITEM_DICE = "Roll dices",
	EFFECT_ITEM_DICE_TT = "They see me rollin', they hating.",
	EFFECT_ITEM_DICE_PREVIEW = "Rollin' %s",
	EFFECT_ITEM_DICE_ROLL = "Roll",
	EFFECT_ITEM_DICE_ROLL_TT = "Enter a roll configuration similar to the /trp3 roll command.\n\n|cff00ff00Example: 1d20, 3d6 ..etc.",
	EFFECT_RUN_WORKFLOW_SLOT = "Slot ID",
	EFFECT_RUN_WORKFLOW_SLOT_TT = "The index of the container slot to trigger. Slots are indexed from top left to bottom right beginning with slot 1.",
	EFFECT_PROMPT = "Prompt for input",
	EFFECT_PROMPT_PREVIEW = "Prompt user for an input to store in variable |cff00ff00%s|r.",
	EFFECT_PROMPT_TT = "Ask the user for an input and store it in a variable. Then optionally trigger a workflow.\n\n|cffff0000WARNING, this effect execution is asynchronous.",
	EFFECT_PROMPT_TEXT = "Popup text",
	EFFECT_PROMPT_TEXT_TT = "The text that will be presented to the user in the input popup.",
	EFFECT_PROMPT_DEFAULT = "Default value",
	EFFECT_PROMPT_DEFAULT_TT = "The default value for the input.",
	EFFECT_PROMPT_VAR = "Variable name",
	EFFECT_PROMPT_VAR_TT = "The name of the variable storing the user input.",
	EFFECT_PROMPT_CALLBACK = "Workflow callback (optional)",
	EFFECT_PROMPT_CALLBACK_TT = "The workflow name to call after the user input.\n\nThis is optional. Leave empty to not use any callback.\n\nIs given, the workflow will be called with the input as workflow variable with the proper name.\n\n|cffffff00Warning: the callback is called even if the player click 'Cancel' in the prompt popup. In that case the variable will be left untouched if it exists.",
	EFFECT_USE_SLOT = "Container slot number",
	EFFECT_USE_SLOT_TT = "The container slots number are assigned from left to right and top to bottom.",
	EFFECT_QUEST_START = "Reveal quest",
	EFFECT_QUEST_START_TT = "Reveal a quest in the quest log.\n\n|cffff9900Only works if the quest is part of the current active campaign.",
	EFFECT_QUEST_START_PREVIEW = "Reveal quest %s.",
	EFFECT_QUEST_START_ID = "Quest ID",
	EFFECT_QUEST_START_ID_TT = "Use the browser to select your quest (the quest must exist before linking it to this effect).\n\nIf your quest does not appear in the browser, save your campaign and try again.",
	EFFECT_QUEST_GOTOSTEP = "Change quest step",
	EFFECT_QUEST_GOTOSTEP_TT = "Change a quest step.\n\n|cffff9900Only works if the quest is part of the current active campaign and that the quest has already been revealed in the quest log.",
	EFFECT_QUEST_GOTOSTEP_ID = "Quest step ID",
	EFFECT_QUEST_GOTOSTEP_ID_TT = "Use the browser to select your quest step (the quest and quest step must exist before linking it to this effect).\n\nIf your quest step does not appear in the browser, save your campaign and try again.",
	EFFECT_QUEST_GOTOSTEP_PREVIEW = "Go to step %s.",
	EFFECT_QUEST_REVEAL_OBJ = "Reveal quest objective",
	EFFECT_QUEST_REVEAL_OBJ_TT = "Reveal a quest objective.\n\n|cffff9900Only works if the quest is part of the current active campaign and that the quest has already been revealed in the quest log.",
	EFFECT_QUEST_REVEAL_OBJ_PREVIEW = "Reveal objective: %s for %s",
	EFFECT_QUEST_OBJ_ID = "Objective ID",
	EFFECT_QUEST_OBJ_ID_TT = "Enter the objective ID. Enter only the objective ID and not the full campaign-quest-objective ID.",
	EFFECT_QUEST_REVEAL_OBJ_DONE = "Complete objective",
	EFFECT_QUEST_REVEAL_OBJ_DONE_TT = "Marks an objective as completed.\n\n|cffff9900Only works if the quest is part of the current active campaign, if the quest has already been revealed in the quest log and if the objective has already been revealed.",
	EFFECT_QUEST_REVEAL_OBJ_DONE_PREVIEW = "Complete objective: %s for %s",
	EFFECT_DIALOG_START = "Start cutscene",
	EFFECT_DIALOG_START_TT = "Start a cutscene. If a cutscene is already played, it will be interrupted and replace by this one.",
	EFFECT_DIALOG_START_PREVIEW = "Start cutscene %s.",
	EFFECT_DIALOG_ID = "Cutscene ID",
	EFFECT_DIALOG_QUICK = "Quick cutscene",
	EFFECT_DIALOG_QUICK_TT = "Generate a quick cutscene with only one step. It will automatically takes the player's target as speaker.",
	EFFECT_ITEM_LOOT = "Show/drop loot",
	EFFECT_ITEM_LOOT_TT = "Displays a loot container to the player or drop loot on the ground where the player is.",
	EFFECT_ITEM_LOOT_PREVIEW_1 = "Drop %s item(s) on the ground.",
	EFFECT_ITEM_LOOT_PREVIEW_2 = "Display loot with %s item(s).",
	EFFECT_ITEM_LOOT_DROP = "Drop items",
	EFFECT_ITEM_LOOT_DROP_TT = "Drops items on the ground instead of presenting a loot frame to the player. The player can then loot the items he wants with the 'search for items' feature.",
	EFFECT_ITEM_LOOT_NAME = "Source name",
	EFFECT_ITEM_LOOT_NAME_TT = "This will be the loot container name.",
	EFFECT_ITEM_LOOT_SLOT = "Click on a slot to configure it.",
	EFFECT_MISSING = "This effect (%s) is unknown and you should remove it.",
	EFFECT_SIGNAL = "Send signal",
	EFFECT_SIGNAL_TT = "Send a signal with an ID and a value to the player's target.\n\nThis signal can be handle by campaign/quest/step game event links through the event |cff00ff00TRP3_SIGNAL|r.",
	EFFECT_SIGNAL_PREVIEW = "|cffffff00Send signal ID:|r %s|cffffff00 with value:|r %s",
	EFFECT_SIGNAL_ID = "Signal ID",
	EFFECT_SIGNAL_ID_TT = "It's the ID of your signal. It can be tested if conditions and workflows triggered by the game event |cff00ff00TRP3_SIGNAL|r.",
	EFFECT_SIGNAL_VALUE = "Signal value",
	EFFECT_SIGNAL_VALUE_TT = "It's the value of your signal. It can be tested if conditions and workflows triggered by the game event |cff00ff00TRP3_SIGNAL|r and inserted as text tags like |cff00ff00${event.2}|r.",
	EFFECT_RUN_WORKFLOW = "Run workflow",
	EFFECT_RUN_WORKFLOW_TT = "Run another workflow. All workflow variables will be passed through the next.",
	EFFECT_RUN_WORKFLOW_PREVIEW = "Run workflow %s in %s.",
	EFFECT_W_OBJECT_TT = "Search for the workflow in the same object.",
	EFFECT_W_CAMPAIGN_TT = "Search for the workflow in the current active campaign.",
	EFFECT_RUN_WORKFLOW_ID = "Workflow ID",
	EFFECT_RUN_WORKFLOW_ID_TT = "The workflow ID you want to run.",
	EFFECT_CAT_CAMERA = "Camera",
	EFFECT_CAT_CAMERA_ZOOM_IN = "Camera zoom in",
	EFFECT_CAT_CAMERA_ZOOM_IN_TT = "Zooms the camera in by a specified distance.",
	EFFECT_CAT_CAMERA_ZOOM_OUT = "Camera zoom out",
	EFFECT_CAT_CAMERA_ZOOM_OUT_TT = "Zooms the camera out by a specified distance.",
	EFFECT_CAT_CAMERA_ZOOM_DISTANCE = "Zoom distance",
	EFFECT_CAT_CAMERA_SAVE = "Save camera",
	EFFECT_CAT_CAMERA_SAVE_TT = "Saves the player's current camera position in one of the 5 save slots available.",
	EFFECT_CAT_CAMERA_LOAD = "Load camera",
	EFFECT_CAT_CAMERA_LOAD_TT = "Sets the player's camera position based on a previously saved position.",
	EFFECT_CAT_CAMERA_SLOT = "Slot number",
	EFFECT_CAT_CAMERA_SLOT_TT = "The index of one of the slots available, 1 to 5.",

-- Inner objects
	IN_INNER = "Inner objects",
	IN_INNER_S = "Inner object",
	IN_INNER_LIST = "Inner object list",
	IN_INNER_HELP_TITLE = "What are inner objects?",
	IN_INNER_ADD = "Add inner object",
	IN_INNER_ADD_NEW = "Create new object",
	IN_INNER_ADD_COPY = "Add copy of existing object",
	IN_INNER_ENTER_ID = "Enter new inner object ID",
	IN_INNER_ENTER_ID_TT = "Inner object ID must be unique within the parent object.\n\n|cffff9900Please only use lower case characters and underscores. Any other character will be converted to underscores.",
	IN_INNER_EMPTY = "No inner objects\n\nYou can add one by using the add button below.",
	IN_INNER_HELP = [[Inner objects are objects stored in a parent object.

We should begin with some examples:
|cffff9900
- You want to create a rifle item with bullets item to charge it. Typically the rifle would be the main object, in which the bullet object would be an inner object for the rifle.

- A mail item opening a document. The document would be an inner object for the mail item.

- Creating quests: any item/document/cutscenes you use in a quest could be inner objects for this quest.

|rThe advantages of using inner objects are multiple:
|cff00ff00
- Inner objects data are really stored inside the parent object data. That mean they share the same version number, and their data are exchanged in the same time as the parent object data.

- You can freely determine the inner object ID, as it will use the parent object ID as prefix. You just can't have two inner objects having the same ID inside the same parent object.

- Using inner objects brings better performances.

- It's easier to manage and navigate through your objects if they are stored in parent objects. You can really see a parent object as a folder in which you store files.

|rSo it's simple: when you want to create an object, always ask yourself if it wouldn't be better to have it as an inner object for another item or a quest.

|cff00ff00Also: document and cutscenes can only be inner objects!]],
	IN_INNER_DELETE_CONFIRM = "Remove the inner object |cff00ffff\"%s\"|r |cff00ff00[%s]|r from the parent object |cff00ff00[%s]|r?\n\n|cffff9900The inner object will be lost.",
	IN_INNER_DELETE_TT = "Remove this inner object from the parent object.",
	IN_INNER_ID_ACTION = "Change ID",
	IN_INNER_ID_COPY = "Copy",
	IN_INNER_ID_COPY_TT = "You can copy your inner object to paste it in any other parent object.",
	IN_INNER_ID = "Please enter a new ID for the inner object |cff00ff00[%s]|r.\n\nOld ID: |cff00ffff\"%s\"|r",
	IN_INNER_NO_AVAILABLE = "This inner ID is not available!",
	IN_INNER_COPY_ACTION = "Copy object content",
	IN_INNER_PASTE_ACTION = "Paste object content",
	IN_INNER_PASTE_CONFIRM = "Replace the content of this inner object with the one you copied earlier?",

-- Operands
	OP_COMP_EQUALS = "is equal to",
	OP_COMP_NEQUALS = "is not equal to",
	OP_COMP_GREATER = "is greater than",
	OP_COMP_GREATER_OR_EQUALS = "is greater than or equal to",
	OP_COMP_LESSER = "is lesser than",
	OP_COMP_LESSER_OR_EQUALS = "is lesser than or equal to",
	OP_UNIT = "Unit type",
	OP_UNIT_PLAYER = "Player",
	OP_UNIT_TARGET = "Target",
	OP_UNIT_NPC = "NPC",
	OP_AND = "AND",
	OP_AND_SWITCH = "Switch to AND",
	OP_OR = "OR",
	OP_OR_SWITCH = "Switch to OR",
	OP_COMPA_SEL = "Comparator selection",
	OP_REMOVE_TEST = "Remove test",
	OP_ADD_TEST = "Add test",
	OP_FAIL = "Failure message",
	OP_FAIL_TT = "This message will be displayed if the condition fails. Leave empty if you don't want to show any message.",
	OP_FAIL_W = "Failure workflow (Expert)",
	OP_FAIL_W_TT = "If this condition fails, this workflow will be called. That's a way for making an 'else' in a condition.\n\n|cffff9900Please note that this feature is performance heavy and should be used with caution. The called workflow must exist in the same object.\n\n|cffff0000Do NEVER, ever, create a cycle in called workflow (e.g. a workflow A calling a workflow B calling again the workflow A), even using delays!",
	OP_UNIT_VALUE = "Unit value",
	OP_UNIT_TEST = "Unit test",
	OP_EVAL_VALUE = "Evaluated value",
	OP_PREVIEW = "Preview value",
	OP_CONFIGURE = "Configure",
	OP_DIRECT_VALUE = "Direct value",
	OP_STRING = "String value",
	OP_NUMERIC = "Numeric value",
	OP_BOOL = "Boolean value",
	OP_BOOL_TRUE = "TRUE",
	OP_BOOL_FALSE = "FALSE",
	OP_CURRENT = "Current value",
	OP_CURRENT_TT = "Prints in the chat frame the evaluation of this operand based on the current situation.",
	OP_OP_UNIT_NAME = "Unit name",
	OP_OP_UNIT_NAME_TT = "|cff00ff00The unit name, as returned by the first parameters of UnitName.\n\n|rWhen used on a player, it could equals |cff00ff00'player'|r or |cff00ff00'player-realm'|r. So if you want to be sure to have the form |cff00ff00'player-realm'|r use the |cff00ff00'Unit ID'|r operand.",
	OP_OP_UNIT_ID = "Unit ID",
	OP_OP_UNIT_ID_TT = "|cff00ff00The unit id in the form |cff00ff00'player-realm'|r, as returned by UnitFullName. Ensure that there is always a realm part.",
	OP_OP_UNIT_NPC_ID = "Unit NPC ID",
	OP_OP_UNIT_NPC_ID_TT = "|cff00ff00The NPC ID, as determined by UnitGUID. Only works with NPC.",
	OP_OP_UNIT_HEALTH = "Unit health",
	OP_OP_UNIT_HEALTH_TT = "|cff00ff00The unit's current amount of health (hit points).",
	OP_OP_UNIT_EXISTS = "Unit exists",
	OP_OP_UNIT_EXISTS_TT = "|cff00ff00Returns whether a unit exists.\n\n|rA unit 'exists' if it can be referenced by the player; e.g. target exists if the player has a target, npc exists if the player is currently interacting with an NPC, etc.",
	OP_OP_UNIT_GUILD = "Unit guild name",
	OP_OP_UNIT_GUILD_TT = "|cff00ff00The unit guild name (if any).",
	OP_OP_UNIT_GUILD_RANK = "Unit guild rank",
	OP_OP_UNIT_GUILD_RANK_TT = "|cff00ff00The guild rank of the unit (if the unit has a guild).",
	OP_OP_UNIT_RACE = "Unit race",
	OP_OP_UNIT_RACE_TT = "|cff00ff00The unit race IN ENGLISH LOWER CASE, as returned by the second arguments of UnitRace.\n\nSo it's Scourge for Undead.",
	OP_OP_UNIT_CLASS = "Unit class",
	OP_OP_UNIT_CLASS_TT = "|cff00ff00The unit class IN ENGLISH LOWER CASE, as returned by the second arguments of UnitClass.",
	OP_OP_UNIT_SEX = "Unit sex",
	OP_OP_UNIT_SEX_TT = "|cff00ff00The unit sex index. 2 = Male, 3 = Female. 1 is for neutral or unknown.\n\n|cffffff00Returned as a STRING.",
	OP_OP_UNIT_FACTION = "Unit faction",
	OP_OP_UNIT_FACTION_TT = "|cff00ff00The unit faction IN ENGLISH LOWER CASE.",
	OP_OP_UNIT_LEVEL = "Unit level",
	OP_OP_UNIT_LEVEL_TT = "|cff00ff00The level of the unit.",
	OP_OP_UNIT_SPEED = "Unit speed",
	OP_OP_UNIT_SPEED_TT = "|cff00ff00The current unit speed in yard per seconds. Walking is 2.5 and running without buff is 7.",
	OP_OP_UNIT_CLASSIFICATION = "Unit classification",
	OP_OP_UNIT_CLASSIFICATION_TT = "|cff00ff00The unit classification IN ENGLISH LOWER CASE. Example: normal, elite, rare, worldboss, minus...\n\nAlways returns normal for players.",
	OP_OP_UNIT_ISPLAYER = "Unit is player",
	OP_OP_UNIT_ISPLAYER_TT = "|cff00ff00Returns whether the unit is a player.",
	OP_OP_UNIT_DEAD = "Unit is dead",
	OP_OP_UNIT_DEAD_TT = "|cff00ff00Returns whether a unit is either dead or a ghost.",
	OP_OP_INV_WEIGHT = "Container total weight",
	OP_OP_INV_WEIGHT_PREVIEW = "Total weight of |cffff9900%s",
	OP_OP_INV_WEIGHT_TT = "|cff00ff00The current total weight of a container (its own weight plus the content).",
	OP_OP_INV_COUNT = "Item units count",
	OP_OP_INV_COUNT_TT = "|cff00ff00The number of units of an item the player possesses in his inventory.\n\nLeave the ID empty to count for all items.",
	OP_OP_INV_COUNT_PREVIEW = "%s units in |cffff9900%s",
	OP_OP_INV_COUNT_ANY = "Any item",
	OP_OP_QUEST_STEP = "Quest current step",
	OP_OP_QUEST_STEP_TT = "Return the current quest step ID. If the quest is not revealed or has no current step, returns nil.",
	OP_OP_QUEST_STEP_PREVIEW = "%s current step",
	OP_OP_QUEST_OBJ = "Quest objective",
	OP_OP_QUEST_OBJ_TT = "Return the completion (true or false) for a quest objective. If the campaign, quest or the objective is not yet revealed, returns false.",
	OP_OP_QUEST_OBJ_PREVIEW = "Objective %s from %s",
	OP_OP_QUEST_NPC = "Unit is campaign NPC",
	OP_OP_QUEST_NPC_TT = "|cff00ff00Returns whether a unit is a customized NPC in the currently active campaign.",
	OP_OP_QUEST_OBJ_ALL = "Quest all objectives",
	OP_OP_QUEST_OBJ_ALL_TT = "Returns whether all possible quest objectives are completed. So all objectives also has to be revealed.",
	OP_OP_QUEST_OBJ_ALL_PREVIEW = "%s all obj. done",
	OP_OP_QUEST_OBJ_CURRENT = "Quest current objectives",
	OP_OP_QUEST_OBJ_CURRENT_TT = "Returns whether all currently revealed quest objectives are completed.",
	OP_OP_QUEST_OBJ_CURRENT_PREVIEW = "%s current obj. done",
	OP_OP_UNIT_CREATURE_TYPE = "Unit creature type",
	OP_OP_UNIT_CREATURE_TYPE_TT = "|cff00ff00The creature type of the unit. Example: Beast, Dragonkin, Elemental...",
	OP_OP_UNIT_CREATURE_FAMILY = "Unit creature family",
	OP_OP_UNIT_CREATURE_FAMILY_TT = "|cff00ff00The creature family of the unit. Only works on beasts and demons. Example: Crab, Wolf, Succubus, Voidwalker...",
	OP_OP_UNIT_DISTANCE_TRADE = "Unit is near (trade)",
	OP_OP_UNIT_DISTANCE_TRADE_TT = "|cff00ff00Returns whether a unit is close enough for trading (11.11 yards).",
	OP_OP_UNIT_DISTANCE_INSPECT = "Unit is near (inspection)",
	OP_OP_UNIT_DISTANCE_INSPECT_TT = "|cff00ff00Returns whether a unit is close enough for inspection (28 yards).",
	OP_OP_CHAR_FACING = "Character facing",
	OP_OP_CHAR_FACING_TT = "Returns the player's orientation (in radians, 0 = north, values increasing counterclockwise).\n\n|cffff9900Indicates the direction the player model is (normally) facing and in which the player will move if he begins walking forward, not the camera orientation.",
	OP_OP_CHECK_VAR = "Variable string value",
	OP_OP_CHECK_VAR_TT = "Returns the value of a variable, |cff00ff00interpreted as a string|r.\n\nIf the variable does not exists or can't be reached, returns the string 'nil'.\n\n|cffff9900As the value depends on runtime, it cannot be previewed.",
	OP_OP_CHECK_VAR_PREVIEW = "|cff00ffff%s:|r %s",
	OP_OP_CHECK_VAR_N_PREVIEW = "|cff00ffff%s: |cffff9900(n)|r %s",
	OP_OP_CHECK_VAR_N = "Variable numeric value",
	OP_OP_CHECK_VAR_N_TT = "Returns the value of a variable, |cff00ff00interpreted as a number|r.\n\nIf the variable does not exists, can't be reached or can't be interpreted as a number, returns 0.\n\n|cffff9900As the value depends on runtime, it cannot be previewed.",
	OP_OP_CHAR_FALLING = "Character is falling",
	OP_OP_CHAR_FALLING_TT = "Returns whether the player's character is currently plummeting to their doom.",
	OP_OP_CHAR_STEALTH = "Character is stealthed",
	OP_OP_CHAR_STEALTH_TT = "Checks if the character is stealthed.",
	OP_OP_CHAR_FLYING = "Character is flying",
	OP_OP_CHAR_FLYING_TT = "Checks if the character is flying.",
	OP_OP_CHAR_INDOORS = "Character is indoors",
	OP_OP_CHAR_INDOORS_TT = "Checks if the character is indoors.",
	OP_OP_CHAR_MOUNTED = "Character is mounted",
	OP_OP_CHAR_MOUNTED_TT = "Checks if the character is on a mount.",
	OP_OP_CHAR_RESTING = "Character is resting",
	OP_OP_CHAR_RESTING_TT = "Checks if the character is resting. You are resting if you are in an Inn or a Major City like Ironforge or Orgrimmar.",
	OP_OP_CHAR_SWIMMING = "Character is swimming",
	OP_OP_CHAR_SWIMMING_TT = "Checks if the character is swimming. They do not need to be underwater.",
	OP_OP_UNIT_POSITION_X = "Unit x position",
	OP_OP_UNIT_POSITION_X_TT = "Returns the X coordinate of a unit.\n\nOnly works with players.\n\n|cffff9900Does not work in instance/battleground/arena since patch 7.1.",
	OP_OP_UNIT_POSITION_Y = "Unit y position",
	OP_OP_UNIT_POSITION_Y_TT = "Returns the Y coordinate of a unit.\n\nOnly works with players.\n\n|cffff9900Does not work in instance/battleground/arena since patch 7.1.",
	OP_OP_DISTANCE_POINT = "Unit point distance",
	OP_OP_DISTANCE_POINT_TT = "Returns the distance (in yards) between a unit and a point coordinates.\n\nOnly works with players.\n\nReturns 0 if unit doesn't exist.\n\n|cffff9900Does not work in instance/battleground/arena since patch 7.1.",
	OP_OP_DISTANCE_POINT_PREVIEW = "|cff00ff00%s|r distance from |cff00ff00(%s, %s)",
	OP_OP_DISTANCE_X = "X coordinate",
	OP_OP_DISTANCE_Y = "Y coordinate",
	OP_OP_DISTANCE_ME = "Unit distance to player",
	OP_OP_DISTANCE_ME_TT = "Returns the distance (in yards) between a unit and the player.\n\nOnly works with players.\n\nReturns 0 if unit doesn't exist.\n\n|cffff9900Does not work in instance/battleground/arena since patch 7.1.",
	OP_OP_DISTANCE_CURRENT = "Use current position",
	EFFECT_VAR_INDEX = "Argument index",
	EFFECT_VAR_INDEX_TT = "The index of the argument.\n\nSo if you want to check the third argument of an event, enter 3.",
	OP_OP_CHECK_EVENT_VAR = "Event argument string value",
	OP_OP_CHECK_EVENT_VAR_TT = "Checks the n-th argument of the event triggering this condition (if any).\n\nInterpreted as a string.\n\nIf does not exists or can't be interpreted, returns 'nil'.",
	OP_OP_CHECK_EVENT_VAR_N = "Event argument number value",
	OP_OP_CHECK_EVENT_VAR_N_TT = "Checks the n-th argument of the event triggering this condition (if any).\n\nInterpreted as a number.\n\nIf does not exists or can't be interpreted, returns 0.",
	OP_OP_CHECK_EVENT_VAR_PREVIEW = "%s-th event argument |cff00ff00(string)",
	OP_OP_CHECK_EVENT_VAR_N_PREVIEW = "%s-th event argument |cff00ff00(number)",
	OP_OP_RANDOM = "Random",
	OP_OP_RANDOM_TT = "Random number (integer) between two bounds.",
	OP_OP_RANDOM_PREVIEW = "Random number between |cff00ff00%s|r and |cff00ff00%s|r.",
	OP_OP_RANDOM_FROM = "From",
	OP_OP_RANDOM_TO = "To",
	OP_OP_CHAR_ZONE = "Zone name",
	OP_OP_CHAR_ZONE_TT = "The zone name where the character currently is.\n\n|cffff9900Warning: The text depends on the client locale.",
	OP_OP_CHAR_SUBZONE = "Sub-zone name",
	OP_OP_CHAR_SUBZONE_TT = "The sub-zone name where the character currently is.\n\n|cffff9900Warning: The text depends on the client locale.",
	OP_OP_CHAR_MINIMAP = "Minimap text",
	OP_OP_CHAR_MINIMAP_TT = "Returns the minimap zone text.\n\nThe game event \"MINIMAP_ZONE_CHANGED\" is triggered, when the text changes. So you can test it in a game event link in a campaign or a quest.",
	OP_OP_CHAR_CAM_DISTANCE = "Camera distance",
	OP_OP_CHAR_CAM_DISTANCE_TT = "The camera distance from the player. 0 if in first person view.",
	OP_OP_CHAR_ACHIEVEMENT = "Achievement",
	OP_OP_CHAR_ACHIEVEMENT_TT = "Checks if the account has completed the specified achievement.",
	OP_OP_CHAR_ACHIEVEMENT_ID = "Achievement ID",
	OP_OP_CHAR_ACHIEVEMENT_ID_TT = "The numeric ID of the achievement you want to check.",
	OP_OP_CHAR_ACHIEVEMENT_WHO = "Completed by",
	OP_OP_CHAR_ACHIEVEMENT_ACC = "Account",
	OP_OP_CHAR_ACHIEVEMENT_ACC_TT = "Checks if any character from this account has completed the achievement",
	OP_OP_CHAR_ACHIEVEMENT_CHAR = "Character",
	OP_OP_CHAR_ACHIEVEMENT_CHAR_TT = "Checks if the current character has completed the achievement",
	OP_OP_CHAR_ACHIEVEMENT_PREVIEW = "%s completed by |cffff9900%s",
	OP_OP_TIME_HOUR = "Time: Hour",
	OP_OP_TIME_HOUR_TT = "The current hour of the day, server time.",
	OP_OP_TIME_MINUTE = "Time: Minute",
	OP_OP_TIME_MINUTE_TT = "The current minute of the hour, server time.",

-- Test
	COND_EDITOR = "Condition editor",
	COND_EDITOR_EFFECT = "Effect condition editor",
	COND_CONDITIONED = "Conditioned",
	COND_PREVIEW_TEST = "Preview test",
	COND_PREVIEW_TEST_TT = "Prints in the chat frame the evaluation of this test based on the current situation.",
	COND_TESTS = "Condition tests",
	COND_COMPLETE = "Complete logical expression",
	COND_TEST_EDITOR = "Test editor",
	COND_LITT_COMP = "All comparison types",
	COND_NUM_COMP = "Numeric comparison only",
	COND_NUM_FAIL = "You must have two numeric operands if you uses a numeric comparator.",

-- Campaign and quests
	CA_NPC = "Campaign NPC list",
	CA_NPC_TT = "You can customize NPCs to give them a name, an icon and a description.\nThis customization will be visible when the player has your campaign as active.",
	CA_NPC_ADD = "Add customized NPC",
	CA_NPC_UNIT = "Customized NPC",
	CA_NPC_ID = "NPC ID",
	CA_NPC_AS = "Duplicate",
	CA_NPC_NAME = "Default NPC name",
	CA_NPC_REMOVE = "Remove customization for this NPC?",
	CA_NPC_ID_TT = "Please enter the ID of the NPC to customize.\n\n|cff00ff00To get the ID of an NPC you targeted, type this command in the chat: /trp3 getID",
	CA_NPC_EDITOR = "NPC editor",
	CA_NPC_EDITOR_NAME = "NPC name",
	CA_NPC_EDITOR_DESC = "NPC description",
	CA_NO_NPC = "No customized NPC",
	CA_NAME_NEW = "New campaign",
	CA_NAME = "Campaign name",
	CA_NAME_TT = "This is the name of your campaign. It appears on the quest log.",
	CA_ICON = "Campaign icon",
	CA_ICON_TT = "Select campaign icon",
	CA_DESCRIPTION = "Campaign summary",
	CA_DESCRIPTION_TT = "This brief summary will be visible on the campaign page, in the quest log.",
	QE_QUESTS_HELP = "You can add quests to your campaign here. Please note that a quest is not automatically added to the player's quests log when he starts your campaign. You have to start the quests through workflows.\n|cffff9900Quests are sorted by ID in the quest log, not by name nor by reveal order.",
	CA_QUEST_ADD = "Add quest",
	CA_QUEST_REMOVE = "Remove this quest?",
	CA_QUEST_NO = "No quest",
	CA_QUEST_EXIST = "There is already a quest with the ID %s.",
	QE_NAME_NEW = "New quest",
	CA_QE_ID = "Change quest ID",
	CA_QUEST_CREATE = "Please enter the quest ID. You can't have two quests with the same ID within the same campaign.\n\n|cffff9900Please note that the quests will be listed in alphabetical order of IDs in the quest log.\n\n|cff00ff00So it's a good practice to always start your ID by quest_# where # is the quest number in the campaign.",
	CA_LINKS_ON_START = "On campaign start",
	CA_LINKS_ON_START_TT = "Triggered |cff00ff00once|r when the player start your campaign, so activating your campaign for the first time, or reset it in the quest log.\n\n|cff00ff00This is a good place to activate your first quest.",
	CA_IMAGE = "Campaign portrait",
	CA_IMAGE_TT = "Select campaign portrait",
	QE_STEPS = "Quest steps",
	QE_NAME = "Quest name",
	QE_NAME_TT = "It's your quest name, as it will appear on the quest log.",
	QE_DESCRIPTION = "Quest summary",
	QE_DESCRIPTION_TT = "This brief summary will be visible on the quest page, in the quest log.",
	QE_LINKS_ON_START = "On quest start",
	QE_LINKS_ON_START_TT = "Triggered |cff00ff00once|r when the player start your quest, by unlocking it in the quest log.\n\n|cff00ff00This is a good place to go to the first quest step.",
	QE_LINKS_ON_OBJECTIVE = "On objective completed",
	QE_LINKS_ON_OBJECTIVE_TT = "Triggered each time the player complete an objective for this quest.\n\n|cff00ff00It's a good place to check if all objectives has been completed and reveal the next quest.",
	CA_ACTIONS_ADD = "Add action",
	CA_ACTIONS_NO = "No action",
	CA_ACTIONS = "Actions",
	CA_ACTIONS_EDITOR = "Action editor",
	CA_ACTION_CONDI = "Action condition editor",
	CA_ACTION_REMOVE = "Remove this action?",
	CA_ACTIONS_SELECT = "Select action type",
	CA_ACTIONS_COND = "Edit condition",
	CA_ACTIONS_COND_REMOVE = "Remove condition",
	CA_ACTIONS_COND_ON = "This action is conditioned.",
	CA_ACTIONS_COND_OFF = "This action is not conditioned.",
	QE_AUTO_REVEAL = "Auto reveal",
	QE_AUTO_REVEAL_TT = "Reveal the quest in the quest log when the campaign is started.",
	QE_OBJ = "Quest objectives",
	QE_OBJ_SINGULAR = "Quest objective",
	QE_OBJ_TT = "Quest objectives are hints for the player. Accomplishing all objectives does not automatically complete the quest. You decide when objectives are shown so you can have secret objective in your quest.\n|cffff9900Objectives are always ordered by ID in the quest log, and not following their reveal order.",
	QE_OBJ_ADD = "Add objective",
	QE_OBJ_REMOVE = "Remove this quest objective?",
	QE_OBJ_NO = "No quest objective",
	QE_OBJ_ID = "Objective ID",
	QE_OBJ_ID_TT = "This is your objective ID. You can't have two objectives with the same ID in a same quest.",
	QE_OBJ_TEXT = "Objective text",
	QE_OBJ_AUTO = "Auto reveal",
	QE_OBJ_AUTO_TT = "Automatically reveal this objective when the quest is unlocked in the quest log.",
	QE_STEP = "Quest steps",
	QE_STEP_TT = "Quest are cut down into a list of steps.\nEach step can add a text entry to the quest log once reached and another history text once completed.",
	QE_STEP_ADD = "Add quest step",
	QE_STEP_NO = "No quest step",
	QE_STEP_REMOVE = "Remove this step?",
	QE_STEP_CREATE = "Please enter the step ID. You can't have two steps with the same ID within the same quest.\n\n|cffff9900Please note that the steps will be listed in alphabetical order of IDs here and on the database.\n\n|cff00ff00So it's a good practice to always start your ID by step_# where # is the step number in the quest.",
	CA_QE_ST_ID = "Change quest step ID",
	QE_STEP_EXIST = "There is already a step with the ID %s.",
	QE_STEP_NAME_NEW = "New quest step",
	QE_ST_PRE = "Quest log entry",
	QE_ST_POST = "Quest log history",
	QE_ST_AUTO_REVEAL = "Initial step",
	QE_ST_AUTO_REVEAL_TT = "Marks this step as the initial step when unlocking the quest in the quest log.",
	QE_ST_LINKS_ON_START = "On quest step start",
	QE_ST_LINKS_ON_START_TT = "Triggered |cff00ff00everytime|r the player reachs this step.",
	QE_ST_LINKS_ON_LEAVE = "On quest step leave",
	QE_ST_LINKS_ON_LEAVE_TT = "Triggered |cff00ff00everytime|r the player leave this step for another one. This will be triggered before the next step \"On quest step start\" trigger occurs.",
	QE_ST_END = "Final step",
	QE_ST_END_TT = "Marks this step as the final step for this quest. When the step is reached, the quest will automatically be marked as completed in the quest log.",
	QE_PROGRESS = "Progression",
	QE_PROGRESS_TT = "This parameter flags this quest as part of the campaign progression (even if the quest is not revealed).\n\nThe campaign progression is a % indicator in the quest log showing the global campaign progression (% of completed quests / total quests).\n\n|cff00ff00Typically this should be checked, except for side/secondary quests.",

-- Cutscene
	DI_STEPS = "Cutscene steps",
	DI_STEP = "Cutscene step",
	DI_STEP_ADD = "Add step",
	DI_STEP_EDIT = "Cutscene step edition",
	DI_STEP_TEXT = "Step text",
	DI_ATTR_TT = "Only check this if you want to change this attribute relative to the previous cutscene step.",
	DI_NAME_DIRECTION = "Change dialog direction",
	DI_NAME_DIRECTION_TT = "Determines where to place the chat bubble and name and which model to animate. Select none to completely hide the chat bubble and name.",
	DI_NAME = "Change speaker name",
	DI_NAME_TT = "The name of the talking character.\n\nOnly necessary if the dialog direction above is not NONE.",
	DI_LEFT_UNIT = "Change left model",
	DI_RIGHT_UNIT = "Change right model",
	DI_UNIT_TT = "Sets the model to display:\n\n- Leave empty to hide the model\n- \"player\" to use the player's model\n- \"target\" to use the target's model\n- Any number to load as NPC ID",
	DI_ATTRIBUTE = "Stage modification",
	DI_BKG = "Change background image",
	DI_BKG_TT = "Will be used as background for the cutscene step. Please enter the full texture path.\n\nIf you change the background during a cutscene there will be a fade between the two different backgrounds.",
	DI_DIALOG = "Dialog",
	DI_FRAME = "Decoration",
	DI_MODELS = "Models",
	DI_IMAGE = "Change image",
	DI_IMAGE_TT = "Displays an image in the center of the cutscene frame. The image will fade in. Please enter the full texture path.\n\nTo hide the image afterward, just leave the box empty.",
	DI_LOOT = "Wait for loot",
	DI_LOOT_TT = "If the workflow selected on the left will display a loot to the player, you can check this parameter to prevent the player to go to the next cutscene step until he looted all the items.",
	DI_DISTANCE = "Distance max (yards)",
	DI_DISTANCE_TT = "Defines the max distance (in yards) the player can move away once the cutscene started before auto closing it (and trigger the 'On Cancel' object event).\n\n|cff00ff00Zero means no limit.\n\n|cffff9900Does not work in instance/battleground/arena since patch 7.1.",
	DI_END = "End point",
	DI_END_TT = "Marks this step as end point. When reached it will finish the cutscene (and triggers the On finish object event).\n\n|cff00ff00Handy if you use player choices in this cutscene.",
	DI_CHOICES = "Player choices",
	DI_CHOICES_TT = "Configure player choices for this step.",
	DI_CHOICE = "Option",
	DI_CHOICE_TT = "Enter the text for this option.\n\n|cff00ff00Leave empty to disable this option.",
	DI_CHOICE_STEP = "Go to step",
	DI_CHOICE_STEP_TT = "Enter the cutscene step number to play if the player selects this option.\n\n|cff00ff00If empty or invalid step index, it will end the cutscene if selected (and trigger the On finish object event).",
	DI_CHOICE_TEXT = "Choose an option",
	DI_HISTORY = "Cutscenes history",
	DI_HISTORY_TT = "Click to see/hide the history panel, showing the previous cutscene lines.",
	DI_NEXT = "Next step index",
	DI_CHOICE_CONDI = "Option condition",
	DI_NEXT_TT = "You can indicate which step will be played after this one.\n\n|cff00ff00Leave empty to play the next index in sequential order, only use this field if you need to 'jump' to another index. Useful when using choices.",
	DI_CONDI_TT = "Sets a condition for this option. If the condition is not checked when showing the options, the associated option will not be visible.\n\n|cff00ff00Click: Configure condition\nRight-click: Clear condition",
	DI_LINKS_ONSTART = "On cutscene start",
	DI_LINKS_ONSTART_TT = "Triggered when the cutscene is played.\n\n|cffff9900Note that this workflow will be played BEFORE showing the first step.",
	DI_LINKS_ONEND = "On cutscene end",
	DI_LINKS_ONEND_TT = "Triggered when the cutscene is ended.\n\n|cff00ff00This can be done by reaching the end of last step or by allowing the player to select a choice with an empty or unknown 'go to step'.\n\n|cffff0000This is NOT triggered if the player cancels the cutscene by manually closing the frame.",
	DI_GET_ID = "Target ID",
	DI_GET_ID_TT = "Copy the target's NPC ID. Only works if your current target is an NPC.",


	DEBUG_QUEST_STEP = "Go to a quest step.",
	DEBUG_QUEST_STEP_USAGE = "Usage: /trp3 debug_quest_step questID stepID",
	DEBUG_QUEST_START = "Start quest",
	DEBUG_QUEST_START_USAGE = "Usage: /trp3 debug_quest_start questID",

	DISCLAIMER_OK = "I hereby sign this contract with my blood",
	DISCLAIMER = [[{h1:c}Please read{/h1}

	Creating items and quests takes time and energy and it's always terrible when you lose all the hard work you have done.

	All add-ons in World of Warcraft can store data but there are limitations:

	• There is an unknown data size limit for add-on data (depending on the fact that you are running a 32 or 64 bits client, among other things).
	• Reaching this limit can wipe all the add-on saved data.
	• Kill the process, force-closing the game client (Alt+F4) or crashing can corrupt the add-on saved data.
	• Even if you exit the game correctly, there is always a chance that the game doesn't succeed to save the add-on data and corrupt it.

	In regards to all of that, we STRONGLY recommand to regularely backup your add-on saved data.

	You can find here a tutorial about finding all saved data:
	{link*https://totalrp3.info/documentation/how_to/saved_variables*Where are my information stored?}

	You can find here a tutorial about syncing your data to a cloud service:
	{link*https://totalrp3.info/documentation/how_to/backup_and_sync_profiles*How to backup and synchronize your add-ons settings using a cloud service}

	Please understand that we won't reply anymore to comment or ticket relative to a data wipe.
	It's not because we don't want to help but because we can't do anything to restore wiped data.

	Thank you, and enjoy Total RP 3 Extended!

	{p:r}The TRP3 Team{/p}]],

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: Databases
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	TU_TITLE = "Tutorial",
	TU_DB_1_TEXT = [[|cff00ff00Welcome to the database tutorial.|r

This is the database, where all the objects are stored.

An object contains all information about an item, a document, a campaign/quest/step or a cutscene.]],
	TU_DB_2 = "Database types",
	TU_DB_2_TEXT = [[There are four tabs, filtering the entire database.

|cff00ff00My database:|r it contains all the objects you created.

|cff00ff00Players database:|r it contains all objects you received (or imported) from other players.

|cff00ff00Backers database:|r it contains the objects created by the Kickstarter backers and the TRP3 team.

|cff00ff00Full database:|r it contains all the previous databases content.]],
	TU_DB_3_TEXT = [[You can filter more each database to find a specific object by changing the search filters and select |cff00ff00Search|r.

Without filters, the objects list follows a hierarchical presentation.

But if you filter the list, the results are shown with a flat presentation.
Here we just filtered the list by object type to show only the |cffff9900items|r.

To exit the search mode, click on the |cff00ff00Clear|r button in the filters panel.]],
	TU_DB_4 = "Root and inner objects",
	TU_DB_4_TEXT = [[There are two kind of objects: |cff00ff00root objects and inner objects|r.

|cff00ff00Inner objects|r are always stored in a |cff00ff00root object|r (even if they can be inside another inner object all the way to the root).

When you exchange an item with someone, all the root object information is actually exchanged, even if the item is only an inner object.

So for now, just remember that using inner objects is a good way to link objects that always should be exchange together.

Examples:
- An item showing a document: the document would be an inner object of the root item object.
- A campaign with 4 quests: each quest is actually an inner object of the root campaign object.
- A gun item firing bullet item: the bullet object would be an inner object of the root gun object.

But don't worry, it will comes naturally !]],
	TU_DB_5 = "Root objects",
	TU_DB_5_TEXT = "Only items and campaigns can be root objects.\n\nYou can use these two buttons to create an new item or campaign.",
	TU_DB_6 = "Create an item",
	TU_DB_6_TEXT = [[When creating a new item, you can select a template or use the quick creation mode.

The |cff00ff00quick creation|r mode allows you to easily create a first item, but the possibilities are limited. Now that you can always go to normal creation mode afterward.

Use the |cff00ff00blank item|r template if you want to start from scratch without any example.

The |cff00ff00document item|r template will actually create two objects: an item object and its document inner object. It will also configure the item to show the document when used.

The |cff00ff00container item|r template will create a configure an item object to be used as a container.

Finally, the |cff00ff00create from|r allows you to duplicate an existing item.]],
	TU_DB_7 = "Object line",
	TU_DB_7_TEXT = "Each line represents an object. You can click on it to edit it or right click to perform various actions.",

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: Items
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	TU_IT_1_TEXT = [[|cff00ff00Welcome to the item creation tutorial.|r

An item is an object that you can store in your character's inventory (or drop it on the ground).

You are here on the Main tab where you can define all the basic attributes for your item.]],

	TU_IT_2 = "Display attributes",
	TU_IT_2_TEXT = [[The display attributes are purely cosmetic and don't have any "gameplay" effect.

It's all about the attributes needed for the item tooltip and the item icon.]],

	TU_IT_4 = "Gameplay attributes",
	TU_IT_4_TEXT = [[The gameplay attributes have some effects on the gameplay.

Two attributes are important: |cff00ff00Usable|r and |cff00ff00Container|r as checking them will display the |cff00ff00Workflow|r and |cff00ff00Container|r tabs.]],

	TU_IT_3 = "Free notes",
	TU_IT_3_TEXT = [[You can write down notes to help you remember what do you want to do with your item.

These notes can also help others that would want to start an item based on yours.]],

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: Workflow
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	TU_WO_1_TEXT = [[|cff00ff00Welcome to the workflow creation tutorial.|r

A workflow is the mechanism that can bring life to your creation. It's here that you will be able to play effects like showing a text, playing a sound or looting an item to the player.]],

	TU_WO_2 = "Workflow list",
	TU_WO_2_TEXT = [[On the left you have the |cff00ff00workflows list|r.

You can remove, rename or copy/paste a workflow by right-clicking on it.

|cffff9900Note: If you are here when editing an item in "normal mode", you won't see a list of workflows but only a single "On use" workflow for the item. If you want to be able to use multiple workflows for an item, you can convert this item to "Expert mode" by right-clicking on it in the databases view.]],

	TU_WO_3_TEXT = [[Here is a list of all the workflow elements.

An element can be an effect, a delay or a condition.

The element order is important because they will be executed sequentially during the workflow execution.

You can change the element order by using the arrows at the top right of each elements.]],

	TU_WO_4 = "Add an effect",
	TU_WO_4_TEXT = [[Effects are things like "playing a sound", "displaying a text" or "start a cutscene".

There are a LOT of effects, each are explained in their own tooltip!]],

	TU_WO_5 = "Add a condition",
	TU_WO_5_TEXT = [[Conditions allow you to |cff00ff00test values in order to stop the workflow execution.|r

|cffff9900If the condition is not met, the workflow execution won't continue further.|r

A condition is composed of a series of tests linked together by the OR or AND operator.

Each test is a values comparision. For example: "The target's health is lesser than 500", "The player is not dead" or "The player has more than 3 units of item [xxx] in his inventory".]],

	TU_WO_6 = "Add a delay",
	TU_WO_6_TEXT = [[Delays can pause the execution of the workflow for a given time, but they can also act as a cast and interrupt the workflow if the player moves.]],

	TU_WO_ERROR_1 = "Please create a workflow before resuming this tutorial.",

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: container
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	TU_CO_1_TEXT = [[A container is an item that can contain other items.

To open a container, you can |cff00ff00double-click|r on it in the inventory.

It is possible to have a container that is also usable (by right-click). It isn't two exclusive concepts.

|cffff9900Please note that for now, you can only trade with players containers that are empty, or that contains only items that are inner objects of the container. Please see the inner object tab for more information.]],

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: Links
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	TU_EL_1_TEXT = [[The event links tab is the place where you can |cff00ff00link your workflows to events|r.

|cffff9900Indeed, workflows aren't executed automatically by default!|r So you have to link them to an event in order to have them executed when that event occurs.

We have here two type of events: |cff00ff00Object events and Game events|r.]],

	TU_EL_2_TEXT = [[|cff00ff00Object events|r are event proper to how Total RP 3 works.

The list of possible events is fixed and depends on the type of the object (item, quest ..etc).

You can link one event to only one workflow. But the same workflow can be linked to multiple events.]],



	TU_EL_4_TEXT = [[|cff00ff00Game events|r are only available for campaigns, quests and quest steps.]],

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: actions
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	TU_AC_1_TEXT = [[|cff00ff00Action links|r is where you can link a workflow to a quest action.

There are four types of quest actions that a player can perform: |cff00ff00listen, look, talk and interact|r.

You can define action links in the campaign, quest or quest step level.]],

	TU_AC_2 = "Actions evaluation",

	TU_AC_2_TEXT = [[Each action can be conditionned by |cff00ff00Ctrl+click on it|r.

When the player performs an action, |cff00ff00all action links will be evaluated in a certain order|r beginning at the quest step level, then the quest and finally the campaign.

If a link can be used (if it's from the good action type and has no condition or the condition is met), then the associated workflow will be executed and |cffff9900the add-on will stop searching for another link|r.]],

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: Cutscene
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	TU_CS_1_TEXT = [[With |cff00ff00cutscenes|r you will be able to create a real narative experience for the player.

Cutscenes uses the layout already used in the Storyline add-on.]],

	TU_CS_2_TEXT = [[A cutscene is a list of step that will be played one after another.

The cutscene takes place in a scene with two characters talking to each other.

In each step you will be able to completely reconfigure the scene.]],

	TU_CS_3_TEXT = [[The step text will be cut down into sub-steps when you enter a double line break. But these sub-steps will share the same step configuration.

So you will typically change step when you want to change which character is speaking (with the "dialog direction" attribute).

When you want to change a step attribute, |cff00ff00be sure to have activated the parameter.]],

	TU_CS_4 = "Cutscenes and workflows",
	TU_CS_4_TEXT = [[You can link a workflow to a step. It will be executed a the start of the step (or first sub-step).

If this workflow contains a Loot effect, you can check the "Wait for loot" option to force the player to loot before the cutscene can continue.]],

	TU_CS_5 = "Preview",
	TU_CS_5_TEXT = [[You can preview your cutscene at any moment.

|cffff9900Linked workflows won't be executed in preview mode.]],

--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: Inventory
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	INV_TU_1 = [[You can place an item (or a stack of items) in each slot of the inventory.

|cff00ff00You are not limited in capacity as you can have an unlimited amount of bags and containers. You can also have containers in containers.

|cffff9900The only thing you should be careful with is the carry weight of each container.|r

If a container has a maximum weight capacity and you overpass this capacity, it will slowly be damaged over time and could randomly drop items on the ground!]],

	INV_TU_2 = [[Any bag you place here will act as primary container.

|cffff9900It's very important to always have a primary container with free space as it will be the container used when exchanging items with other players.

|cff00ff00Also, the primary container can easily be opened with the inventory button on the TRP toolbar.]],

	INV_TU_3 = [[For items that are directly on the character (not in a bag), if they are wearable (which is a choice from the item author), |cff00ff00you can indicates where they are in your character.

|cffff9900For that click on the dot near the item and place the marker on your character. You can also rotate your character and select his pose.

|cff00ff00When someone uses the inspection feature on you, they will see the markers with the proper character pose!

|rYou can inspect someone's inventory by selecting the character and click on the target bar button |cff00ff00"Character inspection"|r.

|cffff9900Note that the two players must use TRP Extended to be able to inspect each other.]],

	INV_TU_4 = [[When drag & droping an item outside the inventory, |cffff9900you will be asked to choose between destroying it or droping it on the ground.|r

You can drop items (almost) everywhere in the world. |cff00ff00You can then go loot them back later by using the "Search for items" button on the toolbar.

You can also see all droped items on the map by using the "Scan for my items" button.

|cffff9900Note that sometimes items can be droped automatically: if you receive items but your inventory is full, or if one of your bags is damaged.]],



--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- TUTORIAL: Quest log
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

	QUEST_TU_1 = [[Quests will often require that |cff00ff00you interact with NPCs or with your environment through actions|r.

There are four types of action: |cff00ff00Listen, look, talk and interact|r.

You can perform an action by |cff00ff00right-clicking on the quest log button on the TRP3 toolbar|r.

But another easier way to do actions is to |cff00ff00create macro for it|r. To help you create the action macros you can use this button.]],

	QUEST_TU_2 = [[|cff00ff00You can find here a list of all available campaigns.|r

A campaign is a collection of one or more quests.

|cffff9900You can only progress in one campaign at a time|r. For this you must mark this campaign as the active campaign. |cff00ff00You can use the "Start or resume" button to activate or pause a campaign.|r

You won't lose your progression if you switch from one campaign to another.

|cffff9900You can reset your progression in a campaign by right-clicking on it and select Reset campaign. Note that all looted items won't be lost on campaign reset.]],

	QUEST_TU_3 = [[|cff00ff00You can find here the list of all currently available quests and all finished quests.|r

You can easily see each quest current situation and what are the current objectives.]],

	QUEST_TU_4 = [[|cff00ff00You can find here the current progression of this quest and all current objectives.|r

You can also see the history of previous steps, in case you forget something.]],
	CL_CREATION = "Extended creation",
	CL_EXTENDED_ITEM = "Extended item",
	CL_EXTENDED_CAMPAIGN = "Extended campaign",
	CL_CAMPAIGN_PROGRESSION = "Progression for %s:",
	CL_IMPORT = "Import into database",
	CL_IMPORT_ITEM_BAG = "Add item to your bag",
	CL_TOOLTIP = "Create a chat link",
	IN_INNER_ENTER_ID_NO_SPACE = "Object IDs can't contain spaces. Remember that this isn't the object's name !",
	EFFECT_SOUND_ID_SELF_ID_TT = "The ID is an internal identifier for sounds in the game.\n\n|cff00ff00You can easily find all ID on websites like wowhead.\n\n|cffff9900Leave empty to stop all sounds played on the selected channel.",
	EFFECT_SOUND_ID_STOP = "Stop sound ID",
	EFFECT_SOUND_ID_STOP_TT = "Stops one or all sounds in a particular channel.",
	EFFECT_SOUND_ID_STOP_PREVIEW = "Stops sound ID %s in channel %s.",
	EFFECT_SOUND_ID_STOP_ALL_PREVIEW = "Stops |cff00ff00all|cffffff00 sounds in channel %s.",
	EFFECT_SOUND_MUSIC_STOP_TT = "If you use the \"play music\" effect, the music will loop until the game plays another music (for example: the player enters a new zone), or if the player stops it manually or until you use this effect.\n\n|cffff9900Note that this effect will only stop music played by the addon, and will not stop a music played by the game.",
	EFFECT_SOUND_ID_LOCAL_STOP = "Stop local sound",
	EFFECT_SOUND_ID_LOCAL_STOP_TT = "Stops one or all sounds in a particular channel for players around you.",
	EFFECT_SOUND_MUSIC_LOCAL_STOP = "Stop local music",
	EFFECT_SOUND_MUSIC_LOCAL_STOP_TT = "If you use the \"play local music\" effect, the music will loop for all players around until the game plays another music (for example: the player enters a new zone), or if each player stops it manually or until you use this effect.\n\n|cffff9900Note that this effect will only stop music played by the addon, and will not stop a music played by the game.",
	SEC_TT_COMBO_2 = "Configure security",
	SET_TT_SECURED_2 = "Some potentially malicious effects have been secured for your safety.",
	SET_TT_SECURED_2_1 = "See more details.",
	IT_EX_TRADE_BUTTON = "Open exchange",
	IT_EX_TRADE_BUTTON_TT = "Open the exchange frame to start trading items with this player.",
	INV_TU_5_V2 = [[You can exchange an item (or a stack of items) with another player by drag & drop the stack on the player (just like the game does) or using the dedicated button on the target frame.

|cffff9900When someone give you an item, the exchange frame will tell you if the item could possibly have annoying effects (nobody want their character to shout horrible things).

|rWhen that's the case, TRP will convert these effects into a less damaging form (for instance, the shouting will be converted to a personal text) until you decide to unblock them.

|cff00ff00You can block/unblock effects and white-list effects or players by Alt + Right-click on an item on your inventory.]],
	DB_CREATE_ITEM_TEMPLATES_EXPERT = "Expert item",
	DB_CREATE_ITEM_TEMPLATES_EXPERT_TT = "An expert blank template.\nFor users with experience making creations.",
	TU_EL_3_TEXT_V2 = [[|cff00ff00Game events|r are events triggered by the game when something happens.

Each link you add will link a game event to a workflow. Each time the event occurs, the workflow will be executed.

|cff00ff00You can add a condition to the link by Ctrl+click on it.|r The condition will have access to the event arguments to be tested.
For example if you listen to the event of casting a spell, you will be able in the condition to test which spell is casted.

|cffff9900There is a large list of game event, thus it wouldn't be for us to list them all in the add-on. We suggest you to consult webwite like wowwiki.
http://wowwiki.wikia.com/wiki/Event_API

|rIn addition to the game's events, |cff00ff00Total RP 3: Extended offers a couple of custom events|r detailed on the addon wiki.
|cff00ff00https://github.com/Ellypse/Total-RP-3-Extended/wiki|r]],
	DR_STASHES_OWNERSHIP = "Take ownership",
	DR_STASHES_OWNERSHIP_PP = "Take ownership of this stash?\nThis character will be shown as owner of this stash when other players scan for it.",
	EFFECT_ITEM_DICE_PREVIEW_STORED = "Rollin' %s and saving the result to %s",
	EFFECT_ITEM_DICE_ROLL_VAR = "Variable name (optional)",
	EFFECT_ITEM_DICE_ROLL_VAR_TT = "The variable in which you want to store the dice roll result.\nLeave empty if you don't want to store the result.",
	WO_EVENT_EX_UNKNOWN_ERROR = "[Error] Unknown event %s in %s",
	WO_EVENT_EX_BROWSER_TITLE = "Event browser",
	WO_EVENT_EX_BROWSER_OPEN = "Open event browser",
	WO_EVENT_EX_BROWSER_NO_PAYLOAD = "No arguments",
	WO_EVENT_EX_BROWSER_COMBAT_LOG_ERROR = "Can't show arguments, refer to Wowpedia",
	DR_STASHES_ERROR_INSTANCE = "Cannot create a stash in an instance",
	DR_DROP_ERROR_INSTANCE = "Cannot drop items in an instance",
	EFFECT_RANDSUM_TT = "Summon a random battle pet.",
	EFFECT_RANDSUM_SUMMON_FAV = "Only summon favourite pets",
	EFFECT_RANDSUM_PREVIEW_FULL = "Summon a random battle pet from your |c0000ff00entire pool|r.",
	EFFECT_RANDSUM_PREVIEW_FAV = "Summon a random battle pet from your |c0000ff00favourite pool|r.",
	EFFECT_SUMMOUNT_RANDOMMOUNT = "Random favourite",
	EFFECT_SUMMOUNT_ACTION_TT = "Select a specific mount",
	EFFECT_ITEM_SOURCE_SEARCH = "Search in",
	EFFECT_ITEM_SOURCE_1_SEARCH_TT = "Search for the item(s) inside the entire character inventory.",
	EFFECT_ITEM_SOURCE_2_SEARCH_TT = "Search for the item(s) only inside this item parent container (and any sub-container).\n\n|cffff9900Only works if this script is in an item context.",
	EFFECT_ITEM_SOURCE_3_SEARCH_TT = "Search for the item(s) only inside this item (and any sub-container).\n\n|cffff9900Only works if this script is in an item context and this item is a container.",
	EFFECT_ITEM_SOURCE_ADD = "Add to",
	EFFECT_ITEM_SOURCE_1_ADD_TT = "Add the item(s) anywhere inside the entire character inventory, starting with the main container.",
	EFFECT_ITEM_SOURCE_2_ADD_TT = "Add the item(s) only inside this item parent container (and any sub-container).\n\n|cffff9900Only works if this script is in an item context.",
	EFFECT_ITEM_SOURCE_3_ADD_TT = "Add the item(s) only inside this item (and any sub-container).\n\n|cffff9900Only works if this script is in an item context and this item is a container.",

	DR_STASHES_OWNER = "Owner",
	EFFECT_SECURE_MACRO_ACTION_NAME = "Execute macro",
	EFFECT_SECURE_MACRO_DESCRIPTION = [[Execute custom macro commands.

|cffccccccNotes:
- This effect will only be run if the workflow is called following a user action (use an item, click on a dialog choice in a cutscene).
- This effect is not impacted by delays inside the workflow. Because macros can execute secure actions, all macro effects have to be executed immediately after the user action.
- This effect IS affected by conditions and can resolve variables.
- This effect will NEVER be run while in combat or when called by an event in a campaign.
|r]],
	EFFECT_SECURE_MACRO_HELP_TITLE = "Macro commands",
	EFFECT_SECURE_MACRO_HELP = [[You can use any commands you would normally use in a macro, including other add-ons' custom /slash commands.

You can also use Total RP 3: Extended variables (|cffcccccc${my_var_name}|r).
]],
	SEC_REASON_MACRO = [[Execute a macro]],
	SEC_REASON_MACRO_WHY = [[This object could trigger any macro commands.

|cffff0000It may cast spells or consume items (outside of combat). It may also execute any Lua code available to add-ons and affect your inventory, gold, guild, be used in a malicious way to force you so to say something reprehensible by the Blizzard terms of services that can make you banned from the game.

|cff00ff00If blocked, the macro commands will not be executed but printed in the chat frame instead.]],

	SEC_RESOLUTION_WHITELISTED = "Whitelisted sender",
	SEC_RESOLUTION_ALL = "For all objects",
	SEC_RESOLUTION_THIS_OBJECT = "For this object only",
	SEC_RESOLUTION_AUTHOR = "You are the author",
	EFFECT_SECURE_MACRO_BLOCKED = "Blocked macro effect:",

	------------------------------------------------------------------------------------------------
	--- PLACE LOCALIZATION NOT ALREADY UPLOADED TO CURSEFORGE HERE
	--- THEN MOVE IT UP ONCE IMPORTED
	------------------------------------------------------------------------------------------------

	EFFECT_DO_EMOTE = "Do emote",
	EFFECT_DO_EMOTE_TT = "Make the player do a specific animated emote.",
	EFFECT_DO_EMOTE_SPOKEN = "Spoken",
	EFFECT_DO_EMOTE_ANIMATED = "Animated",
	EFFECT_DO_EMOTE_OTHER =  "Others",
	CA_QUEST_DD_COPY = "Copy quest content",
	CA_QUEST_DD_PASTE = "Paste quest content",
	CA_QUEST_DD_REMOVE = "Remove quest",
	QE_STEP_DD_COPY = "Copy step content",
	QE_STEP_DD_PASTE = "Paste step content",
	QE_STEP_DD_REMOVE = "Remove step",
}

Localization:GetDefaultLocale():AddTexts(TRP3_API.loc);


-- Register all locales into the localization system
-- Note the localeContent is filled by the publishing script using CurseForge's localization tool when packaging builds
-- See https://wow.curseforge.com/projects/total-rp-3-extended/localization
local localeContent = {};

localeContent = {
	["ALL"] = "All",
	["BINDING_NAME_TRP3_INVENTORY"] = "Open character's inventory",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "Open main container",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "Quest action: interact",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "Quest action: listen",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "Quest action: inspect",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "Quest action: talk",
	["BINDING_NAME_TRP3_QUESTLOG"] = "Open TRP3's quest log",
	["BINDING_NAME_TRP3_SEARCH_FOR_ITEMS"] = "Search for items",
	["CA_ACTION_CONDI"] = "Action condition editor",
	["CA_ACTION_REMOVE"] = "Remove this action?",
	["CA_ACTIONS"] = "Actions",
	["CA_ACTIONS_ADD"] = "Add action",
	["CA_ACTIONS_COND"] = "Edit condition",
	["CA_ACTIONS_COND_OFF"] = "This action is not conditioned.",
	["CA_ACTIONS_COND_ON"] = "This action is conditioned.",
	["CA_ACTIONS_COND_REMOVE"] = "Remove condition",
	["CA_ACTIONS_EDITOR"] = "Action editor",
	["CA_ACTIONS_NO"] = "No action",
	["CA_ACTIONS_SELECT"] = "Select action type",
	["CA_DESCRIPTION"] = "Campaign summary",
	["CA_DESCRIPTION_TT"] = "This brief summary will be visible on the campaign page, in the quest log.",
	["CA_ICON"] = "Campaign icon",
	["CA_ICON_TT"] = "Select campaign icon",
	["CA_IMAGE"] = "Campaign portrait",
	["CA_IMAGE_TT"] = "Select campaign portrait",
	["CA_LINKS_ON_START"] = "On campaign start",
	["CA_LINKS_ON_START_TT"] = [=[Triggered |cff00ff00once|r when the player start your campaign, so activating your campaign for the first time, or reset it in the quest log.

|cff00ff00This is a good place to activate your first quest.]=],
	["CA_NAME"] = "Campaign name",
	["CA_NAME_NEW"] = "New campaign",
	["CA_NAME_TT"] = "This is the name of your campaign. It appears on the quest log.",
	["CA_NO_NPC"] = "No customized NPC",
	["CA_NPC"] = "Campaign NPC list",
	["CA_NPC_ADD"] = "Add customized NPC",
	["CA_NPC_AS"] = "Duplicate",
	["CA_NPC_EDITOR"] = "NPC editor",
	["CA_NPC_EDITOR_DESC"] = "NPC description",
	["CA_NPC_EDITOR_NAME"] = "NPC name",
	["CA_NPC_ID"] = "NPC ID",
	["CA_NPC_ID_TT"] = [=[Please enter the ID of the NPC to customize.

|cff00ff00To get the ID of an NPC you targeted, type this command in the chat: /trp3 getID]=],
	["CA_NPC_NAME"] = "Default NPC name",
	["CA_NPC_REMOVE"] = "Remove customization for this NPC?",
	["CA_NPC_TT"] = [=[You can customize NPCs to give them a name, an icon and a description.
This customization will be visible when the player has your campaign as active.]=],
	["CA_NPC_UNIT"] = "Customized NPC",
	["CA_QE_ID"] = "Change quest ID",
	["CA_QE_ST_ID"] = "Change quest step ID",
	["CA_QUEST_ADD"] = "Add quest",
	["CA_QUEST_CREATE"] = [=[Please enter the quest ID. You can't have two quests with the same ID within the same campaign.

|cffff9900Please note that the quests will be listed in alphabetical order of IDs in the quest log.

|cff00ff00So it's a good practice to always start your ID by quest_# where # is the quest number in the campaign.]=],
	["CA_QUEST_DD_COPY"] = "Copy quest content",
	["CA_QUEST_DD_PASTE"] = "Paste quest content",
	["CA_QUEST_DD_REMOVE"] = "Remove quest",
	["CA_QUEST_EXIST"] = "There is already a quest with the ID %s.",
	["CA_QUEST_NO"] = "No quest",
	["CA_QUEST_REMOVE"] = "Remove this quest?",
	["CL_CAMPAIGN_PROGRESSION"] = "Progression for %s:",
	["CL_CREATION"] = "Extended creation",
	["CL_EXTENDED_CAMPAIGN"] = "Extended campaign",
	["CL_EXTENDED_ITEM"] = "Extended item",
	["CL_IMPORT"] = "Import into database",
	["CL_IMPORT_ITEM_BAG"] = "Add item to your bag",
	["CL_TOOLTIP"] = "Create a chat link",
	["COM_NPC_ID"] = " get targeted npc id",
	["COND_COMPLETE"] = "Complete logical expression",
	["COND_CONDITIONED"] = "Conditioned",
	["COND_EDITOR"] = "Condition editor",
	["COND_EDITOR_EFFECT"] = "Effect condition editor",
	["COND_LITT_COMP"] = "All comparison types",
	["COND_NUM_COMP"] = "Numeric comparison only",
	["COND_NUM_FAIL"] = "You must have two numeric operands if you use a numeric comparator.",
	["COND_PREVIEW_TEST"] = "Preview test",
	["COND_PREVIEW_TEST_TT"] = "Prints in the chat frame the evaluation of this test based on the current situation.",
	["COND_TEST_EDITOR"] = "Test editor",
	["COND_TESTS"] = "Condition tests",
	["CONF_MAIN"] = "Extended settings",
	["CONF_MUSIC_ACTIVE"] = "Play local musics",
	["CONF_MUSIC_ACTIVE_TT"] = [=[Local musics are musics played by other players (for example through an item) to a certain range in yards.

Turn this off if you don't want to hear these musics at all.

|cff00ff00Note that you will never hear music from ignored players.

|cff00ff00Note that all music is interruptible via the Sound History in the TRP3 shortcuts bar.]=],
	["CONF_MUSIC_METHOD"] = "Local music playback method",
	["CONF_MUSIC_METHOD_TT"] = "Determine how you will hear local music when you are in range.",
	["CONF_SOUNDS"] = "Local sounds / musics",
	["CONF_SOUNDS_ACTIVE"] = "Play local sounds",
	["CONF_SOUNDS_ACTIVE_TT"] = [=[Local sounds are sounds played by other players (for example through an item) to a certain range in yards.

Turn this off if you don't want to hear these sounds at all.

|cff00ff00Note that you will never hear sounds from ignored players.

|cff00ff00Note that all sounds are interruptible via the Sound History in the TRP3 shortcuts bar.]=],
	["CONF_SOUNDS_MAXRANGE"] = "Playback maximum range",
	["CONF_SOUNDS_MAXRANGE_TT"] = [=[Set the maximum range (in yards) within which you will hear local sounds/music.

|cff00ff00Usefull to avoid people playing sounds through the whole continent.

|cffff9900Zero means no limit!]=],
	["CONF_SOUNDS_METHOD"] = "Local sound playback method",
	["CONF_SOUNDS_METHOD_1"] = "Play automatically",
	["CONF_SOUNDS_METHOD_1_TT"] = "If you are in range, it will play the sound/music without asking your permission.",
	["CONF_SOUNDS_METHOD_2"] = "Ask permission",
	["CONF_SOUNDS_METHOD_2_TT"] = "If you are in range, a link will be placed in the chat frame to ask you confirmation to play the sound/music.",
	["CONF_SOUNDS_METHOD_TT"] = "Determine how you will hear a local sound when you are in range.",
	["CONF_UNIT"] = "Units",
	["CONF_UNIT_WEIGHT"] = "Weight unit",
	["CONF_UNIT_WEIGHT_1"] = "Grams",
	["CONF_UNIT_WEIGHT_2"] = "Pounds",
	["CONF_UNIT_WEIGHT_3"] = "Potatoes",
	["CONF_UNIT_WEIGHT_TT"] = "Defines how weight values are displayed.",
	["DB"] = "Database",
	["DB_ACTIONS"] = "Actions",
	["DB_ADD_COUNT"] = "How many units of %s do you want to add to your inventory?",
	["DB_ADD_ITEM"] = "Add to main inventory",
	["DB_ADD_ITEM_TT"] = "Adds units of this item in your primary container (or main inventory if you don't have any primary container on your character).",
	["DB_BACKERS"] = "Backers database (%s)",
	["DB_BACKERS_LIST"] = "Credits",
	["DB_BROWSER"] = "Object browser",
	["DB_COPY_ID_TT"] = "Display the object ID in a popup to be copy/pastable.",
	["DB_COPY_TT"] = "Copy information for this object (and child objects) to be pastable as inner objects in another object.",
	["DB_CREATE_CAMPAIGN"] = "Create campaign",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "Blank campaign",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT"] = [=[A blank template.
For those who like to start from scratch.]=],
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "Create from ...",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "Create a copy of an existing campaign.",
	["DB_CREATE_CAMPAIGN_TT"] = "Start creating a campaign",
	["DB_CREATE_ITEM"] = "Create item",
	["DB_CREATE_ITEM_TEMPLATES"] = "Or select a template",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "Blank item",
	["DB_CREATE_ITEM_TEMPLATES_BLANK_TT"] = [=[A blank template.
For those who like to start from scratch.]=],
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "Container item",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[A container template.
Containers can hold other items.]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "Document item",
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT"] = [=[An item template with an inner document object.
Useful to quickly create a book or a scroll.]=],
	["DB_CREATE_ITEM_TEMPLATES_EXPERT"] = "Expert item",
	["DB_CREATE_ITEM_TEMPLATES_EXPERT_TT"] = [=[An expert blank template.
For users with experience making creations.]=],
	["DB_CREATE_ITEM_TEMPLATES_FROM"] = "Create from ...",
	["DB_CREATE_ITEM_TEMPLATES_FROM_TT"] = "Create a copy of an existing item.",
	["DB_CREATE_ITEM_TEMPLATES_QUICK"] = "Quick creation",
	["DB_CREATE_ITEM_TEMPLATES_QUICK_TT"] = [=[Quickly creates a simple item without any effect.
Then adds one unit of this item into your primary bag.]=],
	["DB_CREATE_ITEM_TT"] = "Select a template for a new item",
	["DB_DELETE_TT"] = "Removes this object and all its children objects.",
	["DB_EXPERT_TT"] = "Switches this object to expert mode, allowing more complex customizations.",
	["DB_EXPORT"] = "Quick export object",
	["DB_EXPORT_DONE"] = [=[Your object has been exported in the file called |cff00ff00totalRP3_Extended_ImpExport.lua|r in this game directory:

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables

You can share this file with your friends!

They can follow the import process in the |cff00ff00Full Database tab|r.]=],
	["DB_EXPORT_HELP"] = "Code for object %s (size: %0.1f kB)",
	["DB_EXPORT_MODULE_NOT_ACTIVE"] = "Object full export/import: Please enable the totalRP3_Extended_ImpExport add-on first.",
	["DB_EXPORT_TOO_LARGE"] = [=[This object is too large once serialized to be exported this way. Please use the full export feature.

Size: %0.1f kB.]=],
	["DB_EXPORT_TT"] = [=[Serializes the object content to be exchangeable outside the game.

Only works on small objects (lesser than 20 kB once serialized). For larger object, use the full export feature.]=],
	["DB_FILTERS"] = "Search filters",
	["DB_FILTERS_CLEAR"] = "Clear",
	["DB_FILTERS_NAME"] = "Object name",
	["DB_FILTERS_OWNER"] = "Created by",
	["DB_FULL"] = "Full database (%s)",
	["DB_FULL_EXPORT"] = "Full export",
	["DB_FULL_EXPORT_TT"] = [=[Make a full export for this object regardless of its size.

This will trigger a UI reload in order to force the writing of add-on save file.]=],
	["DB_HARD_SAVE"] = "Hard save",
	["DB_HARD_SAVE_TT"] = "Reload the game UI in order to force saved variables to be written on the disk.",
	["DB_IMPORT"] = "Quick object import",
	["DB_IMPORT_CONFIRM"] = [=[This object was serialized in a different version of Total RP 3 Extended than yours.

Import TRP3E version: %s
Your TRP3E version: %s

|cffff9900This can lead to incompatibilities.
Continue the import anyway?]=],
	["DB_IMPORT_DONE"] = "Object successfully imported!",
	["DB_IMPORT_EMPTY"] = [=[There is no object to import in your |cff00ff00totalRP3_Extended_ImpExport.lua|r file.

The file must be placed in this game directory |cffff9900prior to the game launch|r:

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables]=],
	["DB_IMPORT_ERROR1"] = "The object could not be deserialized.",
	["DB_IMPORT_FULL"] = "Full objects import",
	["DB_IMPORT_FULL_CONFIRM"] = [=[Do you want to import the following object?

%s
%s
By |cff00ff00%s|r
Version %s]=],
	["DB_IMPORT_FULL_TT"] = "Import the |cff00ff00totalRP3_Extended_ImpExport.lua|r file.",
	["DB_IMPORT_ITEM"] = "Import item",
	["DB_IMPORT_TT"] = "Paste a previously serialized object here",
	["DB_IMPORT_VERSION"] = [=[You are importing an older version of this object than the version you already have.

Import version: %s
Your version: %s

|cffff9900Do you confirm you want to downgrade?]=],
	["DB_IMPORT_WORD"] = "Import",
	["DB_LIST"] = "Creations list",
	["DB_LOCALE"] = "Object locale",
	["DB_MY"] = "My database (%s)",
	["DB_MY_EMPTY"] = [=[You have not created any objects yet.
Use one of the buttons below to unleash your creativity!]=],
	["DB_OTHERS"] = "Players database (%s)",
	["DB_OTHERS_EMPTY"] = "Here all objects created by other players will be placed.",
	["DB_REMOVE_OBJECT_POPUP"] = [=[Please confirm the removal of the object:
ID: |cff00ffff"%s"|r
|cff00ff00[%s]|r

|cffff9900Warning: This action cannot be reverted!.]=],
	["DB_RESULTS"] = "Search results",
	["DB_SECURITY_TT"] = "Shows all security parameters for this object. From there you can allow or prevent certain undesirable effects.",
	["DB_TO_EXPERT"] = "Convert to expert mode",
	["DB_WARNING"] = [=[
|cffff0000!!! Warning !!!

|cffff9900Don't forget to save your changes before returning to the database list!]=],
	["DEBUG_QUEST_START"] = "Start quest",
	["DEBUG_QUEST_START_USAGE"] = "Usage: /trp3 debug_quest_start questID",
	["DEBUG_QUEST_STEP"] = "Go to a quest step.",
	["DEBUG_QUEST_STEP_USAGE"] = "Usage: /trp3 debug_quest_step questID stepID",
	["DI_ATTR_TT"] = "Only check this if you want to change this attribute relative to the previous cutscene step.",
	["DI_ATTRIBUTE"] = "Stage modification",
	["DI_BKG"] = "Change background image",
	["DI_BKG_TT"] = [=[Will be used as background for the cutscene step. Please enter the full texture path.

If you change the background during a cutscene there will be a fade between the two different backgrounds.]=],
	["DI_CHOICE"] = "Option",
	["DI_CHOICE_CONDI"] = "Option condition",
	["DI_CHOICE_STEP"] = "Go to step",
	["DI_CHOICE_STEP_TT"] = [=[Enter the cutscene step number to play if the player selects this option.

|cff00ff00If empty or invalid step index, it will end the cutscene if selected (and trigger the On finish object event).]=],
	["DI_CHOICE_TT"] = [=[Enter the text for this option.

|cff00ff00Leave empty to disable this option.]=],
	["DI_CHOICES"] = "Player choices",
	["DI_CHOICES_TT"] = "Configure player choices for this step.",
	["DI_CONDI_TT"] = [=[Sets a condition for this option. If the condition is not checked when showing the options, the associated option will not be visible.

|cff00ff00Click: Configure condition
Right-click: Clear condition]=],
	["DI_DIALOG"] = "Dialog",
	["DI_DISTANCE"] = "Distance max (yards)",
	["DI_DISTANCE_TT"] = [=[Defines the max distance (in yards) the player can move away once the cutscene started before auto closing it (and trigger the 'On Cancel' object event).

|cff00ff00Zero means no limit.

|cffff9900Does not work in instance/battleground/arena since patch 7.1.]=],
	["DI_END"] = "End point",
	["DI_END_TT"] = [=[Marks this step as end point. When reached it will finish the cutscene (and triggers the On finish object event).

|cff00ff00Handy if you use player choices in this cutscene.]=],
	["DI_FRAME"] = "Decoration",
	["DI_GET_ID"] = "Target ID",
	["DI_GET_ID_TT"] = "Copy the target's NPC ID. Only works if your current target is an NPC.",
	["DI_HISTORY"] = "Cutscenes history",
	["DI_HISTORY_TT"] = "Click to see/hide the history panel, showing the previous cutscene lines.",
	["DI_IMAGE"] = "Change image",
	["DI_IMAGE_TT"] = [=[Displays an image in the center of the cutscene frame. The image will fade in. Please enter the full texture path.

To hide the image afterward, just leave the box empty.]=],
	["DI_LEFT_UNIT"] = "Change left model",
	["DI_LINKS_ONEND"] = "On cutscene end",
	["DI_LINKS_ONEND_TT"] = [=[Triggered when the cutscene is ended.

|cff00ff00This can be done by reaching the end of last step or by allowing the player to select a choice with an empty or unknown 'go to step'.

|cffff0000This is NOT triggered if the player cancels the cutscene by manually closing the frame.]=],
	["DI_LINKS_ONSTART"] = "On cutscene start",
	["DI_LINKS_ONSTART_TT"] = [=[Triggered when the cutscene is played.

|cffff9900Note that this workflow will be played BEFORE showing the first step.]=],
	["DI_LOOT"] = "Wait for loot",
	["DI_LOOT_TT"] = "If the workflow selected on the left will display a loot to the player, you can check this parameter to prevent the player to go to the next cutscene step until he looted all the items.",
	["DI_MODELS"] = "Models",
	["DI_NAME"] = "Change speaker name",
	["DI_NAME_DIRECTION"] = "Change dialog direction",
	["DI_NAME_DIRECTION_TT"] = "Determines where to place the chat bubble/name and which model to animate. Select none to completely hide the chat bubble and name.",
	["DI_NAME_TT"] = [=[The name of the talking character.

Only necessary if the dialog direction above is not NONE.]=],
	["DI_NEXT"] = "Next step index",
	["DI_NEXT_TT"] = [=[You can indicate which step will be played after this one.

|cff00ff00Leave empty to play the next index in sequential order, only use this field if you need to 'jump' to another index. Useful when using choices.]=],
	["DI_RIGHT_UNIT"] = "Change right model",
	["DI_STEP"] = "Cutscene step",
	["DI_STEP_ADD"] = "Add step",
	["DI_STEP_EDIT"] = "Cutscene step edition",
	["DI_STEP_TEXT"] = "Step text",
	["DI_STEPS"] = "Cutscene steps",
	["DI_UNIT_TT"] = [=[Sets the model to display:

- Leave empty to hide the model
- "player" to use the player's model
- "target" to use the target's model
- Any number to load as NPC ID]=],
	["DI_WAIT_LOOT"] = "Please loot all items",
	["DISCLAIMER"] = [=[{h1:c}Please read{/h1}
Creating items and quests takes time and energy and it's always terrible when you lose all the hard work you have done.
All add-ons in World of Warcraft can store data but there are limitations:
• There is an unknown data size limit for add-on data (depending on the fact that you are running a 32 or 64 bits client, among other things).
• Reaching this limit can wipe all the add-on saved data.
• Kill the process, force-closing the game client (Alt+F4) or crashing can corrupt the add-on saved data.
• Even if you exit the game correctly, there is always a chance that the game doesn't succeed to save the add-on data and corrupt it.
In regards to all of that, we STRONGLY recommend to regularely backup your add-on saved data.
You can find here a tutorial about finding all saved data:
{link*https://totalrp3.info/documentation/how_to/saved_variables*Where is my information stored?}
You can find here a tutorial about syncing your data to a cloud service:
{link*https://totalrp3.info/documentation/how_to/backup_and_sync_profiles*How to backup and synchronize your add-ons settings using a cloud service}
Please understand we will no longer reply to comments or tickets relating to data wipes.
It's not because we don't want to help but because we can't do anything to restore wiped data.
Thank you, and enjoy Total RP 3 Extended!
{p:r}The TRP3 Team{/p}]=],
	["DISCLAIMER_OK"] = "I hereby sign this contract with my blood",
	["DO_EMPTY"] = "Empty document",
	["DO_LINKS_ONCLOSE"] = "On close",
	["DO_LINKS_ONCLOSE_TT"] = "Triggered when the document is closed by the player or another event (e.g. through a workflow effect)",
	["DO_LINKS_ONOPEN"] = "On open",
	["DO_LINKS_ONOPEN_TT"] = "Triggered when the document is shown to the player.",
	["DO_NEW_DOC"] = "Document",
	["DO_PAGE_ADD"] = "Add page",
	["DO_PAGE_BORDER"] = "Border",
	["DO_PAGE_BORDER_1"] = "Parchment",
	["DO_PAGE_COUNT"] = "Page %s / %s",
	["DO_PAGE_EDITOR"] = "Page editor: page %s",
	["DO_PAGE_FIRST"] = "First page",
	["DO_PAGE_FONT"] = "%s font",
	["DO_PAGE_HEIGHT"] = "Page height",
	["DO_PAGE_HEIGHT_TT"] = "The page height, in pixels. Please note that certain backgrounds only support a certain height/width ratio and can be deformed.",
	["DO_PAGE_LAST"] = "Last page",
	["DO_PAGE_MANAGER"] = "Pages manager",
	["DO_PAGE_NEXT"] = "Next page",
	["DO_PAGE_PREVIOUS"] = "Previous page",
	["DO_PAGE_REMOVE"] = "Remove page",
	["DO_PAGE_REMOVE_POPUP"] = "Remove the page %s ?",
	["DO_PAGE_RESIZE"] = "Resizable",
	["DO_PAGE_RESIZE_TT"] = [=[Allow the user to resize the frame.

|cffff9900Be sure that your layout can be readable and does not depend on height/width ratio.

|cff00ff00Note that the user will never be able to reduce the frame size below the default width and height.]=],
	["DO_PAGE_TILING"] = "Background tiling",
	["DO_PAGE_TILING_TT"] = "Sets if the background will tile vertically and horizontally. If not, the texture will be stretched.",
	["DO_PAGE_WIDTH"] = "Page width",
	["DO_PAGE_WIDTH_TT"] = "The page width, in pixels. Please note that certain backgrounds only support a certain height/width ratio and can be deformed.",
	["DO_PARAMS_CUSTOM"] = "Page custom parameters",
	["DO_PARAMS_GLOBAL"] = "Default parameters",
	["DO_PARAMS_GLOBAL_TT"] = "Change the document default parameters. These parameters will be used for all pages that does not use custom page parameters.",
	["DO_PREVIEW"] = "Click to see a preview",
	["DOC_UNKNOWN_ALERT"] = "Can't open the document. (Missing class)",
	["DR_DELETED"] = "Destroyed: %s x%d",
	["DR_DROP_ERROR_INSTANCE"] = "Cannot drop items in an instance",
	["DR_DROPED"] = "Dropped on the ground: %s x%d",
	["DR_NOTHING"] = "No items found in this area.",
	["DR_POPUP"] = "Drop here",
	["DR_POPUP_ASK"] = [=[Total RP 3
 
Select what to do with the item:
%s]=],
	["DR_POPUP_REMOVE"] = "Destroy",
	["DR_POPUP_REMOVE_TEXT"] = "Destroy this item?",
	["DR_RESULTS"] = "Found %s items",
	["DR_SEARCH_BUTTON"] = "Search for |cff00ff00my|r items",
	["DR_SEARCH_BUTTON_TT"] = "Search for your items in the area within 15 yards.",
	["DR_STASHED"] = "Stashed: %s x%d",
	["DR_STASHES"] = "Stashes",
	["DR_STASHES_CREATE"] = "Create a stash here",
	["DR_STASHES_CREATE_TT"] = "Create a stash where you stand.",
	["DR_STASHES_DROP"] = "You can't drop item in someone else's stash.",
	["DR_STASHES_EDIT"] = "Edit stash",
	["DR_STASHES_ERROR_INSTANCE"] = "Cannot create a stash in an instance",
	["DR_STASHES_ERROR_OUT_SYNC"] = "Stash out of sync, please retry.",
	["DR_STASHES_ERROR_SYNC"] = "Stash is not synced.",
	["DR_STASHES_FOUND"] = "Stashes found: %s",
	["DR_STASHES_FULL"] = "This stash is full.",
	["DR_STASHES_HIDE"] = "Hide from scan",
	["DR_STASHES_HIDE_TT"] = [=[This stash won't appear on other players map scan.

Note that they will always be able to access it if they know where it is.]=],
	["DR_STASHES_MAX"] = "max 50 characters",
	["DR_STASHES_NAME"] = "Stash",
	["DR_STASHES_NOTHING"] = "No stashes found in this area.",
	["DR_STASHES_OWNER"] = "Owner",
	["DR_STASHES_OWNERSHIP"] = "Take ownership",
	["DR_STASHES_OWNERSHIP_PP"] = [=[Take ownership of this stash?
This character will be shown as owner of this stash when other players scan for it.]=],
	["DR_STASHES_REMOVE"] = "Remove stash",
	["DR_STASHES_REMOVE_PP"] = [=[Remove this stash?
|cffff9900All items still inside will be lost!]=],
	["DR_STASHES_REMOVED"] = "Stash removed.",
	["DR_STASHES_RESYNC"] = "Resynchronize",
	["DR_STASHES_SCAN"] = "Scan for players stashes",
	["DR_STASHES_SCAN_MY"] = "Scan for my stashes",
	["DR_STASHES_SEARCH"] = "Search for |cff00ff00players|r stashes",
	["DR_STASHES_SEARCH_TT"] = [=[Search for stashes from other players in the area within 15 yards.

It will launch a scan for 3 seconds, stand still!]=],
	["DR_STASHES_SYNC"] = "Synchronizing...",
	["DR_STASHES_TOO_FAR"] = "You are too far from this stash.",
	["DR_STASHES_WITHIN"] = "|cff00ff00Your|r stashes within 15 yards",
	["DR_SYSTEM"] = "Drop system",
	["DR_SYSTEM_TT"] = [=[Drop / search for items and create / access your stashes.

The drop system does not work in dungeons/arenas/battlegrounds.]=],
	["EDITOR_BOTTOM"] = "Bottom",
	["EDITOR_CANCEL_TT"] = [=[Cancel all changes to the whole object %s (root object and all inner objects).

|cffff9900Unsaved changes will be lost!]=],
	["EDITOR_CONFIRM"] = "Confirm",
	["EDITOR_HEIGHT"] = "Height",
	["EDITOR_ICON"] = "Select icon",
	["EDITOR_ICON_SELECT"] = "Click to select an icon.",
	["EDITOR_ID_COPY"] = "Copy ID",
	["EDITOR_ID_COPY_POPUP"] = "You can copy the object ID below if you need to paste it somewhere.",
	["EDITOR_MAIN"] = "Main",
	["EDITOR_MORE"] = "More",
	["EDITOR_NOTES"] = "Free notes",
	["EDITOR_PREVIEW"] = "Preview",
	["EDITOR_SAVE_TT"] = "Save all changes to the whole object %s (root object and all inner objects) and automatically increments the version number.",
	["EDITOR_TOP"] = "Top",
	["EDITOR_WARNINGS"] = [=[There are %s warnings.

|cffff9900%s|r

Save anyway?]=],
	["EDITOR_WIDTH"] = "Width",
	["EFFECT_CAT_CAMERA"] = "Camera",
	["EFFECT_CAT_CAMERA_LOAD"] = "Load camera",
	["EFFECT_CAT_CAMERA_LOAD_TT"] = "Sets the player's camera position based on a previously saved position.",
	["EFFECT_CAT_CAMERA_SAVE"] = "Save camera",
	["EFFECT_CAT_CAMERA_SAVE_TT"] = "Saves the player's current camera position in one of the 5 save slots available.",
	["EFFECT_CAT_CAMERA_SLOT"] = "Slot number",
	["EFFECT_CAT_CAMERA_SLOT_TT"] = "The index of one of the slots available, 1 to 5.",
	["EFFECT_CAT_CAMERA_ZOOM_DISTANCE"] = "Zoom distance",
	["EFFECT_CAT_CAMERA_ZOOM_IN"] = "Camera zoom in",
	["EFFECT_CAT_CAMERA_ZOOM_IN_TT"] = "Zooms the camera in by a specified distance.",
	["EFFECT_CAT_CAMERA_ZOOM_OUT"] = "Camera zoom out",
	["EFFECT_CAT_CAMERA_ZOOM_OUT_TT"] = "Zooms the camera out by a specified distance.",
	["EFFECT_CAT_CAMPAIGN"] = "Campaign and quest",
	["EFFECT_CAT_SOUND"] = "Sound and music",
	["EFFECT_CAT_SPEECH"] = "Speech and emotes",
	["EFFECT_COOLDOWN_DURATION"] = "Cooldown duration",
	["EFFECT_COOLDOWN_DURATION_TT"] = "The cooldown duration, in seconds.",
	["EFFECT_DIALOG_ID"] = "Cutscene ID",
	["EFFECT_DIALOG_QUICK"] = "Quick cutscene",
	["EFFECT_DIALOG_QUICK_TT"] = "Generate a quick cutscene with only one step. It will automatically takes the player's target as speaker.",
	["EFFECT_DIALOG_START"] = "Start cutscene",
	["EFFECT_DIALOG_START_PREVIEW"] = "Start cutscene %s.",
	["EFFECT_DIALOG_START_TT"] = "Start a cutscene. If a cutscene is already played, it will be interrupted and replaced by this one.",
	["EFFECT_DISMOUNT"] = "Dismiss mount",
	["EFFECT_DISMOUNT_TT"] = "Dismount the player from their current mount.",
	["EFFECT_DISPET"] = "Dismiss battle pet",
	["EFFECT_DISPET_TT"] = "Dismiss the currently invoked battle pet.",
	["EFFECT_DO_EMOTE"] = "Do emote",
	["EFFECT_DO_EMOTE_ANIMATED"] = "Animated",
	["EFFECT_DO_EMOTE_OTHER"] = "Others",
	["EFFECT_DO_EMOTE_SPOKEN"] = "Spoken",
	["EFFECT_DO_EMOTE_TT"] = "Make the player do a specific animated emote.",
	["EFFECT_DOC_CLOSE"] = "Close document",
	["EFFECT_DOC_CLOSE_TT"] = "Close the currently opened document. Do nothing if there is no shown document.",
	["EFFECT_DOC_DISPLAY"] = "Display document",
	["EFFECT_DOC_DISPLAY_TT"] = "Display a document to the player. If there is already a shown document, it will be replaced.",
	["EFFECT_DOC_ID"] = "Document ID",
	["EFFECT_DOC_ID_TT"] = [=[The document to show.

|cffffff00Please enter the full document ID (parents ID and inner ID).

|cff00ff00Hint: copy/paste the full ID to be sure to avoid typos.]=],
	["EFFECT_ITEM_ADD"] = "Add item",
	["EFFECT_ITEM_ADD_CRAFTED"] = "Crafted",
	["EFFECT_ITEM_ADD_CRAFTED_TT"] = "When checked, and if the added items are craftable (have the crafted flag in their display attributes), will display \"Crafted by xxx\" in the items tooltip where xxx will be the player name.",
	["EFFECT_ITEM_ADD_ID"] = "Item ID",
	["EFFECT_ITEM_ADD_ID_TT"] = [=[The item to add.

|cffffff00Please enter the full item ID (parents ID and inner ID).

|cff00ff00Hint: copy/paste the full ID to be sure to avoid typos.]=],
	["EFFECT_ITEM_ADD_PREVIEW"] = "Adds %sx %s",
	["EFFECT_ITEM_ADD_QT"] = "Amount",
	["EFFECT_ITEM_ADD_QT_TT"] = [=[The number of item to add.

|cff00ff00Note that the addon will do his best to reach this amount but it is possible that not all items will be added: for example if the bag becomes full or if the item has a maximum of units the character can have ('Unique' attribute).]=],
	["EFFECT_ITEM_ADD_TT"] = "Adds items to your bag.",
	["EFFECT_ITEM_BAG_DURABILITY"] = "Damage/repair container",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD"] = "Type",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE"] = "Damage",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE_TT"] = "Damage the parent container. The parent container health can't be damage below 0.",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL"] = "Repair",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL_TT"] = "Repair the parent container. The parent container health can't exceed the container maximum durability.",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_1"] = "|cff00ff00Repair|cffffff00 parent container for %s durability points.",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_2"] = "|cffff0000Damage|cffffff00 parent container for %s durability points.",
	["EFFECT_ITEM_BAG_DURABILITY_TT"] = [=[Repair or damage the durability of the item parent container.

|cff00ff00Only works on containers having durability.]=],
	["EFFECT_ITEM_BAG_DURABILITY_VALUE"] = "Durability point",
	["EFFECT_ITEM_BAG_DURABILITY_VALUE_TT"] = "The amount of durability points to add/substract from the parent container health.",
	["EFFECT_ITEM_CONSUME"] = "Consume item",
	["EFFECT_ITEM_CONSUME_TT"] = "Consumes the used item and destroys it.",
	["EFFECT_ITEM_COOLDOWN"] = "Start cooldown",
	["EFFECT_ITEM_COOLDOWN_PREVIEW"] = "Duration: %s second(s)",
	["EFFECT_ITEM_COOLDOWN_TT"] = "Start a cooldown for this item.",
	["EFFECT_ITEM_DICE"] = "Roll dice",
	["EFFECT_ITEM_DICE_PREVIEW"] = "Rollin' %s",
	["EFFECT_ITEM_DICE_PREVIEW_STORED"] = "Rollin' %s and saving the result to %s",
	["EFFECT_ITEM_DICE_ROLL"] = "Roll",
	["EFFECT_ITEM_DICE_ROLL_TT"] = [=[Enter a roll configuration similar to the /trp3 roll command.

|cff00ff00Example: 1d20, 3d6 ..etc.]=],
	["EFFECT_ITEM_DICE_ROLL_VAR"] = "Variable name (optional)",
	["EFFECT_ITEM_DICE_ROLL_VAR_TT"] = [=[The variable in which you want to store the dice roll result.
Leave empty if you don't want to store the result.]=],
	["EFFECT_ITEM_DICE_TT"] = "They see me rollin', they hating.",
	["EFFECT_ITEM_LOOT"] = "Show/drop loot",
	["EFFECT_ITEM_LOOT_DROP"] = "Drop items",
	["EFFECT_ITEM_LOOT_DROP_TT"] = "Drops items on the ground instead of presenting a loot frame to the player. The player can then loot the items he wants with the 'search for items' feature.",
	["EFFECT_ITEM_LOOT_NAME"] = "Source name",
	["EFFECT_ITEM_LOOT_NAME_TT"] = "This will be the loot container name.",
	["EFFECT_ITEM_LOOT_PREVIEW_1"] = "Drop %s item(s) on the ground.",
	["EFFECT_ITEM_LOOT_PREVIEW_2"] = "Display loot with %s item(s).",
	["EFFECT_ITEM_LOOT_SLOT"] = "Click on a slot to configure it.",
	["EFFECT_ITEM_LOOT_TT"] = "Displays a loot container to the player or drop loot on the ground where the player is.",
	["EFFECT_ITEM_REMOVE"] = "Destroy item",
	["EFFECT_ITEM_REMOVE_ID_TT"] = [=[The item to remove.

|cffffff00Please enter the full item ID (parents ID and inner ID).

|cff00ff00Hint: copy/paste the full ID to be sure to avoid typos.]=],
	["EFFECT_ITEM_REMOVE_PREVIEW"] = "Destroys %sx %s",
	["EFFECT_ITEM_REMOVE_QT_TT"] = "The number of item to remove.",
	["EFFECT_ITEM_REMOVE_TT"] = "Destroy items from your inventory.",
	["EFFECT_ITEM_SOURCE"] = "Search in",
	["EFFECT_ITEM_SOURCE_1"] = "All inventory",
	["EFFECT_ITEM_SOURCE_1_ADD_TT"] = "Add the item(s) anywhere inside the entire character inventory, starting with the main container.",
	["EFFECT_ITEM_SOURCE_1_SEARCH_TT"] = "Search for the item(s) inside the entire character inventory.",
	["EFFECT_ITEM_SOURCE_1_TT"] = "Search for the item(s) inside the entire character inventory.",
	["EFFECT_ITEM_SOURCE_2"] = "Parent container",
	["EFFECT_ITEM_SOURCE_2_ADD_TT"] = [=[Add the item(s) only inside this item parent container (and any sub-container).

|cffff9900Only works if this script is in an item context.]=],
	["EFFECT_ITEM_SOURCE_2_SEARCH_TT"] = [=[Search for the item(s) only inside this item parent container (and any sub-container).

|cffff9900Only works if this script is in an item context.]=],
	["EFFECT_ITEM_SOURCE_2_TT"] = [=[Search for the item(s) only inside this item parent container (and any sub-container).

|cffff9900Only works if this script is in an item context.]=],
	["EFFECT_ITEM_SOURCE_3"] = "This item",
	["EFFECT_ITEM_SOURCE_3_ADD_TT"] = [=[Add the item(s) only inside this item (and any sub-container).

|cffff9900Only works if this script is in an item context and this item is a container.]=],
	["EFFECT_ITEM_SOURCE_3_SEARCH_TT"] = [=[Search for the item(s) only inside this item (and any sub-container).

|cffff9900Only works if this script is in an item context and this item is a container.]=],
	["EFFECT_ITEM_SOURCE_3_TT"] = [=[Search for the item(s) only inside this item (and any sub-container).

|cffff9900Only works if this script is in an item context and this item is a container.]=],
	["EFFECT_ITEM_SOURCE_ADD"] = "Add to",
	["EFFECT_ITEM_SOURCE_ID"] = "You can select an item ID you want to search, or leave empty if you want to search for all types of items.",
	["EFFECT_ITEM_SOURCE_SEARCH"] = "Search in",
	["EFFECT_ITEM_USE"] = "Container: item use",
	["EFFECT_ITEM_USE_PREVIEW"] = "Use item in slot %s",
	["EFFECT_ITEM_USE_TT"] = [=[Use a item in a slot in the container.

|cffff9900Only works if this workflow is triggered by a container.]=],
	["EFFECT_ITEM_WORKFLOW"] = "Run item workflow",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_C"] = "Triggers workflow %s in child item in slot %s.",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_P"] = "Triggers workflow %s in parent container.",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_S"] = "Triggers workflow %s in sibling item in slot %s.",
	["EFFECT_ITEM_WORKFLOW_TT"] = "Run a workflow on the parent container or on an item in a specific child item (for container only).",
	["EFFECT_MISSING"] = "This effect (%s) is unknown and you should remove it.",
	["EFFECT_OPERATION"] = "Operation",
	["EFFECT_OPERATION_TYPE"] = "Operation type",
	["EFFECT_OPERATION_TYPE_ADD"] = "Addition",
	["EFFECT_OPERATION_TYPE_DIV"] = "Division",
	["EFFECT_OPERATION_TYPE_INIT"] = "Init",
	["EFFECT_OPERATION_TYPE_INIT_TT"] = "Initializes the variable to a value, only if the variable does not exist yet.",
	["EFFECT_OPERATION_TYPE_MULTIPLY"] = "Multiplication",
	["EFFECT_OPERATION_TYPE_SET"] = "Set",
	["EFFECT_OPERATION_TYPE_SET_TT"] = "Sets the variable to a value, even if the variable has already been initialiazed.",
	["EFFECT_OPERATION_TYPE_SUB"] = "Subtraction",
	["EFFECT_OPERATION_VALUE"] = "Operation value",
	["EFFECT_PROMPT"] = "Prompt for input",
	["EFFECT_PROMPT_CALLBACK"] = "Workflow callback (optional)",
	["EFFECT_PROMPT_CALLBACK_TT"] = [=[The workflow name to call after the user input.

This is optional. Leave empty to not use any callback.

Is given, the workflow will be called with the input as workflow variable with the proper name.

|cffffff00Warning: the callback is called even if the player click 'Cancel' in the prompt popup. In that case the variable will be left untouched if it exists.]=],
	["EFFECT_PROMPT_DEFAULT"] = "Default value",
	["EFFECT_PROMPT_DEFAULT_TT"] = "The default value for the input.",
	["EFFECT_PROMPT_PREVIEW"] = "Prompt user for an input to store in variable |cff00ff00%s|r.",
	["EFFECT_PROMPT_TEXT"] = "Popup text",
	["EFFECT_PROMPT_TEXT_TT"] = "The text that will be presented to the user in the input popup.",
	["EFFECT_PROMPT_TT"] = [=[Ask the user for an input and store it in a variable. Then optionally trigger a workflow.

|cffff0000WARNING, this effect execution is asynchronous.]=],
	["EFFECT_PROMPT_VAR"] = "Variable name",
	["EFFECT_PROMPT_VAR_TT"] = "The name of the variable storing the user input.",
	["EFFECT_QUEST_GOTOSTEP"] = "Change quest step",
	["EFFECT_QUEST_GOTOSTEP_ID"] = "Quest step ID",
	["EFFECT_QUEST_GOTOSTEP_ID_TT"] = [=[Use the browser to select your quest step (the quest and quest step must exist before linking it to this effect).

If your quest step does not appear in the browser, save your campaign and try again.]=],
	["EFFECT_QUEST_GOTOSTEP_PREVIEW"] = "Go to step %s.",
	["EFFECT_QUEST_GOTOSTEP_TT"] = [=[Change a quest step.

|cffff9900Only works if the quest is part of the current active campaign and that the quest has already been revealed in the quest log.]=],
	["EFFECT_QUEST_OBJ_ID"] = "Objective ID",
	["EFFECT_QUEST_OBJ_ID_TT"] = "Enter the objective ID. Enter only the objective ID and not the full campaign-quest-objective ID.",
	["EFFECT_QUEST_REVEAL_OBJ"] = "Reveal quest objective",
	["EFFECT_QUEST_REVEAL_OBJ_DONE"] = "Complete objective",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_PREVIEW"] = "Complete objective: %s for %s",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_TT"] = [=[Marks an objective as completed.

|cffff9900Only works if the quest is part of the current active campaign, if the quest has already been revealed in the quest log and if the objective has already been revealed.]=],
	["EFFECT_QUEST_REVEAL_OBJ_PREVIEW"] = "Reveal objective: %s for %s",
	["EFFECT_QUEST_REVEAL_OBJ_TT"] = [=[Reveal a quest objective.

|cffff9900Only works if the quest is part of the current active campaign and that the quest has already been revealed in the quest log.]=],
	["EFFECT_QUEST_START"] = "Reveal quest",
	["EFFECT_QUEST_START_ID"] = "Quest ID",
	["EFFECT_QUEST_START_ID_TT"] = [=[Use the browser to select your quest (the quest must exist before linking it to this effect).

If your quest does not appear in the browser, save your campaign and try again.]=],
	["EFFECT_QUEST_START_PREVIEW"] = "Reveal quest %s.",
	["EFFECT_QUEST_START_TT"] = [=[Reveal a quest in the quest log.

|cffff9900Only works if the quest is part of the current active campaign.]=],
	["EFFECT_RANDSUM"] = "Summon random battle pet",
	["EFFECT_RANDSUM_PREVIEW_FAV"] = "Summon a random battle pet from your |c0000ff00favourite pool|r.",
	["EFFECT_RANDSUM_PREVIEW_FULL"] = "Summon a random battle pet from your |c0000ff00entire pool|r.",
	["EFFECT_RANDSUM_SUMMON_FAV"] = "Only summon favourite pets",
	["EFFECT_RANDSUM_TT"] = "Summon a random battle pet.",
	["EFFECT_RUN_WORKFLOW"] = "Run workflow",
	["EFFECT_RUN_WORKFLOW_ID"] = "Workflow ID",
	["EFFECT_RUN_WORKFLOW_ID_TT"] = "The workflow ID you want to run.",
	["EFFECT_RUN_WORKFLOW_PREVIEW"] = "Run workflow %s in %s.",
	["EFFECT_RUN_WORKFLOW_SLOT"] = "Slot ID",
	["EFFECT_RUN_WORKFLOW_SLOT_TT"] = "The index of the container slot to trigger. Slots are indexed from top left to bottom right beginning with slot 1.",
	["EFFECT_RUN_WORKFLOW_TT"] = "Run another workflow. All workflow variables will be passed through the next.",
	["EFFECT_SCRIPT"] = "Execute restricted Lua script",
	["EFFECT_SCRIPT_I_EFFECT"] = "Insert effect",
	["EFFECT_SCRIPT_I_EFFECT_TT"] = [=[Insert an effect function where the cursor is in the code.
The function is in the form of:
|cff00ffffeffect( effectID, args, arg1, arg2, ...);|r
- |cff00ffffEffect ID|r: the effect ID, you can find it by looking at the addon source code.
- |cff00ffffargs|r: The execution arguments: should always be the args variable.
- |cff00ffffEffect arguments argX|r: All effects arguments can be found in the addon source code.
|cffffff00Please always keep the 'args' as second parameters, |rit is needed by the effect function and contains all workflows arguments.
|cff00ff00We won't, for now, heavily document all effect ID and arguments as we consider this effect restricted to users capable of looking at the addon source code. ;)]=],
	["EFFECT_SCRIPT_SCRIPT"] = "Lua code",
	["EFFECT_SCRIPT_SCRIPT_TT"] = [=[This script will be executed in a safe environment where you can have access to all Lua synthax and API (table, string, math...) and the Extended |cff00ff00effect|r function.
|cffff0000You don't have access to the game API here!|r
A custom Lua script will always be less efficient than a workflow effect, as it is compiled each time, in opposition to a workflow effect being compiled once.
|cffff9900So keep the script to the minimum and only use this script effect if necessary.]=],
	["EFFECT_SCRIPT_TT"] = "Execute a Lua script in a restricted safe environment.",
	["EFFECT_SECURE_MACRO_ACTION_NAME"] = "Execute macro",
	["EFFECT_SECURE_MACRO_BLOCKED"] = "Blocked macro effect:",
	["EFFECT_SECURE_MACRO_DESCRIPTION"] = [=[Execute custom macro commands.

|cffccccccNotes:
- This effect will only be run if the workflow is called following a user action (use an item, click on a dialog choice in a cutscene).
- This effect is not impacted by delays inside the workflow. Because macros can execute secure actions, all macro effects have to be executed immediately after the user action.
- This effect IS affected by conditions and can resolve variables.
- This effect will NEVER be run while in combat or when called by an event in a campaign.
|r]=],
	["EFFECT_SECURE_MACRO_HELP"] = [=[You can use any commands you would normally use in a macro, including other add-ons' custom /slash commands.

You can also use Total RP 3: Extended variables (|cffcccccc${my_var_name}|r).
]=],
	["EFFECT_SECURE_MACRO_HELP_TITLE"] = "Macro commands",
	["EFFECT_SHEATH"] = "Toggle weapons sheath",
	["EFFECT_SHEATH_TT"] = "Draw or put up the character weapons.",
	["EFFECT_SIGNAL"] = "Send signal",
	["EFFECT_SIGNAL_ID"] = "Signal ID",
	["EFFECT_SIGNAL_ID_TT"] = "It's the ID of your signal. It can be tested if conditions and workflows triggered by the game event |cff00ff00TRP3_SIGNAL|r.",
	["EFFECT_SIGNAL_PREVIEW"] = "|cffffff00Send signal ID:|r %s|cffffff00 with value:|r %s",
	["EFFECT_SIGNAL_TT"] = [=[Send a signal with an ID and a value to the player's target.

This signal can be handle by campaign/quest/step game event links through the event |cff00ff00TRP3_SIGNAL|r.]=],
	["EFFECT_SIGNAL_VALUE"] = "Signal value",
	["EFFECT_SIGNAL_VALUE_TT"] = "It's the value of your signal. It can be tested if conditions and workflows triggered by the game event |cff00ff00TRP3_SIGNAL|r and inserted as text tags like |cff00ff00${event.2}|r.",
	["EFFECT_SOUND_ID_LOCAL"] = "Play local sound",
	["EFFECT_SOUND_ID_LOCAL_PREVIEW"] = "Plays sound ID %s in channel %s in a %s yards radius.",
	["EFFECT_SOUND_ID_LOCAL_STOP"] = "Stop local sound",
	["EFFECT_SOUND_ID_LOCAL_STOP_TT"] = "Stops one or all sounds in a particular channel for players around you.",
	["EFFECT_SOUND_ID_LOCAL_TT"] = "Plays a sound for players around you.",
	["EFFECT_SOUND_ID_SELF"] = "Play sound ID",
	["EFFECT_SOUND_ID_SELF_CHANNEL"] = "Channel",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE"] = "Ambience",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE_TT"] = [=[Ambience is for ambient sound. It uses the ambience volume game option

Multiple different ambience sounds can be played simultaneously.

|cffff9900Please do not use this effect to play music as this won't stop the current game music and you would have musics overlaping each other. If you want to play a music use the proper music effect.]=],
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX"] = "SFX",
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX_TT"] = [=[SFX is for effect sounds. It uses the sound volume game option.

Multiple different SFX sounds can be played simultaneously.]=],
	["EFFECT_SOUND_ID_SELF_ID"] = "Sound ID",
	["EFFECT_SOUND_ID_SELF_ID_TT"] = [=[The ID is an internal identifier for sounds in the game.

|cff00ff00You can easily find all ID on websites like wowhead.

|cffff9900Leave empty to stop all sounds played on the selected channel.]=],
	["EFFECT_SOUND_ID_SELF_PREVIEW"] = "Plays sound ID %s in channel %s.",
	["EFFECT_SOUND_ID_SELF_TT"] = "Plays a sound in a particular channel. Only the player will hear it.",
	["EFFECT_SOUND_ID_STOP"] = "Stop sound ID",
	["EFFECT_SOUND_ID_STOP_ALL_PREVIEW"] = "Stops |cff00ff00all|cffffff00 sounds in channel %s.",
	["EFFECT_SOUND_ID_STOP_PREVIEW"] = "Stops sound ID %s in channel %s.",
	["EFFECT_SOUND_ID_STOP_TT"] = "Stops one or all sounds in a particular channel.",
	["EFFECT_SOUND_LOCAL_DISTANCE"] = "Playback radius",
	["EFFECT_SOUND_LOCAL_DISTANCE_TT"] = "Determine the radius around the player within which other players will hear this sound.",
	["EFFECT_SOUND_MUSIC_LOCAL"] = "Play local music",
	["EFFECT_SOUND_MUSIC_LOCAL_PREVIEW"] = "Plays music \"%s\" in a %s yards radius.",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP"] = "Stop local music",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP_TT"] = [=[If you use the "play local music" effect, the music will loop for all players around until the game plays another music (for example: the player enters a new zone), or if each player stops it manually or until you use this effect.

|cffff9900Note that this effect will only stop music played by the addon, and will not stop a music played by the game.]=],
	["EFFECT_SOUND_MUSIC_LOCAL_TT"] = "Plays a music for players around you.",
	["EFFECT_SOUND_MUSIC_SELF"] = "Play music",
	["EFFECT_SOUND_MUSIC_SELF_PATH"] = "Music path",
	["EFFECT_SOUND_MUSIC_SELF_PATH_TT"] = [=[The music path within the game files.

|cffff9900It must not contain the Sounds\Music\ part of the path, nor the .mp3 at the end.]=],
	["EFFECT_SOUND_MUSIC_SELF_PREVIEW"] = "Plays music: %s",
	["EFFECT_SOUND_MUSIC_SELF_TT"] = [=[Plays music. Only the player will hear it.

Note that the music will loop until the game plays a music of his own (when entering a zone for example), or until a "stop music" effect is played. Also the player can always manually stop the music through the sound history frame.]=],
	["EFFECT_SOUND_MUSIC_STOP"] = "Stop music",
	["EFFECT_SOUND_MUSIC_STOP_TT"] = [=[If you use the "play music" effect, the music will loop until the game plays another music (for example: the player enters a new zone), or if the player stops it manually or until you use this effect.

|cffff9900Note that this effect will only stop music played by the addon, and will not stop a music played by the game.]=],
	["EFFECT_SOUND_PLAY"] = "Play",
	["EFFECT_SOURCE"] = "Source",
	["EFFECT_SOURCE_CAMPAIGN"] = "Active campaign",
	["EFFECT_SOURCE_CAMPAIGN_TT"] = "Search the variable in the current campaign, if there is a currently active campaign.",
	["EFFECT_SOURCE_OBJECT"] = "Object",
	["EFFECT_SOURCE_OBJECT_TT"] = [=[Search the variable in the workflow source object.

Only works if the source object is an item or a campaign/quest/step.

In the case of a campaign, quest or quest step, the variable will be searched in the campaign level (global for the whole campaign).]=],
	["EFFECT_SOURCE_PARENT"] = "Parent container",
	["EFFECT_SOURCE_PARENT_TT"] = "Search for the workflow in the parent container item.",
	["EFFECT_SOURCE_SLOT"] = "Item in slot (child)",
	["EFFECT_SOURCE_SLOT_B"] = "Item in slot (sibling)",
	["EFFECT_SOURCE_SLOT_B_TT"] = "Search the workflow in the item in a specific slot of the same parent container.",
	["EFFECT_SOURCE_SLOT_TT"] = "Search the workflow in the item in a specific slot inside the container item. Only works for container item!",
	["EFFECT_SOURCE_V"] = "Variable source",
	["EFFECT_SOURCE_W"] = "Workflow source",
	["EFFECT_SOURCE_WORKFLOW"] = "Workflow",
	["EFFECT_SOURCE_WORKFLOW_TT"] = "Search the variable in the workflow execution. The scope for this variable is limited to the workflow execution and will be discarded afterward.",
	["EFFECT_SPEECH_NAR"] = "Speech: Narration",
	["EFFECT_SPEECH_NAR_DEFAULT"] = "The snow blows white on the mountain tonight ...",
	["EFFECT_SPEECH_NAR_TEXT_TT"] = "Please do not include the leading pipe || character.",
	["EFFECT_SPEECH_NAR_TT"] = [=[Plays a narration as a formated emote.

|cff00ff00Has the same effect as playing an emote starting with a || (pipe character). It will be formated in chat for other TRP users.]=],
	["EFFECT_SPEECH_NPC"] = "Speech: NPC",
	["EFFECT_SPEECH_NPC_DEFAULT"] = "Do you want to build a snowman?",
	["EFFECT_SPEECH_NPC_NAME"] = "NPC name",
	["EFFECT_SPEECH_NPC_NAME_TT"] = "The NPC name.",
	["EFFECT_SPEECH_NPC_TT"] = [=[Plays a npc speech as a formated emote.

|cff00ff00Has the same effect as playing an emote starting with a || (pipe character) with a npc name and a text. It will be formated in chat for other TRP users.]=],
	["EFFECT_SPEECH_PLAYER"] = "Speech: Player",
	["EFFECT_SPEECH_PLAYER_DEFAULT"] = "Let the dragon consume you!",
	["EFFECT_SPEECH_PLAYER_TT"] = "Makes the player speak, yell or do an /e emote.",
	["EFFECT_SPEECH_TYPE"] = "Speech type",
	["EFFECT_SUMMOUNT"] = "Summon a mount",
	["EFFECT_SUMMOUNT_ACTION_TT"] = "Select a specific mount",
	["EFFECT_SUMMOUNT_NOMOUNT"] = "No mount select yet.",
	["EFFECT_SUMMOUNT_RANDOMMOUNT"] = "Random favourite",
	["EFFECT_SUMMOUNT_TT"] = "Summon a specific mount, if available.",
	["EFFECT_TEXT"] = "Display text",
	["EFFECT_TEXT_PREVIEW"] = "Displayed text",
	["EFFECT_TEXT_TEXT"] = "Text",
	["EFFECT_TEXT_TEXT_DEFAULT"] = [=[Hello.
How are you?]=],
	["EFFECT_TEXT_TEXT_TT"] = "The text to display.",
	["EFFECT_TEXT_TT"] = [=[Displays a text.
Different outputs are possible.]=],
	["EFFECT_TEXT_TYPE"] = "Text type",
	["EFFECT_TEXT_TYPE_1"] = "Chat frame text",
	["EFFECT_TEXT_TYPE_2"] = "Alert popup",
	["EFFECT_TEXT_TYPE_3"] = "Raid alert text",
	["EFFECT_TEXT_TYPE_4"] = "Alert message",
	["EFFECT_USE_SLOT"] = "Container slot number",
	["EFFECT_USE_SLOT_TT"] = "The container slots number are assigned from left to right and top to bottom.",
	["EFFECT_VAR"] = "Variable name",
	["EFFECT_VAR_INDEX"] = "Argument index",
	["EFFECT_VAR_INDEX_TT"] = [=[The index of the argument.

So if you want to check the third argument of an event, enter 3.]=],
	["EFFECT_VAR_OBJECT_CHANGE"] = "Variable operation",
	["EFFECT_VAR_OBJECT_CHANGE_TT"] = [=[Performs an operation on a variable.

|cffff9900For math operations: If the variable does not exists or can't be cast as a number, it will be initialized at 0.]=],
	["EFFECT_VAR_OPERAND"] = "Variable dynamic value",
	["EFFECT_VAR_OPERAND_CONFIG"] = "Value configuration",
	["EFFECT_VAR_OPERAND_CONFIG_NO"] = "No configuration for this value",
	["EFFECT_VAR_OPERAND_TT"] = "Place a dynamic value in a variable. You have access to all test values from conditions.",
	["EFFECT_VAR_VALUE"] = "Variable value",
	["EFFECT_W_CAMPAIGN_TT"] = "Search for the workflow in the current active campaign.",
	["EFFECT_W_OBJECT_TT"] = "Search for the workflow in the same object.",
	["ERROR_MISSING_ARG"] = "Missing argument %1$s when trying to call function %2$s.",
	["EX_SOUND_HISTORY"] = "Sounds history",
	["EX_SOUND_HISTORY_CLEAR"] = "Clear",
	["EX_SOUND_HISTORY_EMPTY"] = "No sound has been played.",
	["EX_SOUND_HISTORY_LINE"] = "%s played soundID %s in channel %s.",
	["EX_SOUND_HISTORY_REPLAY"] = "Replay",
	["EX_SOUND_HISTORY_STOP"] = "Stop",
	["EX_SOUND_HISTORY_STOP_ALL"] = "Stop all",
	["EX_SOUND_HISTORY_TT"] = [=[See what sounds have been played, see where they're from and stop them if they still are playing.

|cffffff00Click:|r Open sound history
|cffffff00Right-click:|r Stop all sounds/musics]=],
	["IN_INNER"] = "Inner objects",
	["IN_INNER_ADD"] = "Add inner object",
	["IN_INNER_ADD_COPY"] = "Add copy of existing object",
	["IN_INNER_ADD_NEW"] = "Create new object",
	["IN_INNER_COPY_ACTION"] = "Copy object content",
	["IN_INNER_DELETE_CONFIRM"] = [=[Remove the inner object |cff00ffff"%s"|r |cff00ff00[%s]|r from the parent object |cff00ff00[%s]|r?

|cffff9900The inner object will be lost.]=],
	["IN_INNER_DELETE_TT"] = "Remove this inner object from the parent object.",
	["IN_INNER_EMPTY"] = [=[No inner objects

You can add one by using the add button below.]=],
	["IN_INNER_ENTER_ID"] = "Enter new inner object ID",
	["IN_INNER_ENTER_ID_NO_SPACE"] = "Object IDs can't contain spaces. Remember that this isn't the object's name !",
	["IN_INNER_ENTER_ID_TT"] = [=[Inner object ID must be unique within the parent object.

|cffff9900Please only use lower case characters and underscores. Any other character will be converted to underscores.]=],
	["IN_INNER_HELP"] = [=[Inner objects are objects stored in a parent object.
We should begin with some examples:
|cffff9900
- You want to create a rifle item with bullets item to charge it. Typically the rifle would be the main object, in which the bullet object would be an inner object for the rifle.
- A mail item opening a document. The document would be an inner object for the mail item.
- Creating quests: any item/document/cutscenes you use in a quest could be inner objects for this quest.
|rThe advantages of using inner objects are multiple:
|cff00ff00
- Inner objects data are really stored inside the parent object data. That means they share the same version number, and their data is exchanged in the same time as the parent object data.
- You can freely determine the inner object ID, as it will use the parent object ID as prefix. You just can't have two inner objects having the same ID inside the same parent object.
- Using inner objects brings better performance.
- It's easier to manage and navigate through your objects if they are stored in parent objects. You can really see a parent object as a folder in which you store files.
|rSo it's simple: when you want to create an object, always ask yourself if it wouldn't be better to have it as an inner object for another item or a quest.
|cff00ff00Also: document and cutscenes can only be inner objects!]=],
	["IN_INNER_HELP_TITLE"] = "What are inner objects?",
	["IN_INNER_ID"] = [=[Please enter a new ID for the inner object |cff00ff00[%s]|r.

Old ID: |cff00ffff"%s"|r]=],
	["IN_INNER_ID_ACTION"] = "Change ID",
	["IN_INNER_ID_COPY"] = "Copy",
	["IN_INNER_ID_COPY_TT"] = "You can copy your inner object to paste it in any other parent object.",
	["IN_INNER_LIST"] = "Inner object list",
	["IN_INNER_NO_AVAILABLE"] = "This inner ID is not available!",
	["IN_INNER_PASTE_ACTION"] = "Paste object content",
	["IN_INNER_PASTE_CONFIRM"] = "Replace the content of this inner object with the one you copied earlier?",
	["IN_INNER_S"] = "Inner object",
	["INV_PAGE_CAMERA_CONFIG"] = [=[Camera parameters:
   Rotation: %.2f]=],
	["INV_PAGE_CHARACTER_INSPECTION"] = "Character inspection",
	["INV_PAGE_CHARACTER_INSPECTION_TT"] = "Inspect this character's inventory.",
	["INV_PAGE_CHARACTER_INV"] = "Inventory",
	["INV_PAGE_EDIT_ERROR1"] = "You must be the author of this item to edit it.",
	["INV_PAGE_EDIT_ERROR2"] = "This item is not in Quick mode.",
	["INV_PAGE_INV_OPEN"] = "Open inventory",
	["INV_PAGE_ITEM_LOCATION"] = "Item location on character",
	["INV_PAGE_LOOT_ALL"] = "Loot all",
	["INV_PAGE_MARKER"] = [=[Marker position:
   x: %.2f
   y: %.2f]=],
	["INV_PAGE_PLAYER_INV"] = "%s's inventory",
	["INV_PAGE_QUICK_SLOT"] = "Quick slot",
	["INV_PAGE_QUICK_SLOT_TT"] = "This slot will be used as primary container.",
	["INV_PAGE_SEQUENCE"] = "Sequence ID",
	["INV_PAGE_SEQUENCE_PRESET"] = "You can select a sequence ID corresponding to an emote.",
	["INV_PAGE_SEQUENCE_TT"] = [=[You can change the pose of your character by entering an animation ID here and select the animation frame with the slider below.

Warning: If the animation flickers it's because there is a problem with the animation for your race model. If it happens, please select another animation.]=],
	["INV_PAGE_TOTAL_VALUE"] = "Total items value",
	["INV_PAGE_TOTAL_VALUE_TT"] = [=[This is the value of your inventory.

This is not the amount of "coins" but the estimated total value of all items in the inventory.]=],
	["INV_PAGE_WAIT"] = "Waiting for response",
	["INV_PAGE_WEAR_ACTION"] = "Configure item location",
	["INV_PAGE_WEAR_ACTION_RESET"] = "Reset configuration",
	["INV_PAGE_WEAR_TT"] = [=[This item is wearable.
The green zone indicates the item location on the character.]=],
	["INV_TU_1"] = [=[You can place an item (or a stack of items) in each slot of the inventory.
|cff00ff00You are not limited in capacity as you can have an unlimited amount of bags and containers. You can also have containers in containers.
|cffff9900The only thing you should be careful with is the carry weight of each container.|r
If a container has a maximum weight capacity and you overpass this capacity, it will slowly be damaged over time and could randomly drop items on the ground!]=],
	["INV_TU_2"] = [=[Any bag you place here will act as primary container.
|cffff9900It's very important to always have a primary container with free space as it will be the container used when exchanging items with other players.
|cff00ff00Also, the primary container can easily be opened with the inventory button on the TRP toolbar.]=],
	["INV_TU_3"] = [=[For items that are directly on the character (not in a bag), if they are wearable (which is a choice from the item author), |cff00ff00you can indicates where they are in your character.
|cffff9900For that click on the dot near the item and place the marker on your character. You can also rotate your character and select his pose.
|cff00ff00When someone uses the inspection feature on you, they will see the markers with the proper character pose!
|rYou can inspect someone's inventory by selecting the character and click on the target bar button |cff00ff00"Character inspection"|r.
|cffff9900Note that the two players must use TRP Extended to be able to inspect each other.]=],
	["INV_TU_4"] = [=[When drag & droping an item outside the inventory, |cffff9900you will be asked to choose between destroying it or droping it on the ground.|r
You can drop items (almost) everywhere in the world. |cff00ff00You can then go loot them back later by using the "Search for items" button on the toolbar.
You can also see all droped items on the map by using the "Scan for my items" button.
|cffff9900Note that sometimes items can be droped automatically: if you receive items but your inventory is full, or if one of your bags is damaged.]=],
	["INV_TU_5"] = [=[You can exchange an item (or a stack of items) with another player by drag & drop the stack on the player (just like the game does).
|cffff9900When someone give you an item, the exchange frame will tell you if the item could possibly have annoying effects (nobody want their character to shout horrible things).
|rWhen that's the case, TRP will convert these effects into a less damaging form (for instance, the shouting will be converted to a personal text) until you decide to unblock them.
|cff00ff00You can block/unblock effects and white-list effects or players by Alt + Right-click on an item on your inventory.]=],
	["INV_TU_5_V2"] = [=[You can exchange an item (or a stack of items) with another player by drag & drop the stack on the player (just like the game does) or using the dedicated button on the target frame.

|cffff9900When someone give you an item, the exchange frame will tell you if the item could possibly have annoying effects (nobody want their character to shout horrible things).

|rWhen that's the case, TRP will convert these effects into a less damaging form (for instance, the shouting will be converted to a personal text) until you decide to unblock them.

|cff00ff00You can block/unblock effects and white-list effects or players by Alt + Right-click on an item on your inventory.]=],
	["IT_CAST"] = "Casting",
	["IT_CO_DURABILITY"] = "Durability",
	["IT_CO_DURABILITY_TT"] = [=[Determine the overall max health for your container. A container can lose health over time or can be damaged. But it can also be repaired with the proper items.

|cff00ff00Zero means invulnerable.]=],
	["IT_CO_MAX"] = "Max weight (in grams)",
	["IT_CO_MAX_TT"] = [=[This sets the limit of weight from where your container will start losing health over time due to overweight.

|cff00ff00Zero means no limit.

|cffff9900Please enter the max weight in GRAMS.]=],
	["IT_CO_ONLY_INNER"] = "Can only contain inner items",
	["IT_CO_ONLY_INNER_TT"] = [=[Marks this container to be able to contain only children items from the same root object.

As for now, only containers with this option enabled can be traded while containing items.]=],
	["IT_CO_SIZE"] = "Container size",
	["IT_CO_SIZE_COLROW"] = "%s |1row;rows; by %s columns",
	["IT_CON"] = "Container",
	["IT_CON_CAN_INNER"] = "Can't place a container inside itself!",
	["IT_CON_ERROR_TRADE"] = "You can't drop this container if it's not empty.",
	["IT_CON_ERROR_TYPE"] = "This container can't contain that kind of item.",
	["IT_CON_OPEN"] = "Open/Close container",
	["IT_CON_TT"] = "Container (%d/%d slots used)",
	["IT_CON_TT_MISSING_CLASS"] = "Missing item class ID",
	["IT_CONTAINER_TT"] = [=[Sets this item to be a container. Containers can hold other items.

|cff00ff00The container can be configured in the 'Container' tab of this editor.]=],
	["IT_CONVERT_TO_NORMAL"] = "Convert to normal mode",
	["IT_CONVERT_TO_NORMAL_TT"] = [=[You are in quick mode, an easy first approach to create a simple item.

You can go further and edit this item in normal mode. This will bring you more possibilities but it's also more complex to learn and use.

|cffff9900Warning: if you convert this item to normal mode, you can't revert it back to quick mode.]=],
	["IT_CRAFTED"] = "Crafted",
	["IT_CRAFTED_TT"] = "A crafted item will display in the tooltip the name of the player who crafted it. The player who crafted the item is the player making the action of creating one instance of this item, manually or through a workflow.",
	["IT_DISPLAY_ATT"] = "Display attributes",
	["IT_DOC_ACTION"] = "Read document",
	["IT_DR_SOUND"] = "Drop sound",
	["IT_EX_DOWNLOAD"] = "Download",
	["IT_EX_DOWNLOAD_TT"] = [=[|cffff9900This item is %s messages long and would take at minimum %.1f seconds to be downloaded (in the best condition).

|cff00ff00Click to request %s to send you all the data about this item.

|cffff9900You can't finish a trade if you don't have all the updated information about all items you would receive.]=],
	["IT_EX_DOWNLOADING"] = "Downloading: %0.1f %%",
	["IT_EX_EMPTY"] = "Nothing to trade",
	["IT_EX_EMPTY_DRAG"] = "You can drag and drop items here.",
	["IT_EX_SLOT_DOWNLOAD"] = [=[|rYou don't have the information about this item.

|cff00ff00If the item is not too large, TRP3 will download it automatically from %s.

|cffff9900If it is too large, you can manually request its information with the download button, but keep in mind that it could take some time to be downloaded.]=],
	["IT_EX_TRADE_BUTTON"] = "Open exchange",
	["IT_EX_TRADE_BUTTON_TT"] = "Open the exchange frame to start trading items with this player.",
	["IT_FIELD_NAME"] = "Item name",
	["IT_FIELD_NAME_TT"] = "It's your item name, as it will appear on the tooltip or in item links in the chat frame.",
	["IT_FIELD_QUALITY"] = "Item quality",
	["IT_GAMEPLAY_ATT"] = "Gameplay attributes",
	["IT_INV_ERROR_CANT_DESTROY_LOOT"] = "You can't destroy loot items.",
	["IT_INV_ERROR_CANT_HERE"] = "You can't place items here.",
	["IT_INV_ERROR_FULL"] = "%s is full.",
	["IT_INV_ERROR_MAX"] = "You can't carry any more of %s.",
	["IT_INV_GOT"] = "Received: %s x%d",
	["IT_INV_SCAN_MY_ITEMS"] = "Scan for my items",
	["IT_INV_SHOW_ALL"] = "Show all inventory",
	["IT_INV_SHOW_CONTENT"] = [=[|cffffff00Click:|r Open main container (if exists)
|cffffff00Right-click:|r Open inventory]=],
	["IT_LOOT_ERROR"] = "Can't display loot right now, another loot is currently shown.",
	["IT_NEW_NAME"] = "New item",
	["IT_NEW_NAME_CO"] = "New container",
	["IT_NO_ADD"] = "Prevent manual adding",
	["IT_NO_ADD_TT"] = "Prevent the player to manually adding the item to their inventory. Then it can only be added or looted through workflows.",
	["IT_ON_USE"] = "On use",
	["IT_ON_USE_TT"] = [=[This workflow will be triggered when the player uses this item.

|cffff9900Note:|r If you want to have more workflows for this item, you can convert it to Expert mode through the Databases view (by right-clicking on it and select |cff00ff00Convert to Expert mode|r).]=],
	["IT_PU_SOUND"] = "Pick up sound",
	["IT_PU_SOUND_1183"] = "Bag",
	["IT_PU_SOUND_1184"] = "Book",
	["IT_PU_SOUND_1185"] = "Cloth",
	["IT_PU_SOUND_1186"] = "Food",
	["IT_PU_SOUND_1187"] = "Herb",
	["IT_PU_SOUND_1188"] = "Chain",
	["IT_PU_SOUND_1189"] = "Meat",
	["IT_PU_SOUND_1190"] = "Metal large",
	["IT_PU_SOUND_1191"] = "Metal small",
	["IT_PU_SOUND_1192"] = "Paper",
	["IT_PU_SOUND_1193"] = "Ring",
	["IT_PU_SOUND_1194"] = "Rock",
	["IT_PU_SOUND_1195"] = "Small chain",
	["IT_PU_SOUND_1196"] = "Wand",
	["IT_PU_SOUND_1197"] = "Liquid",
	["IT_PU_SOUND_1198"] = "Wood small",
	["IT_PU_SOUND_1199"] = "Wood large",
	["IT_PU_SOUND_1221"] = "Gems",
	["IT_QUEST"] = "Quest flag",
	["IT_QUEST_TT"] = [=[Adds a marker to the item icon to indicates that using this item should start a quest.

|cffff7700Like others display attributes, it's just a visual flag and it's not required for your item to really be able to start a quest.]=],
	["IT_QUICK_EDITOR"] = "Quick item creation",
	["IT_QUICK_EDITOR_EDIT"] = "Quick item edition",
	["IT_SOULBOUND_TT"] = "This item will be bound to the player when put in their inventory and cannot be exchanged or dropped on the ground.",
	["IT_STACK"] = "Stackable",
	["IT_STACK_COUNT"] = "Max units per stack",
	["IT_STACK_COUNT_TT"] = "Sets the maximum units that can be stacked in a same container slot. Should be greated than 1.",
	["IT_STACK_TT"] = "Allow units for this item to be stacked in a same container slot.",
	["IT_TRIGGER_ON_DESTROY"] = "On stack destroy",
	["IT_TRIGGER_ON_DESTROY_TT"] = [=[Triggered when the player destroys a stack of this item (drags & drops it out of their inventory and confirms the destruction).|cffff9900

It is triggered once per stack, and just before the actual stack destruction (so counting the item units in inventory in this workflow will still count the stack).]=],
	["IT_TRIGGER_ON_USE"] = "On use",
	["IT_TRIGGER_ON_USE_TT"] = [=[Triggered each time the player use this item.

|cff00ff00Don't forget to make your item usable in the main tab.]=],
	["IT_TT_DESCRIPTION"] = "Tooltip description",
	["IT_TT_DESCRIPTION_TT"] = [=[It's your item description.

|cff00ff00It shouldn't be a wall of text here, try to stay concise.

If your item is usable, try to give hints here to how it should be used.]=],
	["IT_TT_LEFT"] = "Tooltip left custom text",
	["IT_TT_LEFT_TT"] = [=[It's a free text that will be in the tooltip, bellow the item name.

|cff00ff00A good example of information to put there is the item type (Armor, clothe, weapon, potion ...).]=],
	["IT_TT_REAGENT"] = "Crafting reagent flag",
	["IT_TT_REAGENT_TT"] = [=[Shows the "Crafting reagent" line in the tooltip.

|cffff7700Like others display attributes, it's just a visual flag and it's not required for your item to really be a crafting reagent.]=],
	["IT_TT_RIGHT"] = "Tooltip right custom text",
	["IT_TT_RIGHT_TT"] = [=[It's a free text that will be in the tooltip, right to the left custom text.

|cff00ff00A good example of information to put there would be a precision of the item type you put in the left custom text.

For example if you put Armor as left custom text you could precise here Helmet or Gloves.]=],
	["IT_TT_VALUE"] = "Item value",
	["IT_TT_VALUE_FORMAT"] = "Item value (in %s)",
	["IT_TT_VALUE_TT"] = [=[This value will be informed on the tooltip extension (hold Alt) or during transactions.

|cffff7700If you think that this item is invaluable, please leave 0. Zero doesn't mean that is has no value, it means that the value is undefined.]=],
	["IT_TT_WEIGHT"] = "Item weight",
	["IT_TT_WEIGHT_FORMAT"] = "Item weight (in grams)",
	["IT_TT_WEIGHT_TT"] = [=[The weight influences the total weight of the container.

|cffff7700Please enter the value in GRAMS, as it will be converted to the user selected unit on display.]=],
	["IT_UNIQUE_COUNT"] = "Max units",
	["IT_UNIQUE_COUNT_TT"] = "Sets the maximum units that a character can possessed. Should be greater than 0.",
	["IT_UNIQUE_TT"] = "When active, the maximum item units that can be possessed by a character will be limited.",
	["IT_USE"] = "Usable",
	["IT_USE_TEXT"] = "Usage text",
	["IT_USE_TEXT_TT"] = "This text, explaining the effect for using this item, will appear in the tooltip.",
	["IT_USE_TT"] = [=[Allow this item to be usable.

|cff00ff00You can configure the item use effect in the 'Workflow' tab of this editor.]=],
	["IT_WARNING_1"] = "You should not make an item both stackable and craftable. (%s)",
	["IT_WARNING_2"] = "You should not make a stackable container. (%s)",
	["IT_WEARABLE"] = "Wearable",
	["IT_WEARABLE_TT"] = [=[Enables this item for the inspection feature and allows you to precisely place it on your character.

|cffff9900If this flag is checked people will be able to see this item on your inventory if they inspect you, even if you don't configure the item position.]=],
	["ITEM_ID"] = "Item ID",
	["LOOT"] = "Loot",
	["LOOT_CONTAINER"] = "Loot container",
	["LOOT_DISTANCE"] = "You moved too far from the loot point.",
	["MODE_EXPERT"] = "Expert",
	["MODE_NORMAL"] = "Normal",
	["MODE_QUICK"] = "Quick",
	["NEW_EXTENDED_VERSION"] = "|cffff9900A new version for TRP3:Extended is available (%s). |cff00ff00Go check it out on Curse!",
	["NPC_EMOTES"] = "emotes",
	["NPC_SAYS"] = "says",
	["NPC_WHISPERS"] = "whispers",
	["NPC_YELLS"] = "yells",
	["OP_ADD_TEST"] = "Add test",
	["OP_AND"] = "AND",
	["OP_AND_SWITCH"] = "Switch to AND",
	["OP_BOOL"] = "Boolean value",
	["OP_BOOL_FALSE"] = "FALSE",
	["OP_BOOL_TRUE"] = "TRUE",
	["OP_COMP_EQUALS"] = "is equal to",
	["OP_COMP_GREATER"] = "is greater than",
	["OP_COMP_GREATER_OR_EQUALS"] = "is greater than or equal to",
	["OP_COMP_LESSER"] = "is lesser than",
	["OP_COMP_LESSER_OR_EQUALS"] = "is lesser than or equal to",
	["OP_COMP_NEQUALS"] = "is not equal to",
	["OP_COMPA_SEL"] = "Comparator selection",
	["OP_CONFIGURE"] = "Configure",
	["OP_CURRENT"] = "Current value",
	["OP_CURRENT_TT"] = "Prints in the chat frame the evaluation of this operand based on the current situation.",
	["OP_DIRECT_VALUE"] = "Direct value",
	["OP_EVAL_VALUE"] = "Evaluated value",
	["OP_FAIL"] = "Failure message",
	["OP_FAIL_TT"] = "This message will be displayed if the condition fails. Leave empty if you don't want to show any message.",
	["OP_FAIL_W"] = "Failure workflow (Expert)",
	["OP_FAIL_W_TT"] = [=[If this condition fails, this workflow will be called. That's a way for making an 'else' in a condition.

|cffff9900Please note that this feature is performance heavy and should be used with caution. The called workflow must exist in the same object.

|cffff0000Do NEVER, ever, create a cycle in called workflow (e.g. a workflow A calling a workflow B calling again the workflow A), even using delays!]=],
	["OP_NUMERIC"] = "Numeric value",
	["OP_OP_CHAR_ACHIEVEMENT"] = "Achievement",
	["OP_OP_CHAR_ACHIEVEMENT_ACC"] = "Account",
	["OP_OP_CHAR_ACHIEVEMENT_ACC_TT"] = "Checks if any character from this account has completed the achievement",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR"] = "Character",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR_TT"] = "Checks if the current character has completed the achievement",
	["OP_OP_CHAR_ACHIEVEMENT_ID"] = "Achievement ID",
	["OP_OP_CHAR_ACHIEVEMENT_ID_TT"] = "The numeric ID of the achievement you want to check.",
	["OP_OP_CHAR_ACHIEVEMENT_PREVIEW"] = "%s completed by |cffff9900%s",
	["OP_OP_CHAR_ACHIEVEMENT_TT"] = "Checks if the account has completed the specified achievement.",
	["OP_OP_CHAR_ACHIEVEMENT_WHO"] = "Completed by",
	["OP_OP_CHAR_CAM_DISTANCE"] = "Camera distance",
	["OP_OP_CHAR_CAM_DISTANCE_TT"] = "The camera distance from the player. 0 if in first person view.",
	["OP_OP_CHAR_FACING"] = "Character facing",
	["OP_OP_CHAR_FACING_TT"] = [=[Returns the player's orientation (in radians, 0 = north, values increasing counterclockwise).

|cffff9900Indicates the direction the player model is (normally) facing and in which the player will move if he begins walking forward, not the camera orientation.]=],
	["OP_OP_CHAR_FALLING"] = "Character is falling",
	["OP_OP_CHAR_FALLING_TT"] = "Returns whether the player's character is currently plummeting to their doom.",
	["OP_OP_CHAR_FLYING"] = "Character is flying",
	["OP_OP_CHAR_FLYING_TT"] = "Checks if the character is flying.",
	["OP_OP_CHAR_INDOORS"] = "Character is indoors",
	["OP_OP_CHAR_INDOORS_TT"] = "Checks if the character is indoors.",
	["OP_OP_CHAR_MINIMAP"] = "Minimap text",
	["OP_OP_CHAR_MINIMAP_TT"] = [=[Returns the minimap zone text.

The game event "MINIMAP_ZONE_CHANGED" is triggered, when the text changes. So you can test it in a game event link in a campaign or a quest.]=],
	["OP_OP_CHAR_MOUNTED"] = "Character is mounted",
	["OP_OP_CHAR_MOUNTED_TT"] = "Checks if the character is on a mount.",
	["OP_OP_CHAR_RESTING"] = "Character is resting",
	["OP_OP_CHAR_RESTING_TT"] = "Checks if the character is resting. You are resting if you are in an Inn or a Major City like Ironforge or Orgrimmar.",
	["OP_OP_CHAR_STEALTH"] = "Character is stealthed",
	["OP_OP_CHAR_STEALTH_TT"] = "Checks if the character is stealthed.",
	["OP_OP_CHAR_SUBZONE"] = "Sub-zone name",
	["OP_OP_CHAR_SUBZONE_TT"] = [=[The sub-zone name where the character currently is.

|cffff9900Warning: The text depends on the client locale.]=],
	["OP_OP_CHAR_SWIMMING"] = "Character is swimming",
	["OP_OP_CHAR_SWIMMING_TT"] = "Checks if the character is swimming. They do not need to be underwater.",
	["OP_OP_CHAR_ZONE"] = "Zone name",
	["OP_OP_CHAR_ZONE_TT"] = [=[The zone name where the character currently is.

|cffff9900Warning: The text depends on the client locale.]=],
	["OP_OP_CHECK_EVENT_VAR"] = "Event argument string value",
	["OP_OP_CHECK_EVENT_VAR_N"] = "Event argument number value",
	["OP_OP_CHECK_EVENT_VAR_N_PREVIEW"] = "%s-th event argument |cff00ff00(number)",
	["OP_OP_CHECK_EVENT_VAR_N_TT"] = [=[Checks the n-th argument of the event triggering this condition (if any).

Interpreted as a number.

If does not exists or can't be interpreted, returns 0.]=],
	["OP_OP_CHECK_EVENT_VAR_PREVIEW"] = "%s-th event argument |cff00ff00(string)",
	["OP_OP_CHECK_EVENT_VAR_TT"] = [=[Checks the n-th argument of the event triggering this condition (if any).

Interpreted as a string.

If does not exists or can't be interpreted, returns 'nil'.]=],
	["OP_OP_CHECK_VAR"] = "Variable string value",
	["OP_OP_CHECK_VAR_N"] = "Variable numeric value",
	["OP_OP_CHECK_VAR_N_PREVIEW"] = "|cff00ffff%s: |cffff9900(n)|r %s",
	["OP_OP_CHECK_VAR_N_TT"] = [=[Returns the value of a variable, |cff00ff00interpreted as a number|r.

If the variable does not exists, can't be reached or can't be interpreted as a number, returns 0.

|cffff9900As the value depends on runtime, it cannot be previewed.]=],
	["OP_OP_CHECK_VAR_PREVIEW"] = "|cff00ffff%s:|r %s",
	["OP_OP_CHECK_VAR_TT"] = [=[Returns the value of a variable, |cff00ff00interpreted as a string|r.

If the variable does not exists or can't be reached, returns the string 'nil'.

|cffff9900As the value depends on runtime, it cannot be previewed.]=],
	["OP_OP_DISTANCE_CURRENT"] = "Use current position",
	["OP_OP_DISTANCE_ME"] = "Unit distance to player",
	["OP_OP_DISTANCE_ME_TT"] = [=[Returns the distance (in yards) between a unit and the player.

Only works with players.

Returns 0 if unit doesn't exist.

|cffff9900Does not work in instance/battleground/arena since patch 7.1.]=],
	["OP_OP_DISTANCE_POINT"] = "Unit point distance",
	["OP_OP_DISTANCE_POINT_PREVIEW"] = "|cff00ff00%s|r distance from |cff00ff00(%s, %s)",
	["OP_OP_DISTANCE_POINT_TT"] = [=[Returns the distance (in yards) between a unit and a point coordinates.

Only works with players.

Returns 0 if unit doesn't exist.

|cffff9900Does not work in instance/battleground/arena since patch 7.1.]=],
	["OP_OP_DISTANCE_X"] = "X coordinate",
	["OP_OP_DISTANCE_Y"] = "Y coordinate",
	["OP_OP_INV_COUNT"] = "Item units count",
	["OP_OP_INV_COUNT_ANY"] = "Any item",
	["OP_OP_INV_COUNT_PREVIEW"] = "%s units in |cffff9900%s",
	["OP_OP_INV_COUNT_TT"] = [=[|cff00ff00The number of units of an item the player possesses in his inventory.

Leave the ID empty to count for all items.]=],
	["OP_OP_INV_WEIGHT"] = "Container total weight",
	["OP_OP_INV_WEIGHT_PREVIEW"] = "Total weight of |cffff9900%s",
	["OP_OP_INV_WEIGHT_TT"] = "|cff00ff00The current total weight of a container (its own weight plus the content).",
	["OP_OP_QUEST_NPC"] = "Unit is campaign NPC",
	["OP_OP_QUEST_NPC_TT"] = "|cff00ff00Returns whether a unit is a customized NPC in the currently active campaign.",
	["OP_OP_QUEST_OBJ"] = "Quest objective",
	["OP_OP_QUEST_OBJ_ALL"] = "Quest all objectives",
	["OP_OP_QUEST_OBJ_ALL_PREVIEW"] = "%s all obj. done",
	["OP_OP_QUEST_OBJ_ALL_TT"] = "Returns whether all possible quest objectives are completed. So all objectives also has to be revealed.",
	["OP_OP_QUEST_OBJ_CURRENT"] = "Quest current objectives",
	["OP_OP_QUEST_OBJ_CURRENT_PREVIEW"] = "%s current obj. done",
	["OP_OP_QUEST_OBJ_CURRENT_TT"] = "Returns whether all currently revealed quest objectives are completed.",
	["OP_OP_QUEST_OBJ_PREVIEW"] = "Objective %s from %s",
	["OP_OP_QUEST_OBJ_TT"] = "Return the completion (true or false) for a quest objective. If the campaign, quest or the objective is not yet revealed, returns false.",
	["OP_OP_QUEST_STEP"] = "Quest current step",
	["OP_OP_QUEST_STEP_PREVIEW"] = "%s current step",
	["OP_OP_QUEST_STEP_TT"] = "Return the current quest step ID. If the quest is not revealed or has no current step, returns nil.",
	["OP_OP_RANDOM"] = "Random",
	["OP_OP_RANDOM_FROM"] = "From",
	["OP_OP_RANDOM_PREVIEW"] = "Random number between |cff00ff00%s|r and |cff00ff00%s|r.",
	["OP_OP_RANDOM_TO"] = "To",
	["OP_OP_RANDOM_TT"] = "Random number (integer) between two bounds.",
	["OP_OP_TIME_HOUR"] = "Time: Hour",
	["OP_OP_TIME_HOUR_TT"] = "The current hour of the day, server time.",
	["OP_OP_TIME_MINUTE"] = "Time: Minute",
	["OP_OP_TIME_MINUTE_TT"] = "The current minute of the hour, server time.",
	["OP_OP_UNIT_CLASS"] = "Unit class",
	["OP_OP_UNIT_CLASS_TT"] = "|cff00ff00The unit class IN ENGLISH LOWER CASE, as returned by the second arguments of UnitClass.",
	["OP_OP_UNIT_CLASSIFICATION"] = "Unit classification",
	["OP_OP_UNIT_CLASSIFICATION_TT"] = [=[|cff00ff00The unit classification IN ENGLISH LOWER CASE. Example: normal, elite, rare, worldboss, minus...

Always returns normal for players.]=],
	["OP_OP_UNIT_CREATURE_FAMILY"] = "Unit creature family",
	["OP_OP_UNIT_CREATURE_FAMILY_TT"] = "|cff00ff00The creature family of the unit. Only works on beasts and demons. Example: Crab, Wolf, Succubus, Voidwalker...",
	["OP_OP_UNIT_CREATURE_TYPE"] = "Unit creature type",
	["OP_OP_UNIT_CREATURE_TYPE_TT"] = "|cff00ff00The creature type of the unit. Example: Beast, Dragonkin, Elemental...",
	["OP_OP_UNIT_DEAD"] = "Unit is dead",
	["OP_OP_UNIT_DEAD_TT"] = "|cff00ff00Returns whether a unit is either dead or a ghost.",
	["OP_OP_UNIT_DISTANCE_INSPECT"] = "Unit is near (inspection)",
	["OP_OP_UNIT_DISTANCE_INSPECT_TT"] = "|cff00ff00Returns whether a unit is close enough for inspection (28 yards).",
	["OP_OP_UNIT_DISTANCE_TRADE"] = "Unit is near (trade)",
	["OP_OP_UNIT_DISTANCE_TRADE_TT"] = "|cff00ff00Returns whether a unit is close enough for trading (11.11 yards).",
	["OP_OP_UNIT_EXISTS"] = "Unit exists",
	["OP_OP_UNIT_EXISTS_TT"] = [=[|cff00ff00Returns whether a unit exists.

|rA unit 'exists' if it can be referenced by the player; e.g. target exists if the player has a target, npc exists if the player is currently interacting with an NPC, etc.]=],
	["OP_OP_UNIT_FACTION"] = "Unit faction",
	["OP_OP_UNIT_FACTION_TT"] = "|cff00ff00The unit faction IN ENGLISH LOWER CASE.",
	["OP_OP_UNIT_GUILD"] = "Unit guild name",
	["OP_OP_UNIT_GUILD_RANK"] = "Unit guild rank",
	["OP_OP_UNIT_GUILD_RANK_TT"] = "|cff00ff00The guild rank of the unit (if the unit has a guild).",
	["OP_OP_UNIT_GUILD_TT"] = "|cff00ff00The unit guild name (if any).",
	["OP_OP_UNIT_HEALTH"] = "Unit health",
	["OP_OP_UNIT_HEALTH_TT"] = "|cff00ff00The unit's current amount of health (hit points).",
	["OP_OP_UNIT_ID"] = "Unit ID",
	["OP_OP_UNIT_ID_TT"] = "|cff00ff00The unit id in the form |cff00ff00'player-realm'|r, as returned by UnitFullName. Ensure that there is always a realm part.",
	["OP_OP_UNIT_ISPLAYER"] = "Unit is player",
	["OP_OP_UNIT_ISPLAYER_TT"] = "|cff00ff00Returns whether the unit is a player.",
	["OP_OP_UNIT_LEVEL"] = "Unit level",
	["OP_OP_UNIT_LEVEL_TT"] = "|cff00ff00The level of the unit.",
	["OP_OP_UNIT_NAME"] = "Unit name",
	["OP_OP_UNIT_NAME_TT"] = [=[|cff00ff00The unit name, as returned by the first parameters of UnitName.

|rWhen used on a player, it could equal |cff00ff00'player'|r or |cff00ff00'player-realm'|r. So if you want to be sure to have the form |cff00ff00'player-realm'|r use the |cff00ff00'Unit ID'|r operand.]=],
	["OP_OP_UNIT_NPC_ID"] = "Unit NPC ID",
	["OP_OP_UNIT_NPC_ID_TT"] = "|cff00ff00The NPC ID, as determined by UnitGUID. Only works with NPC.",
	["OP_OP_UNIT_POSITION_X"] = "Unit x position",
	["OP_OP_UNIT_POSITION_X_TT"] = [=[Returns the X coordinate of a unit.

Only works with players.

|cffff9900Does not work in instance/battleground/arena since patch 7.1.]=],
	["OP_OP_UNIT_POSITION_Y"] = "Unit y position",
	["OP_OP_UNIT_POSITION_Y_TT"] = [=[Returns the Y coordinate of a unit.

Only works with players.

|cffff9900Does not work in instance/battleground/arena since patch 7.1.]=],
	["OP_OP_UNIT_RACE"] = "Unit race",
	["OP_OP_UNIT_RACE_TT"] = [=[|cff00ff00The unit race IN ENGLISH LOWER CASE, as returned by the second arguments of UnitRace.

So it's Scourge for Undead.]=],
	["OP_OP_UNIT_SEX"] = "Unit gender",
	["OP_OP_UNIT_SEX_TT"] = [=[|cff00ff00The unit gender index. 2 = Male, 3 = Female. 1 is for neutral or unknown.

|cffffff00Returned as a STRING.]=],
	["OP_OP_UNIT_SPEED"] = "Unit speed",
	["OP_OP_UNIT_SPEED_TT"] = "|cff00ff00The current unit speed in yards per second. Walking is 2.5 and running without buff is 7.",
	["OP_OR"] = "OR",
	["OP_OR_SWITCH"] = "Switch to OR",
	["OP_PREVIEW"] = "Preview value",
	["OP_REMOVE_TEST"] = "Remove test",
	["OP_STRING"] = "String value",
	["OP_UNIT"] = "Unit type",
	["OP_UNIT_NPC"] = "NPC",
	["OP_UNIT_PLAYER"] = "Player",
	["OP_UNIT_TARGET"] = "Target",
	["OP_UNIT_TEST"] = "Unit test",
	["OP_UNIT_VALUE"] = "Unit value",
	["QE_ACTION"] = "Quest action",
	["QE_ACTION_NO_CURRENT"] = "You don't have any active campaigns. You should activate a campaign before trying to do an action..",
	["QE_ACTIONS_TYPE_INTERRACT"] = "Interact",
	["QE_ACTIONS_TYPE_LISTEN"] = "Listen",
	["QE_ACTIONS_TYPE_LOOK"] = "Inspect",
	["QE_ACTIONS_TYPE_TALK"] = "Talk",
	["QE_AUTO_REVEAL"] = "Auto reveal",
	["QE_AUTO_REVEAL_TT"] = "Reveal the quest in the quest log when the campaign is started.",
	["QE_AUTORESUME_CONFIRM"] = [=[An effect was called for the campaign |cff00ff00[%s]|r.

Activate this campaign ?
(If you already have an active campaign, it will be paused and your progress will be saved.)]=],
	["QE_BUTTON"] = "Open quest log",
	["QE_CAMPAIGN"] = "Campaign",
	["QE_CAMPAIGN_CURRENT"] = "Current campaign",
	["QE_CAMPAIGN_CURRENT_NO"] = "No active campaign.",
	["QE_CAMPAIGN_EMPTY"] = "This campaign has no quest.",
	["QE_CAMPAIGN_FULL"] = "Finished",
	["QE_CAMPAIGN_LIST"] = "%s available campaigns",
	["QE_CAMPAIGN_NO"] = "Not started yet",
	["QE_CAMPAIGN_NOQUEST"] = [=[No quest revealed yet for this campaign.
Take a look at the campaign description to unlock your first quest.]=],
	["QE_CAMPAIGN_PAUSE"] = "Pausing current campaign.",
	["QE_CAMPAIGN_RESET"] = "Reset campaign",
	["QE_CAMPAIGN_RESUME"] = "Resuming campaign |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_START"] = "Starting campaign |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_START_BUTTON"] = "Start or resume campaign",
	["QE_CAMPAIGN_UNSTARTED"] = [=[You haven't started this campaign yet.
Click on the top right "Start" button to start it.]=],
	["QE_CAMPAIGNS"] = "Campaigns",
	["QE_COMPLETED"] = "Completed",
	["QE_DESCRIPTION"] = "Quest summary",
	["QE_DESCRIPTION_TT"] = "This brief summary will be visible on the quest page, in the quest log.",
	["QE_FAILED"] = "Failed",
	["QE_LINKS_ON_OBJECTIVE"] = "On objective completed",
	["QE_LINKS_ON_OBJECTIVE_TT"] = [=[Triggered each time the player complete an objective for this quest.

|cff00ff00It's a good place to check if all objectives has been completed and reveal the next quest.]=],
	["QE_LINKS_ON_START"] = "On quest start",
	["QE_LINKS_ON_START_TT"] = [=[Triggered |cff00ff00once|r when the player start your quest, by unlocking it in the quest log.

|cff00ff00This is a good place to go to the first quest step.]=],
	["QE_MACRO"] = "Create macro",
	["QE_MACRO_MAX"] = "You can't have more macros. Please free a macro slot before trying again.",
	["QE_MACRO_TT"] = "Creates a macro for this action type and puts the macro on your cursor to be placed on any action bar.",
	["QE_NAME"] = "Quest name",
	["QE_NAME_NEW"] = "New quest",
	["QE_NAME_TT"] = "It's your quest name, as it will appear on the quest log.",
	["QE_NEW"] = "New quest revealed",
	["QE_NOACTION_ACTION"] = "There is nothing to do.",
	["QE_NOACTION_LISTEN"] = "You don't hear anything special.",
	["QE_NOACTION_LOOK"] = "You don't see anything special.",
	["QE_NOACTION_TALK"] = "There is nothing to say.",
	["QE_NPC"] = "Campaign NPC",
	["QE_OBJ"] = "Quest objectives",
	["QE_OBJ_ADD"] = "Add objective",
	["QE_OBJ_AUTO"] = "Auto reveal",
	["QE_OBJ_AUTO_TT"] = "Automatically reveal this objective when the quest is unlocked in the quest log.",
	["QE_OBJ_ID"] = "Objective ID",
	["QE_OBJ_ID_TT"] = "This is your objective ID. You can't have two objectives with the same ID in a same quest.",
	["QE_OBJ_NO"] = "No quest objective",
	["QE_OBJ_REMOVE"] = "Remove this quest objective?",
	["QE_OBJ_SINGULAR"] = "Quest objective",
	["QE_OBJ_TEXT"] = "Objective text",
	["QE_OBJ_TT"] = [=[Quest objectives are hints for the player. Accomplishing all objectives does not automatically complete the quest. You decide when objectives are shown so you can have secret objective in your quest.
|cffff9900Objectives are always ordered by ID in the quest log, and not following their reveal order.]=],
	["QE_OVERVIEW"] = "Quest overview",
	["QE_PREVIOUS_STEP"] = "Previously",
	["QE_PROGRESS"] = "Progression",
	["QE_PROGRESS_TT"] = [=[This parameter flags this quest as part of the campaign progression (even if the quest is not revealed).

The campaign progression is a % indicator in the quest log showing the global campaign progression (% of completed quests / total quests).

|cff00ff00Typically this should be checked, except for side/secondary quests.]=],
	["QE_QUEST"] = "Quest",
	["QE_QUEST_LIST"] = "Quests for this campaign",
	["QE_QUEST_OBJ_AND_HIST"] = "Objectives and history",
	["QE_QUEST_OBJ_FINISHED"] = "|cffffff00Objective complete: |cff00ff00%s",
	["QE_QUEST_OBJ_REVEALED"] = "|cffffff00New objective: |cff00ff00%s",
	["QE_QUEST_OBJ_UPDATED"] = "|cffffff00Objective updated: |cff00ff00%s",
	["QE_QUEST_START"] = "Starting quest |cff00ff00[%s]|r.",
	["QE_QUEST_TT_STEP"] = [=[|cffffff00Currently:|r
"%s"]=],
	["QE_QUESTS"] = "Quests",
	["QE_QUESTS_HELP"] = [=[You can add quests to your campaign here. Please note that a quest is not automatically added to the player's quests log when he starts your campaign. You have to start the quests through workflows.
|cffff9900Quests are sorted by ID in the quest log, not by name nor by reveal order.]=],
	["QE_RESET_CONFIRM"] = [=[Reset this campaign?

This will lose all your progression for ALL the quests in this campaign.

Note that you will keep all items you gained through this campaign.]=],
	["QE_ST_AUTO_REVEAL"] = "Initial step",
	["QE_ST_AUTO_REVEAL_TT"] = "Marks this step as the initial step when unlocking the quest in the quest log.",
	["QE_ST_END"] = "Final step",
	["QE_ST_END_TT"] = "Marks this step as the final step for this quest. When the step is reached, the quest will automatically be marked as completed in the quest log.",
	["QE_ST_LINKS_ON_LEAVE"] = "On quest step leave",
	["QE_ST_LINKS_ON_LEAVE_TT"] = "Triggered |cff00ff00everytime|r the player leave this step for another one. This will be triggered before the next step \"On quest step start\" trigger occurs.",
	["QE_ST_LINKS_ON_START"] = "On quest step start",
	["QE_ST_LINKS_ON_START_TT"] = "Triggered |cff00ff00everytime|r the player reachs this step.",
	["QE_ST_POST"] = "Quest log history",
	["QE_ST_PRE"] = "Quest log entry",
	["QE_STEP"] = "Quest steps",
	["QE_STEP_ADD"] = "Add quest step",
	["QE_STEP_CREATE"] = [=[Please enter the step ID. You can't have two steps with the same ID within the same quest.

|cffff9900Please note that the steps will be listed in alphabetical order of IDs here and on the database.

|cff00ff00So it's a good practice to always start your ID by step_# where # is the step number in the quest.]=],
	["QE_STEP_DD_COPY"] = "Copy step content",
	["QE_STEP_DD_PASTE"] = "Paste step content",
	["QE_STEP_DD_REMOVE"] = "Remove step",
	["QE_STEP_EXIST"] = "There is already a step with the ID %s.",
	["QE_STEP_LIST"] = "Steps for this quest",
	["QE_STEP_LIST_CURRENT"] = "Available quests",
	["QE_STEP_LIST_FINISHED"] = "Finished quests",
	["QE_STEP_MISSING"] = "Missing step information.",
	["QE_STEP_NAME_NEW"] = "New quest step",
	["QE_STEP_NO"] = "No quest step",
	["QE_STEP_REMOVE"] = "Remove this step?",
	["QE_STEP_TT"] = [=[Quest are cut down into a list of steps.
Each step can add a text entry to the quest log once reached and another history text once completed.]=],
	["QE_STEPS"] = "Quest steps",
	["QUEST_ID"] = "Quest ID",
	["QUEST_TU_1"] = [=[Quests will often require that |cff00ff00you interact with NPCs or with your environment through actions|r.
There are four types of action: |cff00ff00Listen, look, talk and interact|r.
You can perform an action by |cff00ff00right-clicking on the quest log button on the TRP3 toolbar|r.
But another easier way to do actions is to |cff00ff00create macro for it|r. To help you create the action macros you can use this button.]=],
	["QUEST_TU_2"] = [=[|cff00ff00You can find here a list of all available campaigns.|r
A campaign is a collection of one or more quests.
|cffff9900You can only progress in one campaign at a time|r. For this you must mark this campaign as the active campaign. |cff00ff00You can use the "Start or resume" button to activate or pause a campaign.|r
You won't lose your progression if you switch from one campaign to another.
|cffff9900You can reset your progression in a campaign by right-clicking on it and select Reset campaign. Note that all looted items won't be lost on campaign reset.]=],
	["QUEST_TU_3"] = [=[|cff00ff00You can find here the list of all currently available quests and all finished quests.|r
You can easily see each quest current situation and what are the current objectives.]=],
	["QUEST_TU_4"] = [=[|cff00ff00You can find here the current progression of this quest and all current objectives.|r
You can also see the history of previous steps, in case you forget something.]=],
	["ROOT_CREATED"] = "Created by %s on %s",
	["ROOT_CREATED_BY"] = "Created by",
	["ROOT_CREATED_ON"] = "Created on",
	["ROOT_GEN_ID"] = "Generated ID",
	["ROOT_ID"] = "Object ID",
	["ROOT_SAVED"] = "Last modification by %s on %s",
	["ROOT_TITLE"] = "Root object",
	["ROOT_VERSION"] = "Version",
	["SEC_EFFECT_BLOCKED"] = "Effect(s) blocked",
	["SEC_EFFECT_BLOCKED_TT"] = [=[Due to your current security settings, at least one effect in this item (or its sub-objects) has been secured.

|cffff9900Click to review security for this item.

You can also Ctrl+Right-click on the item in your inventory to configure the security later.]=],
	["SEC_HIGH"] = "High",
	["SEC_HIGH_TT"] = "This item and all of its related objects are secured and don't use any malicious or undesirable effects.",
	["SEC_LEVEL"] = "Security level",
	["SEC_LEVEL_DETAIL"] = "Click to see details of the unsecure scripts used.",
	["SEC_LEVEL_DETAIL2"] = "Click to see details of the unsecure scripts used and configure which ones can be executed.",
	["SEC_LEVEL_DETAILS"] = "Security details",
	["SEC_LEVEL_DETAILS_ACCEPTED"] = "Accepted",
	["SEC_LEVEL_DETAILS_ALL"] = "Switch security for all objects",
	["SEC_LEVEL_DETAILS_ALL_TT"] = "Accept the execution of this effect for all objects, now and in the future.",
	["SEC_LEVEL_DETAILS_BLOCKED"] = "Blocked",
	["SEC_LEVEL_DETAILS_FROM"] = "Always accept when received from %s",
	["SEC_LEVEL_DETAILS_SECURED"] = "This object and all its inner objects are secure!",
	["SEC_LEVEL_DETAILS_THIS"] = "Switch security for this objects",
	["SEC_LEVEL_DETAILS_THIS_TT"] = "Accept the execution of this effect for this object only.",
	["SEC_LEVEL_DETAILS_TT"] = [=[For %s and all its inner objects.
|cffff9900Made by: |cff00ff00%s
|cffff9900Received from: |cff00ff00%s]=],
	["SEC_LOW"] = "Low",
	["SEC_LOW_TT"] = "This item, or one of its related objects, uses one or more unsecure scripts that can have malicious effects.",
	["SEC_MEDIUM"] = "Medium",
	["SEC_MEDIUM_TT"] = "This item, or one of its related objects, uses one or more unsecure scripts that can have undesirable effects.",
	["SEC_MISSING_SCRIPT"] = "Cannot find workflow \"%s\"",
	["SEC_REASON_DISMOUNT"] = "Dismount",
	["SEC_REASON_DISMOUNT_WHY"] = [=[This object could force you to unmount.

|cffff9900It may be undesirable for you... especially if you are on a flying mount!]=],
	["SEC_REASON_MACRO"] = "Execute a macro",
	["SEC_REASON_MACRO_WHY"] = [=[This object could trigger any macro commands.

|cffff0000It may cast spells or consume items (outside of combat). It may also execute any Lua code available to add-ons and affect your inventory, gold, guild, be used in a malicious way to force you so to say something reprehensible by the Blizzard terms of services that can make you banned from the game.

|cff00ff00If blocked, the macro commands will not be executed but printed in the chat frame instead.]=],
	["SEC_REASON_SCRIPT"] = "Lua script",
	["SEC_REASON_SCRIPT_WHY"] = [=[This object could trigger any of the Extended effects.

|cffff0000It may be used in a malicious way to force you so say something reprehensible by the Blizzard terms of services that can make you banned from the game.

|cff00ff00If blocked, the code will still be executed but in a secured environment (for instance, chat effects will be printed only for you and not said by your character).]=],
	["SEC_REASON_SOUND"] = "Playing a sound",
	["SEC_REASON_SOUND_WHY"] = [=[This object could play a sound or a music that will be heard by the TRP3:E users around you.

|cffff9900It may be undesirable for them if the sound is spammed or if the sound is particulary annoying. And if it's the case, they could blame you and block you.

|cff00ff00If blocked, the sound/music will be played only for you.]=],
	["SEC_REASON_TALK"] = "Character talk",
	["SEC_REASON_TALK_WHY"] = [=[This object could force your character to say something (through /say, /yell or any other channel).

|cffff0000It may be used in a malicious way to force you so say something reprehensible by the Blizzard terms of services that can make you banned from the game.

|cff00ff00If blocked, the text will be printed only for you (and not said by your character).]=],
	["SEC_RESOLUTION_ALL"] = "For all objects",
	["SEC_RESOLUTION_AUTHOR"] = "You are the author",
	["SEC_RESOLUTION_THIS_OBJECT"] = "For this object only",
	["SEC_RESOLUTION_WHITELISTED"] = "Whitelisted sender",
	["SEC_SCRIPT_ERROR"] = "Error in workflow %s.",
	["SEC_TT_COMBO"] = "Alt + Right click:|cffff9900 Configure security",
	["SEC_TT_COMBO_2"] = "Configure security",
	["SEC_UNSECURED_WHY"] = "Why is this unsecure?",
	["SET_TT_DETAILS_1"] = "Hold Alt key to show more",
	["SET_TT_DETAILS_2"] = "%s warning(s)",
	["SET_TT_OLD"] = "This item has been created with an older version of Extended (v %s). Incompatibilities may occur.",
	["SET_TT_SECURED"] = [=[Some potentially malicious effects have been secured for your safety.
|cff00ff00Alt + Right click for more details.]=],
	["SET_TT_SECURED_2"] = "Some potentially malicious effects have been secured for your safety.",
	["SET_TT_SECURED_2_1"] = "See more details.",
	["SPECIFIC"] = "Specific object",
	["SPECIFIC_INNER_ID"] = "Inner ID",
	["SPECIFIC_MODE"] = "Mode",
	["SPECIFIC_PATH"] = "Root path",
	["TB_TOOLS"] = "Extended objects database",
	["TB_TOOLS_TT"] = "Create your own items and quests.",
	["TU_AC_1_TEXT"] = [=[|cff00ff00Action links|r is where you can link a workflow to a quest action.
There are four types of quest actions that a player can perform: |cff00ff00listen, look, talk and interact|r.
You can define action links in the campaign, quest or quest step level.]=],
	["TU_AC_2"] = "Actions evaluation",
	["TU_AC_2_TEXT"] = [=[Each action can be conditionned by |cff00ff00Ctrl+click on it|r.
When the player performs an action, |cff00ff00all action links will be evaluated in a certain order|r beginning at the quest step level, then the quest and finally the campaign.
If a link can be used (if it's from the good action type and has no condition or the condition is met), then the associated workflow will be executed and |cffff9900the add-on will stop searching for another link|r.]=],
	["TU_CO_1_TEXT"] = [=[A container is an item that can contain other items.
To open a container, you can |cff00ff00double-click|r on it in the inventory.
It is possible to have a container that is also usable (by right-click). It isn't two exclusive concepts.
|cffff9900Please note that for now, you can only trade with players containers that are empty, or that contains only items that are inner objects of the container. Please see the inner object tab for more information.]=],
	["TU_CS_1_TEXT"] = [=[With |cff00ff00cutscenes|r you will be able to create a real narative experience for the player.
Cutscenes uses the layout already used in the Storyline add-on.]=],
	["TU_CS_2_TEXT"] = [=[A cutscene is a list of step that will be played one after another.
The cutscene takes place in a scene with two characters talking to each other.
In each step you will be able to completely reconfigure the scene.]=],
	["TU_CS_3_TEXT"] = [=[The step text will be cut down into sub-steps when you enter a double line break. But these sub-steps will share the same step configuration.
So you will typically change step when you want to change which character is speaking (with the "dialog direction" attribute).
When you want to change a step attribute, |cff00ff00be sure to have activated the parameter.]=],
	["TU_CS_4"] = "Cutscenes and workflows",
	["TU_CS_4_TEXT"] = [=[You can link a workflow to a step. It will be executed a the start of the step (or first sub-step).
If this workflow contains a Loot effect, you can check the "Wait for loot" option to force the player to loot before the cutscene can continue.]=],
	["TU_CS_5"] = "Preview",
	["TU_CS_5_TEXT"] = [=[You can preview your cutscene at any moment.
|cffff9900Linked workflows won't be executed in preview mode.]=],
	["TU_DB_1_TEXT"] = [=[|cff00ff00Welcome to the database tutorial.|r
This is the database, where all the objects are stored.
An object contains all information about an item, a document, a campaign/quest/step or a cutscene.]=],
	["TU_DB_2"] = "Database types",
	["TU_DB_2_TEXT"] = [=[There are four tabs, filtering the entire database.
|cff00ff00My database:|r it contains all the objects you created.
|cff00ff00Players database:|r it contains all objects you received (or imported) from other players.
|cff00ff00Backers database:|r it contains the objects created by the Kickstarter backers and the TRP3 team.
|cff00ff00Full database:|r it contains all the previous databases content.]=],
	["TU_DB_3_TEXT"] = [=[You can filter each database to find a specific object by changing the search filters and select |cff00ff00Search|r.
Without filters, the objects list follows a hierarchical presentation.
But if you filter the list, the results are shown with a flat presentation.
Here we just filtered the list by object type to show only the |cffff9900items|r.
To exit the search mode, click on the |cff00ff00Clear|r button in the filters panel.]=],
	["TU_DB_4"] = "Root and inner objects",
	["TU_DB_4_TEXT"] = [=[There are two kind of objects: |cff00ff00root objects and inner objects|r.
|cff00ff00Inner objects|r are always stored in a |cff00ff00root object|r (even if they can be inside another inner object all the way to the root).
When you exchange an item with someone, all the root object information is actually exchanged, even if the item is only an inner object.
So for now, just remember that using inner objects is a good way to link objects that always should be exchange together.
Examples:
- An item showing a document: the document would be an inner object of the root item object.
- A campaign with 4 quests: each quest is actually an inner object of the root campaign object.
- A gun item firing bullet item: the bullet object would be an inner object of the root gun object.
But don't worry, it will come naturally !]=],
	["TU_DB_5"] = "Root objects",
	["TU_DB_5_TEXT"] = [=[Only items and campaigns can be root objects.

You can use these two buttons to create an new item or campaign.]=],
	["TU_DB_6"] = "Create an item",
	["TU_DB_6_TEXT"] = [=[When creating a new item, you can select a template or use the quick creation mode.
The |cff00ff00quick creation|r mode allows you to easily create a first item, but the possibilities are limited. Now that you can always go to normal creation mode afterward.
Use the |cff00ff00blank item|r template if you want to start from scratch without any example.
The |cff00ff00document item|r template will actually create two objects: an item object and its document inner object. It will also configure the item to show the document when used.
The |cff00ff00container item|r template will create and configure an item object to be used as a container.
Finally, the |cff00ff00create from|r allows you to duplicate an existing item.]=],
	["TU_DB_7"] = "Object line",
	["TU_DB_7_TEXT"] = "Each line represents an object. You can click on it to edit it or right click to perform various actions.",
	["TU_EL_1_TEXT"] = [=[The event links tab is the place where you can |cff00ff00link your workflows to events|r.
|cffff9900Indeed, workflows aren't executed automatically by default!|r So you have to link them to an event in order to have them executed when that event occurs.
We have here two type of events: |cff00ff00Object events and Game events|r.]=],
	["TU_EL_2_TEXT"] = [=[|cff00ff00Object events|r are event proper to how Total RP 3 works.
The list of possible events is fixed and depends on the type of the object (item, quest ..etc).
You can link one event to only one workflow. But the same workflow can be linked to multiple events.]=],
	["TU_EL_3_TEXT"] = [=[|cff00ff00Game events|r are events triggered by the game when something happens.
Each link you add will link a game event to a workflow. Each time the event occurs, the workflow will be executed.
|cff00ff00You can add a condition to the link by Ctrl+click on it.|r The condition will have access to the event arguments to be tested.
For example if you listen to the event of casting a spell, you will be able in the condition to test which spell is casted.
|cffff9900There is a large list of game event, thus it wouldn't be for us to list them all in the add-on. We suggest you to consult webwite like wowwiki.
http://wowwiki.wikia.com/wiki/Event_API]=],
	["TU_EL_3_TEXT_V2"] = [=[|cff00ff00Game events|r are events triggered by the game when something happens.

Each link you add will link a game event to a workflow. Each time the event occurs, the workflow will be executed.

|cff00ff00You can add a condition to the link by Ctrl+click on it.|r The condition will have access to the event arguments to be tested.
For example if you listen to the event of casting a spell, you will be able in the condition to test which spell is casted.

|cffff9900There is a large list of game event, thus it wouldn't be for us to list them all in the add-on. We suggest you to consult webwite like wowwiki.
http://wowwiki.wikia.com/wiki/Event_API

|rIn addition to the game's events, |cff00ff00Total RP 3: Extended offers a couple of custom events|r detailed on the addon wiki.
|cff00ff00https://github.com/Ellypse/Total-RP-3-Extended/wiki|r]=],
	["TU_EL_4_TEXT"] = "|cff00ff00Game events|r are only available for campaigns, quests and quest steps.",
	["TU_IT_1_TEXT"] = [=[|cff00ff00Welcome to the item creation tutorial.|r
An item is an object that you can store in your character's inventory (or drop it on the ground).
You are here on the Main tab where you can define all the basic attributes for your item.]=],
	["TU_IT_2"] = "Display attributes",
	["TU_IT_2_TEXT"] = [=[The display attributes are purely cosmetic and don't have any "gameplay" effect.
It's all about the attributes needed for the item tooltip and the item icon.]=],
	["TU_IT_3"] = "Free notes",
	["TU_IT_3_TEXT"] = [=[You can write down notes to help you remember what do you want to do with your item.
These notes can also help others that would want to start an item based on yours.]=],
	["TU_IT_4"] = "Gameplay attributes",
	["TU_IT_4_TEXT"] = [=[The gameplay attributes have some effects on the gameplay.
Two attributes are important: |cff00ff00Usable|r and |cff00ff00Container|r as checking them will display the |cff00ff00Workflow|r and |cff00ff00Container|r tabs.]=],
	["TU_TITLE"] = "Tutorial",
	["TU_WO_1_TEXT"] = [=[|cff00ff00Welcome to the workflow creation tutorial.|r
A workflow is the mechanism that can bring life to your creation. It's here that you will be able to play effects like showing text, playing a sound or looting an item to the player.]=],
	["TU_WO_2"] = "Workflow list",
	["TU_WO_2_TEXT"] = [=[On the left you have the |cff00ff00workflows list|r.
You can remove, rename or copy/paste a workflow by right-clicking on it.
|cffff9900Note: If you are here when editing an item in "normal mode", you won't see a list of workflows but only a single "On use" workflow for the item. If you want to be able to use multiple workflows for an item, you can convert this item to "Expert mode" by right-clicking on it in the databases view.]=],
	["TU_WO_3_TEXT"] = [=[Here is a list of all the workflow elements.
An element can be an effect, a delay or a condition.
The element order is important because they will be executed sequentially during the workflow execution.
You can change the element order by using the arrows at the top right of each elements.]=],
	["TU_WO_4"] = "Add an effect",
	["TU_WO_4_TEXT"] = [=[Effects are things like "playing a sound", "displaying a text" or "start a cutscene".
There are a LOT of effects, each are explained in their own tooltip!]=],
	["TU_WO_5"] = "Add a condition",
	["TU_WO_5_TEXT"] = [=[Conditions allow you to |cff00ff00test values in order to stop the workflow execution.|r
|cffff9900If the condition is not met, the workflow execution won't continue further.|r
A condition is composed of a series of tests linked together by the OR or AND operator.
Each test is a values comparision. For example: "The target's health is lesser than 500", "The player is not dead" or "The player has more than 3 units of item [xxx] in his inventory".]=],
	["TU_WO_6"] = "Add a delay",
	["TU_WO_6_TEXT"] = "Delays can pause the execution of the workflow for a given time, but they can also act as a cast and interrupt the workflow if the player moves.",
	["TU_WO_ERROR_1"] = "Please create a workflow before resuming this tutorial.",
	["TYPE"] = "Type",
	["TYPE_CAMPAIGN"] = "Campaign",
	["TYPE_DIALOG"] = "Cutscene",
	["TYPE_DOCUMENT"] = "Document",
	["TYPE_ITEM"] = "Item",
	["TYPE_ITEMS"] = "Item(s)",
	["TYPE_LOOT"] = "Loot",
	["TYPE_QUEST"] = "Quest",
	["TYPE_QUEST_STEP"] = "Quest step",
	["UNIT_FRIES"] = "fries",
	["UNIT_POTATOES"] = "potatoes",
	["WO_ACTIONS_LINKS"] = "Action links",
	["WO_ACTIONS_LINKS_TT"] = [=[Here you can link your workflows to player quest actions.
These actions are: |cff00ff00Interact, listen, talk and inspect.|r
Each link can be conditioned.]=],
	["WO_ADD"] = "Create workflow",
	["WO_ADD_ID"] = [=[|cff00ff00Enter the workflow ID.|r

It's an internal ID to help you manage your workflows and won't be visible by the user.

Please note that you can't have two workflows with the same ID within the same object.]=],
	["WO_ADD_ID_NO_AVAILABLE"] = "This workflow ID is not available.",
	["WO_COMMON_EFFECT"] = "Common effects",
	["WO_CONDITION"] = "Condition",
	["WO_CONDITION_TT"] = [=[Evaluates a condition.
Stops the workflow if the condition fails.]=],
	["WO_CONTEXT"] = "Context",
	["WO_CONTEXT_TT"] = "The workflow context determines which effects can be used in the workflow.",
	["WO_COPY"] = "Copy workflow content",
	["WO_DELAY"] = "Delay",
	["WO_DELAY_CAST"] = "Casts for",
	["WO_DELAY_CAST_SOUND"] = "Cast sound ID",
	["WO_DELAY_CAST_SOUND_TT"] = [=[A sound ID for a precast sound. You can put a loopable sound here and it will be interrupted in case of cast interruption.

|cff00ff00Examples: 12273, 12361, ...etc.]=],
	["WO_DELAY_CAST_TEXT"] = "Cast text",
	["WO_DELAY_CAST_TEXT_TT"] = "The text placed on the cast bar.",
	["WO_DELAY_DURATION"] = "Duration",
	["WO_DELAY_DURATION_TT"] = "The duration for this delay, in seconds.",
	["WO_DELAY_INTERRUPT"] = "Interruption",
	["WO_DELAY_INTERRUPT_1"] = "No interruption",
	["WO_DELAY_INTERRUPT_2"] = "Interrupt on move",
	["WO_DELAY_SECONDS"] = "second(s)",
	["WO_DELAY_TT"] = [=[Pauses the workflow.
Can also be used as a cast and can be interrupt.]=],
	["WO_DELAY_TYPE"] = "Delay type",
	["WO_DELAY_TYPE_1"] = "Regular delay",
	["WO_DELAY_TYPE_1_TT"] = "Simply pauses the workflow, without showing any specific information to the player.",
	["WO_DELAY_TYPE_2"] = "Cast",
	["WO_DELAY_TYPE_2_TT"] = "Show a casting bar during the workflow pause.",
	["WO_DELAY_WAIT"] = "Waits for",
	["WO_EFFECT"] = "Effect",
	["WO_EFFECT_CAT_COMMON"] = "Common",
	["WO_EFFECT_NO_EDITOR"] = "This effect cannot be configured.",
	["WO_EFFECT_SELECT"] = "Select an effect",
	["WO_EFFECT_TT"] = [=[Plays an effect.
It can be playing sounds, displaying text, etc...]=],
	["WO_ELEMENT"] = "Element edition",
	["WO_ELEMENT_ADD"] = "Add element to workflow",
	["WO_ELEMENT_COND"] = "Edit effect condition",
	["WO_ELEMENT_COND_NO"] = "Remove effect condition",
	["WO_ELEMENT_COND_TT"] = "Adds a condition to this single effect.",
	["WO_ELEMENT_COPY"] = "Copy element content",
	["WO_ELEMENT_EDIT"] = "Click to edit element",
	["WO_ELEMENT_EDIT_CTRL"] = "Control-click to condition this instruction",
	["WO_ELEMENT_EDIT_RIGHT"] = "Right-click for more operations",
	["WO_ELEMENT_PASTE"] = "Paste element content",
	["WO_ELEMENT_TYPE"] = "Select the element type",
	["WO_EMPTY"] = [=[You can start by adding an element to your workflow.
This can be an effect, condition or delay.]=],
	["WO_END"] = "End of workflow",
	["WO_EVENT_EX_ADD"] = "Add event link",
	["WO_EVENT_EX_BROWSER_COMBAT_LOG_ERROR"] = "Can't show arguments, refer to Wowpedia",
	["WO_EVENT_EX_BROWSER_NO_PAYLOAD"] = "No arguments",
	["WO_EVENT_EX_BROWSER_OPEN"] = "Open event browser",
	["WO_EVENT_EX_BROWSER_TITLE"] = "Event browser",
	["WO_EVENT_EX_CONDI"] = "Event link condition editor",
	["WO_EVENT_EX_EDITOR"] = "Event link editor",
	["WO_EVENT_EX_LINK"] = "Game event link",
	["WO_EVENT_EX_LINKS"] = "Game event links",
	["WO_EVENT_EX_LINKS_TT"] = [=[Here you can link your workflows to game events.
Each link can be conditioned.]=],
	["WO_EVENT_EX_NO"] = "No event link",
	["WO_EVENT_EX_UNKNOWN_ERROR"] = "[Error] Unknown event %s in %s",
	["WO_EVENT_ID"] = "Event ID",
	["WO_EVENT_ID_TT"] = [=[The event ID.

You can see the entire event list on websites like WoWWiki of Wowpedia.

Here as an example, PLAYER_REGEN_DISABLED is triggered when you enter a combat.]=],
	["WO_EVENT_LINKS"] = "Object event links",
	["WO_EXECUTION"] = "Workflow execution",
	["WO_EXPERT"] = "Expert mode",
	["WO_EXPERT_DONE"] = "Switched %s to expert mode. Now unleash your creativity!",
	["WO_EXPERT_EFFECT"] = "Expert effects",
	["WO_EXPERT_TT"] = [=[A workflow is a set of instructions that can make your object dynamic.

Here you can define all your workflows for this object, then you can link them to an action in the event links tab.]=],
	["WO_LINKS"] = "Event links",
	["WO_LINKS_NO_LINKS"] = "No link",
	["WO_LINKS_NO_LINKS_TT"] = "Does not link this action/event to a workflow.",
	["WO_LINKS_SELECT"] = "Select a workflow to link",
	["WO_LINKS_TO"] = "Linked to workflow",
	["WO_LINKS_TRIGGERS"] = "Here you can link your workflows to specifics events for this object.",
	["WO_NO"] = "No workflows",
	["WO_PASTE"] = "Paste workflow content",
	["WO_PASTE_CONFIRM"] = "Replace this workflow content with the one you copied earlier?",
	["WO_REMOVE_POPUP"] = "Delete the workflow %s?",
	["WO_SECURITY"] = "Security level",
	["WO_SECURITY_HIGH"] = "High",
	["WO_SECURITY_HIGH_DETAILS"] = "This effect is secured and will not prompt security warning.",
	["WO_SECURITY_LOW"] = "Low",
	["WO_SECURITY_LOW_DETAILS"] = "This effect is not secured and could be malicious. It will prompt a security warning and will ask for confirmation, based on the user security settings.",
	["WO_SECURITY_NORMAL"] = "Medium",
	["WO_SECURITY_NORMAL_DETAILS"] = "This effect is secured but could cause inconveniences. It will prompt a security warning, based on the user security settings.",
	["WO_WO_SECURITY"] = "Workflow security",
	["WO_WORKFLOW"] = "Workflows"
}

Localization:GetLocale("enUS"):AddTexts(localeContent);
localeContent = {
	["ALL"] = "Alle",
	["BINDING_NAME_TRP3_INVENTORY"] = "Inventar des Charakters öffnen",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "Hauptinventar öffnen",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "Quest Aktion: Interagieren",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "Quest Aktion: Zuhören",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "Quest Aktion: Untersuchen",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "Quest Aktion: Reden",
	["BINDING_NAME_TRP3_QUESTLOG"] = "Öffne das TRP3 Questlog",
	["BINDING_NAME_TRP3_SEARCH_FOR_ITEMS"] = "Suche nach Gegenständen",
	["CA_ACTION_CONDI"] = "Aktionsbedingungen-Editor",
	["CA_ACTION_REMOVE"] = "Diese Aktion entfernen?",
	["CA_ACTIONS"] = "Aktionen",
	["CA_ACTIONS_ADD"] = "Aktion hinzufügen",
	["CA_ACTIONS_COND"] = "Bedingung editieren",
	["CA_ACTIONS_COND_OFF"] = "Diese Aktion hat keine Bedingung",
	["CA_ACTIONS_COND_ON"] = "Diese Aktion besitzt eine Bedingung",
	["CA_ACTIONS_COND_REMOVE"] = "Bedingung entfernen",
	["CA_ACTIONS_EDITOR"] = "Aktioneneditor",
	["CA_ACTIONS_NO"] = "Keine Aktion",
	["CA_ACTIONS_SELECT"] = "Wähle Aktionstyp",
	["CA_DESCRIPTION"] = "Kampagnenzusammenfassung",
	["CA_DESCRIPTION_TT"] = "Diese kurze Zusammenfassung wird auf der Kampagnenseite im Questjournal zu sehen sein.",
	["CA_ICON"] = "Kampagnenicon",
	["CA_ICON_TT"] = "Wähle Kampagnenicon",
	["CA_IMAGE"] = "Kampagnenportrait",
	["CA_IMAGE_TT"] = "Wähle Kampagnenportrait",
	["CA_LINKS_ON_START"] = "Beim Kampagnenstart",
	["CA_LINKS_ON_START_TT"] = [=[Wird |cff00ff00einmal|r ausgelöst, wenn der Spieler Deine Kampagne startet, also die Kampagne zum ersten Mal aktiviert, oder diese im Questlog zurücksetzt.

|cff00ff00Dies ist ein guter Platz, um Deine erste Quest zu aktivieren.]=],
	["CA_NAME"] = "Kampagnenname",
	["CA_NAME_NEW"] = "Neue Kampagne",
	["CA_NAME_TT"] = "Dies ist der Name Ihrer Kampagne. Es erscheint im Questlog.",
	["CA_NO_NPC"] = "Kein individueller NPC",
	["CA_NPC"] = "Kampagnen NPC Liste",
	["CA_NPC_ADD"] = "Füge benutzerdefinierten NPC hinzu",
	["CA_NPC_AS"] = "Duplikat",
	["CA_NPC_EDITOR"] = "NPC-Editor",
	["CA_NPC_EDITOR_DESC"] = "Beschreibung des NPC",
	["CA_NPC_EDITOR_NAME"] = "Name des NPC",
	["CA_NPC_ID"] = "NPC ID",
	["CA_NPC_ID_TT"] = [=[Bitte geben sie die ID des NPCs für die Anpassung ein.

|cff00ff00Um die ID eines anvisierten NPCs zu erhalten, gebe diesen Befehl in den Chat ein: /trp3 getID]=],
	["CA_NPC_NAME"] = "Standartname des NPC",
	["CA_NPC_REMOVE"] = "Anpassung für diesen NPC entfernen?",
	["CA_NPC_TT"] = "Du kannst NPCs anpassen, um ihnen einen eigenen Namen, ein Bild und eine Beschreibung geben. Diese Anpassungen sind nur für den Spieler sichtbar, der deine Kampagne aktiviert hat.",
	["CA_NPC_UNIT"] = "Angepasster NPC",
	["CA_QE_ID"] = "Ändere Quest-ID",
	["CA_QE_ST_ID"] = "Ändere Questfortschritt-ID",
	["CA_QUEST_ADD"] = "Quest hinzufügen",
	["CA_QUEST_CREATE"] = [=[Bitte gebe eine Quest-ID ein. Es kann keine zwei Quests mit der selben ID in der selben Kampagne.

|cffff9900Bitte bedenke, dass die Quests nach ID sortiert im Questjournal aufgelistet werden.

|cff00ff00Es ist gute Praktik, die Quest-ID mit quest_# zu starten, wobei # die tatsächliche Questnummer innerhalb der Kampagne ist.]=],
	["CA_QUEST_EXIST"] = "Es existiert bereits eine Quest mit der ID %s.",
	["CA_QUEST_NO"] = "Keine Quest",
	["CA_QUEST_REMOVE"] = "Diese Quest entfernen?",
	["CL_CAMPAIGN_PROGRESSION"] = "Fortschritt für %s:",
	["CL_CREATION"] = "Erweiterte Erstellung",
	["CL_EXTENDED_CAMPAIGN"] = "Erweiterte Kampagne",
	["CL_EXTENDED_ITEM"] = "Erweiterter Gegenstand",
	["CL_IMPORT"] = "In die Datenbank importieren",
	["CL_IMPORT_ITEM_BAG"] = "Gegenstand Deiner Tasche hinzufügen",
	["CL_TOOLTIP"] = "Erstelle einen Chat-Link",
	["COM_NPC_ID"] = "Erhalte die ID des anvisierten NPC",
	["COND_COMPLETE"] = "Vollständiger logischer Ausdruck",
	["COND_CONDITIONED"] = "Bedingt",
	["COND_EDITOR"] = "Bedingungseditor",
	["COND_EDITOR_EFFECT"] = "Effektbedingungseditor",
	["COND_LITT_COMP"] = "Alle Vergleichstypen",
	["COND_NUM_COMP"] = "Nur numerische Vergleiche",
	["COND_NUM_FAIL"] = "Du musst zwei numerische Operanten angeben, wenn du einen numerischen Vergleich verwendest.",
	["COND_PREVIEW_TEST"] = "Testvorschau",
	["COND_PREVIEW_TEST_TT"] = "Gibt im Chat die Bewertung des Tests basierend auf die derzeitige Situation aus.",
	["COND_TEST_EDITOR"] = "Testeditor",
	["COND_TESTS"] = "Bedingungstests",
	["CONF_MAIN"] = "Extended Einstellungen",
	["CONF_MUSIC_ACTIVE"] = "Spiele Umgebungssound ab",
	["CONF_MUSIC_ACTIVE_TT"] = [=[Lokale Musik ist Musik, welche von anderen Spieler (zum Beispiel durch ein Item) in einer bestimmten Reichweite gespielt wird.

Schalte dies aus, wenn du diese Musik nicht hören möchtest.

Von Spielern die du ignorierst wirst du keine Musik hören.

Beachte, dass du die Musik über die Sound History in dem TRP3-Shortcut-Balken unterbrechen kannst.]=],
	["CONF_MUSIC_METHOD"] = "Methode der lokalen Musikwiedergabe",
	["CONF_MUSIC_METHOD_TT"] = "Lege fest, wie Du lokale Musik hörst, wenn Du Dich in Reichweite befindest.",
	["CONF_SOUNDS"] = "Umgebungsgeräusche / Musik",
	["CONF_SOUNDS_ACTIVE"] = "Ton abspielen",
	["CONF_SOUNDS_ACTIVE_TT"] = [=[Sounds sind Geräusche/Musik, die durch andere Spieler (zum Beispiel mit einem Gegenstand) innerhalb einer bestimmten Reichweite in Meter abgespielt werden.

Deaktiviere diese Option wenn du gar keine Sounds hören möchtest.

|cff00ff00Du wirst niemals Sounds von ignorierten Spielern hören.

|cff00ff00Alle Sounds können mit der Soundhistorie in der TRP3 Schnellzugriffleiste unterbrochen werden.]=],
	["CONF_SOUNDS_MAXRANGE"] = "Maximale Abspielreichweite",
	["CONF_SOUNDS_MAXRANGE_TT"] = [=[Setze die maximale Reichweite (in Meter) in der du Sounds in der Umgebung hören würdest.

|cff00ff00Es ist nützlich, damit Sounds nicht über den ganzen Kontinent für andere Spieler abgespielt werden.

cffff9900Null bedeutet, dass es kein Limit gibt!]=],
	["CONF_SOUNDS_METHOD"] = "Methode zum Abspielen von Umgebungsgeräuschen",
	["CONF_SOUNDS_METHOD_1"] = "Automatisch abspielen",
	["CONF_SOUNDS_METHOD_1_TT"] = "Wenn du in Reichweite bist wird die Musik/das Geräusch automatisch ohne deine Zustimmung abgespielt.",
	["CONF_SOUNDS_METHOD_2"] = "Anfrage stellen",
	["CONF_SOUNDS_METHOD_2_TT"] = "Wenn du in Reichweite bist erhältst du einen Link in deinem Chat, in dem du bestätigst, dass du diese Musik/dieses Geräusch abspielen willst.",
	["CONF_SOUNDS_METHOD_TT"] = "Bestimme, wie du in Reichweite Geräusche hören möchtest.",
	["CONF_UNIT"] = "Einheiten",
	["CONF_UNIT_WEIGHT"] = "Gewichtseinheiten",
	["CONF_UNIT_WEIGHT_1"] = "Gramm",
	["CONF_UNIT_WEIGHT_2"] = "Pfund",
	["CONF_UNIT_WEIGHT_3"] = "Kartoffel",
	["CONF_UNIT_WEIGHT_TT"] = "Definiere, wie das Gewicht angezeigt wird.",
	["DB"] = "Datenbank",
	["DB_ACTIONS"] = "Aktionen",
	["DB_ADD_COUNT"] = "Wie viel %s möchtest du deinem Inventar hinzufügen?",
	["DB_ADD_ITEM"] = "Zum Hauptinventar hinzufügen",
	["DB_ADD_ITEM_TT"] = "Fügt Mengen dieses Gegenstands in deine erste Tasche (oder dein Hauptinventar wenn du keine Tasche auf diesem Charakter besitzt).",
	["DB_BACKERS"] = "Unterstützer Datenbank (%s)",
	["DB_BACKERS_LIST"] = "Danksagungen",
	["DB_BROWSER"] = "Objektbrowser",
	["DB_COPY_ID_TT"] = "Zeige Objekt-ID in einem Popup an, um diese zu kopieren & einzufügen",
	["DB_COPY_TT"] = "Informationen für dieses Objekt (und Unterobjekte) kopieren, um sie als inneres Objekt in ein anderes Objekt einzufügen.",
	["DB_CREATE_CAMPAIGN"] = "Erstelle Kampagne",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "Leere Kampagne",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT"] = [=[Eine leere Vorlage.
Für diejenigen, die gerne ganz von vorne starten möchten.]=],
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "Erstelle von ...",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "Erstelle eine Kopie einer bestehenden Kampagne.",
	["DB_CREATE_CAMPAIGN_TT"] = "Erstelle eine Kampagne",
	["DB_CREATE_ITEM"] = "Gegenstand erstellen",
	["DB_CREATE_ITEM_TEMPLATES"] = "oder wähle eine Vorlage",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "Leerer Gegenstand",
	["DB_CREATE_ITEM_TEMPLATES_BLANK_TT"] = [=[Eine leere Vorlage.
Für diejenigen, die gerne ganz von vorne starten möchten.]=],
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "Behälter Gegenstand",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[Eine Behälter Vorlage.
Behälter können andere Gegenstände enthalten.]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "Dokumentgegenstand",
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT"] = [=[Eine Gegenstandsvorlage mit einem inneren Dokument.
Nützlich um schnell ein Buch oder eine Schriftrolle zu erstellen.]=],
	["DB_CREATE_ITEM_TEMPLATES_EXPERT"] = "Experten-Gegenstand",
	["DB_CREATE_ITEM_TEMPLATES_EXPERT_TT"] = [=[Eine leere Vorlage für Experten.
Für Nutzer mit Erfahrung bei der Gegenstandserstellung.]=],
	["DB_CREATE_ITEM_TEMPLATES_FROM"] = "Erstellen aus...",
	["DB_CREATE_ITEM_TEMPLATES_FROM_TT"] = "Erstellt eine Kopie eines existierenden Gegenstands.",
	["DB_CREATE_ITEM_TEMPLATES_QUICK"] = "Schnell erstellen",
	["DB_CREATE_ITEM_TEMPLATES_QUICK_TT"] = [=[Erstellt einen einfachen Gegenstand ohne Effekte.
Fügt danach eine Einheit dieses Gegenstands deinem Hauptinventar zu.]=],
	["DB_CREATE_ITEM_TT"] = "Wähle eine Vorlage für einen neuen Gegenstand",
	["DB_DELETE_TT"] = "Entfernt dieses Objekt und dessen Kindobjekte.",
	["DB_EXPERT_TT"] = "Überführt dieses Objekt in den Expertenmodus, der komplexere Anpassungen ermöglicht.",
	["DB_EXPORT"] = "Objekt schnell exportieren",
	["DB_EXPORT_DONE"] = [=[Dein Objekt wurde in die Datei |cff00ff00totalRP3_Extended_ImpExport.lua|r in folgendem Spielverzeichnis exportiert:

World of Warcraft\_retail_\WTF\account\YOUR_ACCOUNT\SavedVariables

Du kannst diese Datei mit deinen Freunden teilen!

Diese können dem Import-Prozess unter dem Reiter |cff00ff00Gesamte Datenbank|r folgen.]=],
	["DB_EXPORT_HELP"] = "Quellcode für Objekt %s (Größe: %0.1f kB)",
	["DB_EXPORT_MODULE_NOT_ACTIVE"] = "Komplett-export/import von Objekten: Bitte aktiviere zuerst das Addon totalRP3_Extended_ImpExport.",
	["DB_EXPORT_TOO_LARGE"] = [=[Dieses Objekt ist zu groß um auf diese Weise serialisiert zu werden. Bitte benutze den Komplettexport.

Größe: %0.1f kB.]=],
	["DB_EXPORT_TT"] = [=[Serialisiert den Inhalt des Objekts für den Datenaustausch außerhalb des Spiels.

Funktioniert nur für kleine Objekte (kleiner als 20 kB nach Serialisierung). Nutze den Komplettexport für größere Objekte.]=],
	["DB_FILTERS"] = "Suchfilter",
	["DB_FILTERS_CLEAR"] = "Zurücksetzen",
	["DB_FILTERS_NAME"] = "Objektname",
	["DB_FILTERS_OWNER"] = "Erstellt von",
	["DB_FULL"] = "Gesamte Datenbank (%s)",
	["DB_FULL_EXPORT"] = "Komplettexport",
	["DB_FULL_EXPORT_TT"] = [=[Exportiere das ganze Objekt unabhängig von seiner Größe.

Dabei wird das Interface neu geladen um sicherzustellen, dass die Datei geschrieben wird.]=],
	["DB_HARD_SAVE"] = "Speicherung erzwingen",
	["DB_HARD_SAVE_TT"] = "Lädt das Spielinterface neu um zu erzwingen, dass gespeicherte Variablen tatsächlich auf die Festplatte geschrieben werden.",
	["DB_IMPORT"] = "Objekt schnell importieren",
	["DB_IMPORT_CONFIRM"] = [=[Diese Objekt wurde mit einen anderen Version von Total RP 3 Extended serialisiert.

TRP3E-Version des Objekts: %s
Deine TRP3E-Version: %s

|cffff9900Dies kann zu Inkompatibilitäten führen.
Trotzdem fortfahren?]=],
	["DB_IMPORT_DONE"] = "Objekt wurde erfolgreich importiert!",
	["DB_IMPORT_EMPTY"] = [=[Deine |cff00ff00totalRP3_Extended_ImpExport.lua|r-Datei ist leer.

Die Datei muss |cffff9900vor dem Start des Spiels|r in folgendem Verzeichnis abgelegt werden:

World of Warcraft\_retail_\WTF\ account\YOUR_ACCOUNT\SavedVariables]=],
	["DB_IMPORT_ERROR1"] = "Das Objekt konnte nicht deserialisiert werden.",
	["DB_IMPORT_FULL"] = "Komplettimport von Objekten",
	["DB_IMPORT_FULL_CONFIRM"] = [=[Möchtest du das folgende Objekt importieren?

%s
%s
Von |cff00ff00%s|r
Version %s]=],
	["DB_IMPORT_FULL_TT"] = "Importiert die Datei |cff00ff00totalRP3_Extended_ImpExport.lua|r.",
	["DB_IMPORT_ITEM"] = "Importiere Gegenstand",
	["DB_IMPORT_TT"] = "Füge hier ein serialisiertes Objekt ein.",
	["DB_IMPORT_VERSION"] = [=[Du importierst eine ältere Version eines Objekts, das du bereits hast.

Import-Version: %s
Deine Version: %s

|cffff9900Möchtest du das Objekt wirklich downgraden?]=],
	["DB_IMPORT_WORD"] = "Import",
	["DB_LIST"] = "Kreationen",
	["DB_LOCALE"] = "Objektlokalisierung",
	["DB_MY"] = "Meine Datenbank (%s)",
	["DB_MY_EMPTY"] = [=[Du hast noch keine Objekte erstellt.
Benutze eine der Schaltflächen weiter unten um deiner Kreativität freien Lauf zu lassen!]=],
	["DB_OTHERS"] = "Datenbank anderer Spieler (%s)",
	["DB_OTHERS_EMPTY"] = "Hier werden alle Objekte von anderen Spielern angezeigt.",
	["DB_REMOVE_OBJECT_POPUP"] = [=[Bitte bestätige, dass du dieses Objekt löschen willst:
ID: |cff00ffff"%s"|r
|cff00ff00[%s]|r

|cffff9900Warnung: Diese Aktion kann nicht rückgängig gemacht werden!]=],
	["DB_RESULTS"] = "Suchergebnisse",
	["DB_SECURITY_TT"] = "Zeigt alle Sicherheitsparameter für dieses Objekt an. Von dort aus können bestimmte unerwünschte Effekte zugelassen oder verhindert werden.",
	["DB_TO_EXPERT"] = "Zum Expertenmodus konvertieren ",
	["DB_WARNING"] = [=[|cffff0000!!! Warnung !!!

|cffff9900Vergiss nicht, Deine Änderungen zu speichern, bevor Du zur Datenbankliste zurückkehrst!]=],
	["DEBUG_QUEST_START"] = "Starte Quest",
	["DEBUG_QUEST_START_USAGE"] = "Verwendung: /trp3 debug_quest_start questID",
	["DEBUG_QUEST_STEP"] = "Gehe zu einem Questschritt.",
	["DEBUG_QUEST_STEP_USAGE"] = "Verwendung: /trp3 debug_quest_step questID stepID",
	["DI_ATTR_TT"] = "Wähle diese Option nur, wenn du dieses Attribut bezüglich des vorherigen Schritts ändern möchtest.",
	["DI_ATTRIBUTE"] = "Szene modifizieren",
	["DI_BKG"] = "Hintergrundbild ändern",
	["DI_BKG_TT"] = [=[Wird als Hintergrund für den Schritt in der Sequenz benutzt. Bitte trage den gesamten Texturpfad ein.

Wenn du den Hintergrund innerhalb einer Zwischensequenz änderst wird eine Überblendung eintreten.]=],
	["DI_CHOICE"] = "Auswahl",
	["DI_CHOICE_CONDI"] = "Auswahlbedingung",
	["DI_CHOICE_STEP"] = "Gehe zu Schritt",
	["DI_CHOICE_STEP_TT"] = [=[Gib die Positionsnummer ein, an die gesprungen werden soll, falls der Spieler diese Auswahl trifft.

|cff00ff00Wenn du die Position leer lässt oder eine nicht vorhandene Position angibst wird die Zwischensequenz bei Auswahl beendet (und das Objektereignis "Bei Beenden" wird ausgelöst).]=],
	["DI_CHOICE_TT"] = [=[Gib den Text für diese Auswahl ein.

|cff00ff00leerlassen um die Auswahlmöglichkeit zu deaktivieren]=],
	["DI_CHOICES"] = "Wahlmöglichkeiten",
	["DI_CHOICES_TT"] = "Bearbeite die Wahlmöglichkeiten, die der Spieler in diesem Schritt hat.",
	["DI_CONDI_TT"] = [=[Legt eine Bedingung für diese Auswahlmöglichkeit fest. Falls die Bedingung zum Zeitpunkt der Anzeige nicht erfüllt ist, wird die zugehörige Option nicht angezeigt.

|cff00ff00Klicken: Bedingung einstellen
Rechtsklicken: Bedingung entfernen]=],
	["DI_DIALOG"] = "Dialog",
	["DI_DISTANCE"] = "Maximale Entfernung (Meter)",
	["DI_DISTANCE_TT"] = [=[Legt die Entfernung (in Metern) fest, ab der die Zwischensequenz automatisch beendet wird, sollte sich der Spieler nach dem Start der Sequenz weiter wegbewegen. Hierbei wird das Ereignis "Bei Abbrechen" ausgelöst.

|cff00ff00Null bedeutet keine Einschränkung

|cffff9900Funktioniert nicht in Dungeons/Schlachtfeldern/Arenen seit Patch 7.1.]=],
	["DI_END"] = "Endpunkt",
	["DI_END_TT"] = [=[Markiert diesen Schritt als Endpunkt. Bei Erreichen wird die Zwischensequenz beendet (und das Ereignis "Bei Beenden" wird ausgelöst).

|cff00ff00Nützlich, wenn der Spieler in dieser Zwischensequenz Wahlmöglichkeiten hat.]=],
	["DI_FRAME"] = "Dekoration",
	["DI_GET_ID"] = "ID des Ziels",
	["DI_GET_ID_TT"] = "Kopiert die NSC-Id des Ziels. Funktioniert nur, wenn dein anvisiertes Ziel ein NSC ist.",
	["DI_HISTORY"] = "Zwischensequenzen-Verlauf",
	["DI_HISTORY_TT"] = "Klicken, um das Verlaufsfenster der Zwischensequenz ein-/auszublenden.",
	["DI_IMAGE"] = "Bild ändern",
	["DI_IMAGE_TT"] = [=[Zeigt ein Bild in der Mitte der Szene. Das Bild wird eingeblendet. Bitte gib den ganzen Texturpfad ein.

Um das Bild danach wieder auszublenden lass das Feld leer.]=],
	["DI_LEFT_UNIT"] = "Linkes Modell ändern",
	["DI_LINKS_ONEND"] = "Bei Beenden der Sequenz",
	["DI_LINKS_ONEND_TT"] = [=[Wird ausgelöst sobald die Zwischensequenz endet.

|cff00ff00Tritt am Ende des letzten Schritts ein, oder wenn der Spieler eine Auswahl trifft, die zu einer leeren oder unbekannten Position führt.

|cffff0000Tritt NICHT ein, wenn der Spieler die Sequenz durch das Schließen des Fensters abbricht.]=],
	["DI_LINKS_ONSTART"] = "Bei Starten der Sequenz",
	["DI_LINKS_ONSTART_TT"] = [=[Wird ausgelöst sobald die Zwischensequenz abgespielt wird.

|cffff9900Beachte, dass dieser Arbeitsablauf VOR der Anzeige des ersten Schritts abgearbeitet wird.]=],
	["DI_LOOT"] = "Warte auf Beute",
	["DI_LOOT_TT"] = "Falls der links ausgewählte Arbeitsablauf dem Spieler ein Beutefenster präsentiert, kannst du mit dieser Option verhindern, dass der Spieler fortfährt, bevor er alle Gegenstände aufgenommen hat.",
	["DI_MODELS"] = "Modelle",
	["DI_NAME"] = "Name des Redenden ändern",
	["DI_NAME_DIRECTION"] = "Dialogrichtung ändern",
	["DI_NAME_DIRECTION_TT"] = "Legt fest, auf welcher Seite die Sprechblase erscheint und welches Modell animiert wird. Wähle \"keine\" aus um Sprechblase und Name zu verstecken.",
	["DI_NAME_TT"] = [=[Name des redenden Charakters.

Nur nötig, wenn die obige Dialogrichtung nicht "keine" ist.]=],
	["DI_NEXT"] = "Nächster Schritt",
	["DI_NEXT_TT"] = [=[Du kannst einstellen, welcher Schritt nach diesem abgespielt wird.

|cff00ff00Benutze dieses Feld, wenn du zu einer anderen Position "springen" möchtest, lass es leer um zur nächsthöheren zu wechseln. Hilfreich wenn der Spieler Auswahlmöglichkeiten hat.]=],
	["DI_RIGHT_UNIT"] = "Rechtes Modell ändern",
	["DI_STEP"] = "Sequenzschritt",
	["DI_STEP_ADD"] = "Schritt hinzufügen",
	["DI_STEP_EDIT"] = "Sequenzschritt bearbeiten",
	["DI_STEP_TEXT"] = "Text zu diesem Schritt",
	["DI_STEPS"] = "Zwischensequenz-Schritte",
	["DI_UNIT_TT"] = [=[Stellt das anzuzeigende Modell ein:

- leer lassen um kein Modell anzuzeigen
- "player" um das Modell des Spielers zu benutzen
- "target" um das Modell des Ziels zu benutzen
- eine numerische NSC-Id]=],
	["DI_WAIT_LOOT"] = "Bitte entnimm alle Gegenstände",
	["DISCLAIMER"] = [=[{h1:c}Bitte Lesen{/h1}
Gegenstände und Quests zu erstellen beansprucht Zeit und Energie und es ist immer furchtbar, wenn man all seine schwere Arbeit verliert.
Alle Addons in World of Warcraft können Daten speichern, aber es gibt Einschränkungen:
• Es gibt eine nicht bekannte Größenbegrenzung für Addon-Daten (unter anderem davon abhängig, ob du die 32- oder 64-Bit-Version benutzt).
• Wird diese Begrenzung erreicht, können sämtliche gespeicherten Addon-Daten gelöscht werden.
• Wenn der Spielprozess beendet wird (Alt+F4) oder abstürzt können gespeicherte Daten korrumpiert werden.
• Selbst wenn das Spiel ordnungsgemäß beendet wird kann es vorkommen, dass das Spiel nicht in der Lage ist alle Daten richtig zu speichern und sie so zu korrumpieren.
In dieser Hinsicht empfehlen wir DRINGEND regelmäßige Sicherungskopien anzulegen.
Unter folgendem Link findest du ein Tutorial (englisch), das dir hilft, deine gespeicherten Daten zu finden: {link*https://totalrp3.info/documentation/how_to/saved_variables*Where is my information stored?}
Hier findest du ein Tutorial (englisch) über die Datensynchronisation mit einem Cloud-Service: {link*https://totalrp3.info/documentation/how_to/backup_and_sync_profiles*How to backup and synchronize your add-ons settings using a cloud service}
Bitte beachte, dass wir nicht mehr auf Kommentare oder Tickets bezüglich Datenverlust antworten werden. Nicht, weil wir nicht helfen wollen, sondern weil wir nichts unternehmen können um diese Daten wiederherzustellen.
Vielen Dank und viel Spaß mit Total RP 3 Extended!
{p:r}Das TRP3 Team{/p}]=],
	["DISCLAIMER_OK"] = "Hiermit unterzeichne ich diesen Vertrag mit meinem Blut",
	["DO_EMPTY"] = "Leeres Dokument",
	["DO_LINKS_ONCLOSE"] = "Bei Schließen",
	["DO_LINKS_ONCLOSE_TT"] = "Wird ausgelöst, wenn das Dokument durch den Spieler oder ein Ereignis geschlossen wird. (bspw. durch einen Effekt in einem Arbeitsablauf)",
	["DO_LINKS_ONOPEN"] = "Bei Öffnen",
	["DO_LINKS_ONOPEN_TT"] = "Wird ausgelöst, sobald das Dokument dem Spieler angezeigt wird.",
	["DO_NEW_DOC"] = "Dokument",
	["DO_PAGE_ADD"] = "Seite hinzufügen",
	["DO_PAGE_BORDER"] = "Rahmen",
	["DO_PAGE_BORDER_1"] = "Pergament",
	["DO_PAGE_COUNT"] = "Seite %s / %s",
	["DO_PAGE_EDITOR"] = "Seiteneditor: Seite %s",
	["DO_PAGE_FIRST"] = "Erste Seite",
	["DO_PAGE_FONT"] = "%s Schriftart",
	["DO_PAGE_HEIGHT"] = "Seitenhöhe",
	["DO_PAGE_HEIGHT_TT"] = "Seitenhöhe in Pixel. Bitte beachte, dass einige Hintergrundmuster nur ein bestimmtes Breite-Höhe-Verhältnis unterstützen und sonst verzerrt werden.",
	["DO_PAGE_LAST"] = "Letzte Seite",
	["DO_PAGE_MANAGER"] = "Seitenmanager",
	["DO_PAGE_NEXT"] = "Nächste Seite",
	["DO_PAGE_PREVIOUS"] = "Vorherige Seite",
	["DO_PAGE_REMOVE"] = "Seite entfernen",
	["DO_PAGE_REMOVE_POPUP"] = "Seite %s entfernen?",
	["DO_PAGE_RESIZE"] = "Einstellbare Größe",
	["DO_PAGE_RESIZE_TT"] = [=[Gestattet es dem Benutzer die Größe zu verändern.

|cffff9900Stell sicher, dass das Layout lesbar bleibt und nicht vom Breite-Höhe-Verhältnis abhängt.

|cff00ff00Beachte, dass der Nutzer das Fenster nicht unter die voreingestellte Größe verkleinern kann.]=],
	["DO_PAGE_TILING"] = "Hintergrund kacheln",
	["DO_PAGE_TILING_TT"] = "Legt fest, ob der Hintergrund horizontal und vertikal gekachelt wird. Wenn nicht, wird die Textur vergrößert.",
	["DO_PAGE_WIDTH"] = "Seitenbreite",
	["DO_PAGE_WIDTH_TT"] = "Seitenbreite in Pixel. Bitte beachte, dass einige Hintergrundmuster nur ein bestimmtes Breite-Höhe-Verhältnis unterstützen und sonst verzerrt werden.",
	["DO_PARAMS_CUSTOM"] = "Angepasste Seiteneinstellungen",
	["DO_PARAMS_GLOBAL"] = "Standard-Seiteneinstellungen",
	["DO_PARAMS_GLOBAL_TT"] = "Ändert die Standardeinstellungen dieses Dokuments. Diese werden für alle Seiten ohne angepasste Einstellungen benutzt.",
	["DO_PREVIEW"] = "Für Vorschau klicken",
	["DOC_UNKNOWN_ALERT"] = "Dokument kann nicht geöffnet werden. (Fehlende Klasse)",
	["DR_DELETED"] = "Zerstört: %s x%d",
	["DR_DROP_ERROR_INSTANCE"] = "In einer Instanz kann kein Gegenstand abgelegt werden.",
	["DR_DROPED"] = "Auf den Boden fallen gelassen: %s x%d",
	["DR_NOTHING"] = "Keine Gegenstände in diesem Gebiet gefunden.",
	["DR_POPUP"] = "Hier fallen lassen",
	["DR_POPUP_ASK"] = [=[Total RP 3

Wähle aus, was mit dem Gegenstand geschehen soll:
%s]=],
	["DR_POPUP_REMOVE"] = "Zerstören",
	["DR_POPUP_REMOVE_TEXT"] = "Diesen Gegenstand zerstören?",
	["DR_RESULTS"] = "%s Gegenstände gefunden.",
	["DR_SEARCH_BUTTON"] = "Suche nach |cff00ff00meinen|r Gegenständen",
	["DR_SEARCH_BUTTON_TT"] = "Suche nach eigenen Gegenständen in einem Umkreis von 15 Metern.",
	["DR_STASHED"] = "Versteckt: %s x%d",
	["DR_STASHES"] = "Verstecke",
	["DR_STASHES_CREATE"] = "Versteck hier erstellen",
	["DR_STASHES_CREATE_TT"] = "Erstellt ein Versteck an deiner Position.",
	["DR_STASHES_DROP"] = "Du kannst keinen Gegenstand in das Versteck eines anderen ablegen.",
	["DR_STASHES_EDIT"] = "Versteck bearbeiten",
	["DR_STASHES_ERROR_INSTANCE"] = "In Instanzen können keine Verstecke angelegt werden",
	["DR_STASHES_ERROR_OUT_SYNC"] = "Nicht synchronisiertes Versteck, bitte nochmal versuchen.",
	["DR_STASHES_ERROR_SYNC"] = "Versteck ist nicht synchronisiert.",
	["DR_STASHES_FOUND"] = "Verstecke gefunden: %s",
	["DR_STASHES_FULL"] = "Dieses Versteck ist voll.",
	["DR_STASHES_HIDE"] = "Vor Scan verbergen",
	["DR_STASHES_HIDE_TT"] = [=[Dieses Versteck wird nicht auf dem Karten-Scan anderer Spieler erscheinen.

Beachte dass sie immer darauf zugreifen können wenn sie wissen wo es ist.]=],
	["DR_STASHES_MAX"] = "maximal 50 Zeichen",
	["DR_STASHES_NAME"] = "Versteck",
	["DR_STASHES_NOTHING"] = "Keine Verstecke in diesem Gebiet gefunden.",
	["DR_STASHES_OWNER"] = "Besitzer",
	["DR_STASHES_OWNERSHIP"] = "In Besitz nehmen",
	["DR_STASHES_OWNERSHIP_PP"] = [=[Dieses Versteck übernehmen?
Dieser Charakter wird als Besitzer angezeigt wenn andere Spieler danach suchen.]=],
	["DR_STASHES_REMOVE"] = "Versteck entfernen",
	["DR_STASHES_REMOVE_PP"] = [=[Dieses Versteck entfernen?
|cffff9900Alle enthaltenen Gegenstände gehen verloren!]=],
	["DR_STASHES_REMOVED"] = "Versteck entfernt.",
	["DR_STASHES_RESYNC"] = "Resynchronisieren",
	["DR_STASHES_SCAN"] = "Nach Spielerverstecken suchen",
	["DR_STASHES_SCAN_MY"] = "Nach meinen Verstecken suchen",
	["DR_STASHES_SEARCH"] = "Suche nach |cff00ff00Spielerverstecken|r",
	["DR_STASHES_SEARCH_TT"] = [=[Suche nach Verstecken anderer Spieler im Umkreis von 15 Metern.

Dies wird einen dreisekündigen Scan starten, halte still!]=],
	["DR_STASHES_SYNC"] = "Synchronisiere...",
	["DR_STASHES_TOO_FAR"] = "Du bist zu weit von diesem Versteck entfernt.",
	["DR_STASHES_WITHIN"] = "|cff00ff00Deine|r Verstecke innerhalb von 15 Metern",
	["DR_SYSTEM"] = "Dropsystem",
	["DR_SYSTEM_TT"] = [=[Verstecke/suche nach Gegenständen und erstelle/benutze deine Verstecke.

Das Dropsystem funktioniert nicht in Dungeons/Arenen/Schlachtfeldern.]=],
	["EDITOR_BOTTOM"] = "Unten",
	["EDITOR_CANCEL_TT"] = [=[Alle Änderungen des Objekts %s verwerfen (im Objekt selbst und in all seinen Kindobjekten).

|cffff9900Ungespeicherte Änderungen gehen verloren!]=],
	["EDITOR_CONFIRM"] = "Bestätigen",
	["EDITOR_HEIGHT"] = "Höhe",
	["EDITOR_ICON"] = "Icon auswählen",
	["EDITOR_ICON_SELECT"] = "Klicke um ein Icon zu wählen.",
	["EDITOR_ID_COPY"] = "Kopiere ID",
	["EDITOR_ID_COPY_POPUP"] = "Du kannst unten die Objekt-Id kopieren, wenn du sie woanders einfügen willst.",
	["EDITOR_MAIN"] = "Übersicht",
	["EDITOR_MORE"] = "Mehr",
	["EDITOR_NOTES"] = "Freie Notizen",
	["EDITOR_PREVIEW"] = "Vorschau",
	["EDITOR_SAVE_TT"] = "Alle Änderungen des Objekts %s speichern (betrifft das Objekt selbst und alle Kind-Objekte). Die Versionsnummer wird automatisch erhöht.",
	["EDITOR_TOP"] = "Oben",
	["EDITOR_WARNINGS"] = [=[%s Warnungen.

|cffff9900%s|r

Trotzdem speichern?]=],
	["EDITOR_WIDTH"] = "Breite",
	["EFFECT_CAT_CAMERA"] = "Kamera",
	["EFFECT_CAT_CAMERA_LOAD"] = "Lade Kamera",
	["EFFECT_CAT_CAMERA_LOAD_TT"] = "Setzt die Kamera des Spielers auf eine vorher gespeicherte Position.",
	["EFFECT_CAT_CAMERA_SAVE"] = "Speichere Kamera",
	["EFFECT_CAT_CAMERA_SAVE_TT"] = "Speichert die derzeitige Kameraposition des Spielers in eine der 5 verfügbaren Speicherplätze.",
	["EFFECT_CAT_CAMERA_SLOT"] = "Platznummer",
	["EFFECT_CAT_CAMERA_SLOT_TT"] = "Index eines verfügbaren Platzes, von 1 bis 5.",
	["EFFECT_CAT_CAMERA_ZOOM_DISTANCE"] = "Zoomabstand",
	["EFFECT_CAT_CAMERA_ZOOM_IN"] = "Hereinzoomen",
	["EFFECT_CAT_CAMERA_ZOOM_IN_TT"] = "Zoomt die Kamera über eine angegebene Distanz herein.",
	["EFFECT_CAT_CAMERA_ZOOM_OUT"] = "Herauszoomen",
	["EFFECT_CAT_CAMERA_ZOOM_OUT_TT"] = "Zoomt die Kamera über eine angegebene Distanz heraus.",
	["EFFECT_CAT_CAMPAIGN"] = "Kampagne und Quest",
	["EFFECT_CAT_SOUND"] = "Geräusche und Musik",
	["EFFECT_CAT_SPEECH"] = "Sprache und Emotes",
	["EFFECT_COOLDOWN_DURATION"] = "Abklingzeit",
	["EFFECT_COOLDOWN_DURATION_TT"] = "Die Abklingzeit, in Sekunden.",
	["EFFECT_DIALOG_ID"] = "Zwischensequenz-Id",
	["EFFECT_DIALOG_QUICK"] = "Schnelle Zwischensequenz",
	["EFFECT_DIALOG_QUICK_TT"] = "Erstelle eine einfache Zwischensequenz mit einem einzigen Schritt. Das Ziel des Spielers wird dabei als redend eingestellt.",
	["EFFECT_DIALOG_START"] = "Starte Zwischensequenz",
	["EFFECT_DIALOG_START_PREVIEW"] = "Starte Zwischensequenz %s.",
	["EFFECT_DIALOG_START_TT"] = "Starte eine Zwischensequenz. Wenn gerade eine Zwischensequenz abgespielt wird, wird sie unterbrochen und durch diese ersetzt.",
	["EFFECT_DISMOUNT"] = "Absteigen",
	["EFFECT_DISMOUNT_TT"] = "Lässt den Spieler von seinem aktuellen Reittier absteigen.",
	["EFFECT_DISPET"] = "Kampfhaustier freigeben.",
	["EFFECT_DISPET_TT"] = "Gibt das aktuell beschworene Kampfhaustier frei.",
	["EFFECT_DOC_CLOSE"] = "Dokument schließen",
	["EFFECT_DOC_CLOSE_TT"] = "Schließt das angezeigte Dokument. Wenn kein Dokument angezeigt wird, passiert nichts.",
	["EFFECT_DOC_DISPLAY"] = "Zeige Dokument",
	["EFFECT_DOC_DISPLAY_TT"] = "Zeigt dem Spieler ein Dokument. Wenn bereits ein Dokument angezeigt wird, wird dieses ersetzt.",
	["EFFECT_DOC_ID"] = "Dokument ID",
	["EFFECT_DOC_ID_TT"] = [=[Das anzuzeigende Dokument.

|cffffff00Bitte gib die ganze Dokument-Id an (Id der Eltern und innere Id).

|cff00ff00Hinweis: durch Kopieren und Einfügen vermeidest du Schreibfehler.]=],
	["EFFECT_ITEM_ADD"] = "Gegenstand hinzufügen",
	["EFFECT_ITEM_ADD_CRAFTED"] = "Hergestellt",
	["EFFECT_ITEM_ADD_CRAFTED_TT"] = "Mit dieser Option werden herstellbare Gegenstände (mit dem Anzeigeattribut \"herstellbar\") mit dem Spielernamen des Herstellers versehen: \"Hergestellt von xxx\" im Tooltip.",
	["EFFECT_ITEM_ADD_ID"] = "Gegenstands ID",
	["EFFECT_ITEM_ADD_ID_TT"] = [=[Hinzuzufügender Gegenstand.

|cffffff00Bitte gib die ganze Gegenstands-Id an (Id der Eltern und innere Id).

|cff00ff00Hinweis: durch Kopieren und Einfügen vermeidest du Schreibfehler.]=],
	["EFFECT_ITEM_ADD_PREVIEW"] = "Fügt %sx %s hinzu",
	["EFFECT_ITEM_ADD_QT"] = "Anzahl",
	["EFFECT_ITEM_ADD_QT_TT"] = [=[Die Anzahl der hinzuzufügenden Gegenstände.

|cff00ff00Beachte: Das Addon wird sein Bestes versuchen um die angegebene Menge zu erreichen, aber es kann sein, dass nicht alle Gegenstände hinzugefügt werden, zum Beispiel, wenn die Tasche voll ist oder der Spieler die maximal erlaubte Menge erreicht hat (Attribut "Einzigartig").]=],
	["EFFECT_ITEM_ADD_TT"] = "Fügt Gegenstände deiner Tasche hinzu.",
	["EFFECT_ITEM_BAG_DURABILITY"] = "Beschädige/repariere Behälter",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD"] = "Typ",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE"] = "Schaden",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE_TT"] = "Beschädige den übergeordneten Behälter. Die Gesundheit dieses Behälters kann nicht unter Null sinken.",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL"] = "Reparieren",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL_TT"] = "Repariert den übergeordneten Behälter. Dessen Haltbarkeit kann nicht die maximale Haltbarkeit überschreiten.",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_1"] = "|cff00ff00Repariert|cffffff00 den übergeordneten Behälter um %s Haltbarkeitspunkte.",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_2"] = "|cffff0000Beschädigt|cffffff00 den übergeordneten Behälter um %s Haltbarkeitspunkte.",
	["EFFECT_ITEM_BAG_DURABILITY_TT"] = [=[Repariert oder beschädigt den übergeordneten Behälter.

|cff00ff00Funktioniert nur bei Behältern mit einem Haltbarkeitswert.]=],
	["EFFECT_ITEM_BAG_DURABILITY_VALUE"] = "Haltbarkeitspunkt",
	["EFFECT_ITEM_BAG_DURABILITY_VALUE_TT"] = "Die Anzahl der Haltbarkeitspunkte, die zur Haltbarkeit des übergeordneten Behälters addiert/subtrahiert werden sollen.",
	["EFFECT_ITEM_CONSUME"] = "Gegenstand verbrauchen",
	["EFFECT_ITEM_CONSUME_TT"] = "Verbraucht den benutzten Gegenstand und zerstört ihn.",
	["EFFECT_ITEM_COOLDOWN"] = "Abklingzeit starten",
	["EFFECT_ITEM_COOLDOWN_PREVIEW"] = "Dauer: %s Sekunde(n)",
	["EFFECT_ITEM_COOLDOWN_TT"] = "Startet eine Abklingzeit für diesen Gegenstand.",
	["EFFECT_ITEM_DICE"] = "Würfeln",
	["EFFECT_ITEM_DICE_PREVIEW"] = "Würfle %s",
	["EFFECT_ITEM_DICE_PREVIEW_STORED"] = "Würfle %s und speichere das Ergebnis in %s",
	["EFFECT_ITEM_DICE_ROLL"] = "Würfeln",
	["EFFECT_ITEM_DICE_ROLL_TT"] = [=[Gib eine Würfeleinstellung ähnlich dem Befehl "/trp3 roll" ein.

|cff00ff00Beispiel: 1d20, 3d6 usw.]=],
	["EFFECT_ITEM_DICE_ROLL_VAR"] = "Variablenname (optional)",
	["EFFECT_ITEM_DICE_ROLL_VAR_TT"] = [=[Der Name der Variable, in der du das Würfelergebnis speichern möchtest.
Leer lassen um nicht zu speichern.]=],
	["EFFECT_ITEM_LOOT"] = "Zeige Beute/Lege Beute ab",
	["EFFECT_ITEM_LOOT_DROP"] = "Gegenstände fallen lassen",
	["EFFECT_ITEM_LOOT_DROP_TT"] = [=[Lässt Gegenstäne auf den Boden fallen anstatt dem Spieler ein Beutefenster zu zeigen.
Der Spieler kann dann die gewünschten Gegenstände mit der Gegestandssuche plündern.]=],
	["EFFECT_ITEM_LOOT_NAME"] = "Name der Quelle",
	["EFFECT_ITEM_LOOT_NAME_TT"] = "Dies wird der Name des Beutebehälters sein.",
	["EFFECT_ITEM_LOOT_PREVIEW_1"] = "Lasse %s Gegenstände auf den Boden fallen.",
	["EFFECT_ITEM_LOOT_PREVIEW_2"] = "Zeige Beutefenster mit %s Gegenständen.",
	["EFFECT_ITEM_LOOT_SLOT"] = "Klicke auf einen Platz um ihn einzustellen.",
	["EFFECT_ITEM_LOOT_TT"] = "Zeigt dem Spieler einen Beutebehälter oder lässt Beute an der Stelle des Spielers auf den Boden fallen.",
	["EFFECT_ITEM_REMOVE"] = "Zerstöre Gegenstand",
	["EFFECT_ITEM_REMOVE_ID_TT"] = [=[Der zu löschende Gegenstand

|cffffff00Bitte gib die ganze Id ein (Eltern-Id und innere Id)

|cff00ff00Hinweis: mit Kopieren und Einfügen vermeidest du Schreibfehler.]=],
	["EFFECT_ITEM_REMOVE_PREVIEW"] = "Zerstört %sx %s",
	["EFFECT_ITEM_REMOVE_QT_TT"] = "Die Anzahl der zu löschenden Gegenstände.",
	["EFFECT_ITEM_REMOVE_TT"] = "Zerstöre Gegenstände aus deinem Inventar.",
	["EFFECT_ITEM_SOURCE"] = "Suche in",
	["EFFECT_ITEM_SOURCE_1"] = "Gesamtes Inventar",
	["EFFECT_ITEM_SOURCE_1_ADD_TT"] = "Fügt den oder die Gegenstände dem Charakterinventar an irgendeinem Platz zu, angefangen mit dem Hauptinventar.",
	["EFFECT_ITEM_SOURCE_1_SEARCH_TT"] = "Suche den/die Gegenstände im gesamten Charakterinventar.",
	["EFFECT_ITEM_SOURCE_1_TT"] = "Suche den/die Gegenstände im gesamten Charakterinventar.",
	["EFFECT_ITEM_SOURCE_2"] = "Übergeordneter Behälter",
	["EFFECT_ITEM_SOURCE_2_ADD_TT"] = [=[Für den/die Gegenstände nur dessen übergeordnetem Behälter (und darin befindlichen) zu.

|cffff9900Funktioniert nur, wenn sich dieses Skript innerhalb eines Gegenstands befindet.]=],
	["EFFECT_ITEM_SOURCE_2_SEARCH_TT"] = [=[Suche den/die Gegenstände nur dessen übergeordnetem Behälter (und darin befindlichen).

|cffff9900Funktioniert nur, wenn sich dieses Skript innerhalb eines Gegenstands befindet.]=],
	["EFFECT_ITEM_SOURCE_2_TT"] = [=[Suche den/die Gegenstände nur dessen übergeordnetem Behälter (und darin befindlichen).

|cffff9900Funktioniert nur, wenn sich dieses Skript innerhalb eines Gegenstands befindet.]=],
	["EFFECT_ITEM_SOURCE_3"] = "Dieser Gegenstand",
	["EFFECT_ITEM_SOURCE_3_ADD_TT"] = [=[Für den/die Gegenstände nur diesem Gegenstand (und darin befindlichen) zu.

|cffff9900Funktioniert nur, wenn sich dieses Skript in einem Gegenstandskontext befindet und wenn dieser Gegenstand ein Behälter ist.]=],
	["EFFECT_ITEM_SOURCE_3_SEARCH_TT"] = [=[Sucht den/die Gegenstände nur in diesem Gegenstand (und darin befindlichen).

|cffff9900Funktioniert nur, wenn sich dieses Skript in einem Gegenstandskontext befindet und wenn dieser Gegenstand ein Behälter ist.]=],
	["EFFECT_ITEM_SOURCE_3_TT"] = [=[Sucht den/die Gegenstände nur in diesem Gegenstand (und darin befindlichen).

|cffff9900Funktioniert nur, wenn sich dieses Skript in einem Gegenstandskontext befindet und wenn dieser Gegenstand ein Behälter ist.]=],
	["EFFECT_ITEM_SOURCE_ADD"] = "Hinzufügen zu",
	["EFFECT_ITEM_SOURCE_ID"] = "Du kannst eine Gegenstands-Id auswählen, nach der du suchen möchtest, oder das Feld frei lassen, wenn du nach allen Gegenständen suchen möchtest.",
	["EFFECT_ITEM_SOURCE_SEARCH"] = "Suchen in",
	["EFFECT_ITEM_USE"] = "Benutze Gegenstand in Behälter",
	["EFFECT_ITEM_USE_PREVIEW"] = "Benutze Gegenstand in Platz %s",
	["EFFECT_ITEM_USE_TT"] = [=[Benutze einen Gegenstand an einem Platz im Behälter.

|cffff9900Funktioniert nur, wenn der Arbeitsablauf von einem Behälter ausgelöst wird.]=],
	["EFFECT_ITEM_WORKFLOW"] = "Arbeitsablauf des Gegenstands ausführen",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_C"] = "Löst Arbeitsablauf %s im Kind-Gegenstand am Platz %s aus.",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_P"] = "Löst Arbeitsablauf %s im Eltern-Gegenstand am Platz %s aus.",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_S"] = "Löst Arbeitsablauf %s im Gegenstand auf gleicher Ebene am Platz %s aus.",
	["EFFECT_ITEM_WORKFLOW_TT"] = "Beginne einen Arbeitsablauf des übergeordneten Behälters oder den eines Gegenstandes in einem bestimmten Kind-Gegenstand (Nur für Behälter).",
	["EFFECT_MISSING"] = "Dieser Effekt (%s) ist nicht bekannt. Du solltest ihn entfernen.",
	["EFFECT_OPERATION"] = "Rechenoperation",
	["EFFECT_OPERATION_TYPE"] = "Art der Rechenoperation",
	["EFFECT_OPERATION_TYPE_ADD"] = "Addition",
	["EFFECT_OPERATION_TYPE_DIV"] = "Division",
	["EFFECT_OPERATION_TYPE_INIT"] = "Initialisierung",
	["EFFECT_OPERATION_TYPE_INIT_TT"] = "Initialisiert die Variable mit einem Wert, sofern die Variable noch nicht existiert.",
	["EFFECT_OPERATION_TYPE_MULTIPLY"] = "Multiplikation",
	["EFFECT_OPERATION_TYPE_SET"] = "Wertzuweisung",
	["EFFECT_OPERATION_TYPE_SET_TT"] = "Weist der Variable einen Wert zu, auch wenn sie bereits initialisiert wurde.",
	["EFFECT_OPERATION_TYPE_SUB"] = "Subtraktion",
	["EFFECT_OPERATION_VALUE"] = "Wert",
	["EFFECT_PROMPT"] = "Eingabeaufforderung",
	["EFFECT_PROMPT_CALLBACK"] = "Rückruf-Arbeitsablauf (optional)",
	["EFFECT_PROMPT_CALLBACK_TT"] = [=[Der Name des Arbeitsablaufs, der nach der Eingabe ausgeführt wird.

Optionales Feld, leer lassen um keinen Arbeitsablauf auszuführen.

Fall gesetzt, wird der Arbeitsablauf ausgeführt und die Eingabe ist unter obigem Variablennamen verfügbar.

|cffffff00Warnung: Der Rückruf wird auch ausgeführt wenn der Spieler "Abbrechen" drückt. In diesem Fall bleibt die Variable unberührt, falls sie existiert.]=],
	["EFFECT_PROMPT_DEFAULT"] = "Voreinstellung",
	["EFFECT_PROMPT_DEFAULT_TT"] = "Die Voreinstellung für die Eingabe.",
	["EFFECT_PROMPT_PREVIEW"] = "Benutzereingabe in Variable |cff00ff00%s|r schreiben.",
	["EFFECT_PROMPT_TEXT"] = "Text der Eingabeaufforderung",
	["EFFECT_PROMPT_TEXT_TT"] = "Der Text, der über dem Eingabefeld erscheint.",
	["EFFECT_PROMPT_TT"] = [=[Erfrage eine Benutzereingabe und speichere sie in einer Variable. Optional mit anschließendem Arbeitsablauf.

|cffff0000WARNUNG: Dieser Effekt wird asynchron ausgeführt.]=],
	["EFFECT_PROMPT_VAR"] = "Variablenname",
	["EFFECT_PROMPT_VAR_TT"] = "Name der Variable, die die Benutzereingabe enthält.",
	["EFFECT_QUEST_GOTOSTEP"] = "Ändere Questschritt",
	["EFFECT_QUEST_GOTOSTEP_ID"] = "Questschritt ID",
	["EFFECT_QUEST_GOTOSTEP_ID_TT"] = [=[Verwende den Browser, um Deinen Questschritt auszuwählen (die Quest und der Questschritt müssen vorhanden sein, bevor er mit diesem Effekt verknüpft wird). 

Wenn Dein Questschritt nicht im Browser erscheint, speichere Deine Kampagne und versuche es erneut.]=],
	["EFFECT_QUEST_GOTOSTEP_PREVIEW"] = "Gehe zu Schritt %s.",
	["EFFECT_QUEST_GOTOSTEP_TT"] = [=[Einen Questschritt ändern.

|cffff9900Funktioniert nur, wenn die Quest Teil der aktuell aktiven Kampagne ist und die Quest bereits im Questlog enthüllt wurde.]=],
	["EFFECT_QUEST_OBJ_ID"] = "Ziel ID",
	["EFFECT_QUEST_OBJ_ID_TT"] = "Gebe die Ziel ID ein. Gebe nur die Ziel ID ein, nicht die vollständige Kampagne-Quest-Ziel ID",
	["EFFECT_QUEST_REVEAL_OBJ"] = "Questziel aufdecken",
	["EFFECT_QUEST_REVEAL_OBJ_DONE"] = "Questziel erfüllen",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_PREVIEW"] = "Questziel erfüllen: %s für %s",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_TT"] = [=[Markiert ein Questziel als erfüllt.

|cffff9900Funktioniert nur, wenn die Quest Teil der aktiven Kampagne ist, bereits im Questlog aufegedeckt wurde und wenn das Questziel aufgedeckt wurde.]=],
	["EFFECT_QUEST_REVEAL_OBJ_PREVIEW"] = "Questziel aufdecken: %s für %s",
	["EFFECT_QUEST_REVEAL_OBJ_TT"] = [=[Deckt ein Questziel auf.

|cffff9900Funktioniert nur, wenn die Quest Teil der aktiven Kampagne ist und wenn die Quest im Questlog aufgedeckt wurde.]=],
	["EFFECT_QUEST_START"] = "Decke Quest auf",
	["EFFECT_QUEST_START_ID"] = "Quest ID",
	["EFFECT_QUEST_START_ID_TT"] = [=[Benutze die Questliste um eine Quest auszuwählen (diese muss existieren bevor du sie mit diesem Effekt verknüpfst)

Wenn deine Quest nicht in der Liste erscheint, speichere die Kampagne und versuche es erneut.]=],
	["EFFECT_QUEST_START_PREVIEW"] = "Quest %s aufdecken.",
	["EFFECT_QUEST_START_TT"] = [=[Deckt eine Quest im Questlog auf.

|cffff9900Funktioniert nur, wenn die Quest Teil der aktiven Kampagne ist.]=],
	["EFFECT_RANDSUM"] = "Zufälliges Kampfhaustier beschwören",
	["EFFECT_RANDSUM_PREVIEW_FAV"] = "Beschwört ein zufälliges |c0000ff00Lieblings|r-Kampfhaustier.",
	["EFFECT_RANDSUM_PREVIEW_FULL"] = "Beschwört ein zufälliges Kampfhaustier aus deiner |c0000ff00gesamten Sammlung|r.",
	["EFFECT_RANDSUM_SUMMON_FAV"] = "Nur Lieblingshaustiere beschwören",
	["EFFECT_RANDSUM_TT"] = "Zufälliges Kampfhaustier beschwören.",
	["EFFECT_RUN_WORKFLOW"] = "Arbeitsablauf ausführen",
	["EFFECT_RUN_WORKFLOW_ID"] = "Arbeitsablauf-Id",
	["EFFECT_RUN_WORKFLOW_ID_TT"] = "Die Id des auszuführenden Arbeitsablaufs.",
	["EFFECT_RUN_WORKFLOW_PREVIEW"] = "Starte Arbeitsablauf %s in %s.",
	["EFFECT_RUN_WORKFLOW_SLOT"] = "Platz-Id",
	["EFFECT_RUN_WORKFLOW_SLOT_TT"] = "Der Index des auszulösenden Platzes im Behälter. Plätze werden von oben links nach unten rechts nummeriert, beginnend bei 1.",
	["EFFECT_RUN_WORKFLOW_TT"] = "Führt einen Arbeitsablauf aus. Alle Variablen werden an den aufgerufenen Arbeitsablauf weitergegeben.",
	["EFFECT_SCRIPT"] = "Eingeschränktes Lua-Skript ausführen",
	["EFFECT_SCRIPT_I_EFFECT"] = "Effekt einfügen",
	["EFFECT_SCRIPT_I_EFFECT_TT"] = [=[Fügt eine Effektfunktion an der Stelle des Cursors ein.
Die Funktion hat die Signatur:
|cff00ffffeffect( effectID, args, arg1, arg2, ...);|r
- |cff00ffffEffect ID|r: Effekt-Id, kann im Quelltext des Addons gefunden werden.
- |cff00ffffargs|r: Argumente: Sollten immer in der Variable "args" stehen.
- |cff00ffffEffekt-Argumente argX|r: Alle Effekt-Argumente können im Quelltext des Addons gefunden werden.
|cffffff00Bitte behalte "args" als zweiten Parameter.|rEr wird von der Effekt-Funktion benötigt und enthält alle Variablen des Arbeitsablaufs.
|cff00ff00Wir werden nicht (bis auf weiteres) alle Effekt-Ids und Argumente ausführlich dokumentieren, da wir davon ausgehen, dass dieser Effekt von Benutzern verwendet wird, die sich mit dem Quelltext des Addons auskennen :-)]=],
	["EFFECT_SCRIPT_SCRIPT"] = "Lua-Code",
	["EFFECT_SCRIPT_SCRIPT_TT"] = [=[Diese Skript wird in einer abegesicherten Umgebung ausgeführt, in der du die Lua-Syntax (tables, string, math, ...) und die Extended-Funktion |cff00ff00effect|r verwenden kannst.
|cffff0000Du hast hier keinen Zugriff auf die API des Spiels!|r
Ein benutzerdefiniertes Skript läuft weniger effizient, weil es bei jeder Ausführung kompiliert wird, während ein Effekt in einem Arbeitsablauf nur einmal kompiliert wird.
|cffff9900Halte das Skript also klein und benutze es nur, wenn nötig.]=],
	["EFFECT_SCRIPT_TT"] = "Führt Lua-Code in einer sicheren, eingeschränkten Umgebung aus.",
	["EFFECT_SECURE_MACRO_ACTION_NAME"] = "Makro ausführen",
	["EFFECT_SECURE_MACRO_BLOCKED"] = "Blockierter Makro-Effekt:",
	["EFFECT_SECURE_MACRO_DESCRIPTION"] = [=[Führe benutzerdefinierte Makrobefehle aus:

|cffccccccBemerkungen:
- Dieser Effekt wird nur ausgeführt, wenn der Arbeitsablauf durch eine Benutzerinteraktion ausgelöst wird (Gegenstand benutzen, Anklicken einer Dialog-Auswahl in einer Zwischensequenz).
- Dieser Effekt ist nicht von Verzögerungen innerhalb des Arbeitsablaufs betroffen. Da Makros kritische Aktionen ausführen können, müssen alle Makro-Effekte sofort nach der Benutzeraktion ausgeführt werden.
- Dieser Effekt WIRD von Bedingungen beeinflusst und kann mit Variablen umgehen.
- Dieser Effekt wird NIEMALS im Kampf ausgeführt oder wenn er durch ein Ereignis innerhalb einer Kampagne ausgelöst wird.
|r]=],
	["EFFECT_SECURE_MACRO_HELP"] = [=[Du kannst alle üblichen Makrobefehle verwenden, auch benutzerdefinierte /kommandos anderer Addons.

Auch Variablen aus Total RP 3: Extended sind möglich
(|cffcccccc${meine_variable}|r).]=],
	["EFFECT_SECURE_MACRO_HELP_TITLE"] = "Makrobefehle",
	["EFFECT_SHEATH"] = "Waffe ziehen/wegstecken",
	["EFFECT_SHEATH_TT"] = "Ziehe/verstecke die Waffen des Charakters.",
	["EFFECT_SIGNAL"] = "Signal senden",
	["EFFECT_SIGNAL_ID"] = "Signal-Id",
	["EFFECT_SIGNAL_ID_TT"] = "Dies ist die Id deines Signals. Es kann getestet werden, wenn Bedingungen und Arbeitsabläufe durch das Spielereignis |cff00ff00TRP3_SIGNAL|r ausgelöst werden.",
	["EFFECT_SIGNAL_PREVIEW"] = "|cffffff00Sende Signal-Id:|r %s|cffffff00 mit Wert:|r %s",
	["EFFECT_SIGNAL_TT"] = [=[Sendet ein Signal mit einer Id und einem Wert an das Ziel des Spielers.

Dieses Signal kann von Kampagnen-, Quest- oder Questschritt-Ereignisverknüpfungen mit dem Ereignis |cff00ff00TRP3_SIGNAL|r behandelt werden.]=],
	["EFFECT_SIGNAL_VALUE"] = "Signalwert",
	["EFFECT_SIGNAL_VALUE_TT"] = "Deine Signaldaten. Diese können abgerufen werden wenn Bedingungen und Arbeitsabläufe auf das Ereignis |cff00ff00TRP3_SIGNAL|r reagieren und wie folgt in Texte eingefügt werden: |cff00ff00${event.2}|r.",
	["EFFECT_SOUND_ID_LOCAL"] = "Ton abspielen",
	["EFFECT_SOUND_ID_LOCAL_PREVIEW"] = "Spiele Sound ID %s in Channel %s in einem Radius von %s Meter.",
	["EFFECT_SOUND_ID_LOCAL_STOP"] = "Lokale Klänge anhalten",
	["EFFECT_SOUND_ID_LOCAL_STOP_TT"] = "Hält einen/alle Klänge eines bestimmten Kanals für Spieler in deiner Umgebung an.",
	["EFFECT_SOUND_ID_LOCAL_TT"] = "Spielt einen Klang für Spieler in deiner Umgebung ab.",
	["EFFECT_SOUND_ID_SELF"] = "Klang-Id abspielen",
	["EFFECT_SOUND_ID_SELF_CHANNEL"] = "Kanal",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE"] = "Umgebung",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE_TT"] = [=[Der Kanal für Umgebungsgeräusche, verwendet die Lautstärkeeinstellung "Umgebung".

Mehrere Umgebungsgeräusche können gleichzeitig abgespielt werden.

|cffff9900Bitte verwende diese Effekt nicht um Musik abzuspielen, da die aktuelle Spielmusik nicht angehalten wird und sich beide Musikstücke überlagern würden. Wenn du Musik abpielen willst, benutze den Effekt "Musik".]=],
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX"] = "Sound/SFX",
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX_TT"] = [=[Sound bzw. SFX beinhaltet Geräusche und verwendet die Spiellautstärkeeinstellung "Sound".

Meherere verschiedene SFX-Geräusche können gleichzeitig abgespielt werden.]=],
	["EFFECT_SOUND_ID_SELF_ID"] = "Sound ID",
	["EFFECT_SOUND_ID_SELF_ID_TT"] = [=[Die Id ist ein interner Bezeichner für Spielklänge.

|cff00ff00Du kannst Klang-Ids auf Webseiten wie Wowhead finden.

|cffff9900Leer lassen um sämtliche Klänge des Kanals anzuhalten.]=],
	["EFFECT_SOUND_ID_SELF_PREVIEW"] = "Spielt Sound ID %s im Channel %s ab.",
	["EFFECT_SOUND_ID_SELF_TT"] = "Spielt einen Klang in einem bestimmten Kanal ab. Nur der Spieler selbst wird ihn hören.",
	["EFFECT_SOUND_ID_STOP"] = "Klang-Id anhalten",
	["EFFECT_SOUND_ID_STOP_ALL_PREVIEW"] = "Hält |cff00ff00alle|cffffff00 Klänge im Kanal %s an.",
	["EFFECT_SOUND_ID_STOP_PREVIEW"] = "Hält Klang-Id %s im Kanal %s an.",
	["EFFECT_SOUND_ID_STOP_TT"] = "Hält einen oder alle Klänge eines bestimmten Kanals an.",
	["EFFECT_SOUND_LOCAL_DISTANCE"] = "Abspielradius",
	["EFFECT_SOUND_LOCAL_DISTANCE_TT"] = "Legt den Radius fest, innerhalb dessen Spieler den Klang hören werden.",
	["EFFECT_SOUND_MUSIC_LOCAL"] = "Umgebungsmusik abspielen",
	["EFFECT_SOUND_MUSIC_LOCAL_PREVIEW"] = "spielt die Musik \"%s\" in einem Radius von %s Meter ab.",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP"] = "Lokale Musik anhalten",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP_TT"] = [=[Wenn du den Effekt "Lokale Musik abspielen" verwendest, wird die Musik in einer Schleife für alle Spieler in der Nähe abgespielt bis das Spiel ein anderes Musikstück abspielt (z.B. wenn der Spieler das Gebiet wechselt), oder wenn sie jeder Spieler manuell anhält, oder bis du diesen Effekt benutzt.

|cffff9900Beachte, dass der Effekt nur Musik anhält, die das Addon aktiviert hat, aber nicht die normale Spielmusik]=],
	["EFFECT_SOUND_MUSIC_LOCAL_TT"] = "Spielt Musik für umliegende Spieler ab.",
	["EFFECT_SOUND_MUSIC_SELF"] = "Musik abspielen",
	["EFFECT_SOUND_MUSIC_SELF_PATH"] = "Musikpfad",
	["EFFECT_SOUND_MUSIC_SELF_PATH_TT"] = [=[Pfad der Musikdatei innerhalb der Spieldateien.

|cffff9900Der Pfad darf nicht den Teil "Sounds\Music\" und auch nicht die Endung ".mp3" enthalten.]=],
	["EFFECT_SOUND_MUSIC_SELF_PREVIEW"] = "Musik abspielen: %s",
	["EFFECT_SOUND_MUSIC_SELF_TT"] = [=[Spielt Musik ab, die nur der Spieler hören wird.

Beachte, dass die Musik solange wiederholt wird bis das Spiel von selbst Musik abspielt (z.B. bei Betreten eines anderen Gebiets) oder der Effekt "Musik anhalten" eintritt. Außerdem kann der Spieler die Musik in der Sound-Historie jederzeit selbst anhalten.]=],
	["EFFECT_SOUND_MUSIC_STOP"] = "Musik stoppen",
	["EFFECT_SOUND_MUSIC_STOP_TT"] = [=[Bei Benutzung des Effekts "Musik abspielen" wird diese solange wiederholt bis das Spiel etwas anderes abspielt (z.B. bei Betreten eines neuen Gebiets), oder bis sie der Spieler manuell anhält, oder durch Benutzung dieses Effekts.

|cffff9900Beachte, dass dieser Effekt nur Musik des Addons anhält, aber nicht die Musik des Spiels.]=],
	["EFFECT_SOUND_PLAY"] = "Abspielen",
	["EFFECT_SOURCE"] = "Quelle",
	["EFFECT_SOURCE_CAMPAIGN"] = "Aktive Kampagne",
	["EFFECT_SOURCE_CAMPAIGN_TT"] = "Suche die Variable innerhalb der aktiven Kampagne, sofern es eine solche gibt.",
	["EFFECT_SOURCE_OBJECT"] = "Objekt",
	["EFFECT_SOURCE_OBJECT_TT"] = [=[Suche die Variable im Objekt, das den Arbeitsablauf beinhaltet.

Funktioniert nur, wenn das Objekt ein Gegenstand, eine Kampagne, eine Quest oder ein Questschritt ist.

Im Fall einer Kampagne, einer Quest oder eines Questschritts wird die Variable innerhalb der Kampagne gesucht (global für die gesamte Kampagne).]=],
	["EFFECT_SOURCE_PARENT"] = "Übergeordneter Behälter",
	["EFFECT_SOURCE_PARENT_TT"] = "Suche nach dem Arbeitsablauf im übergeordneten Behälter.",
	["EFFECT_SOURCE_SLOT"] = "Gegenstand in Platz (untergeordnet)",
	["EFFECT_SOURCE_SLOT_B"] = "Gegenstand in Platz (gleichrangig)",
	["EFFECT_SOURCE_SLOT_B_TT"] = "Suche nach dem Arbeitsablauf innerhalb des Gegenstands an einem bestimmten Platz des selben übergeordneten Behälters.",
	["EFFECT_SOURCE_SLOT_TT"] = [=[Suche nach dem Arbeitsablauf innerhalb des Gegenstands an einem bestimmten Platz des Behälters.
Funktioniert nur bei Behältern.]=],
	["EFFECT_SOURCE_V"] = "Quelle der Variable",
	["EFFECT_SOURCE_W"] = "Quelle des Arbeitsablaufs",
	["EFFECT_SOURCE_WORKFLOW"] = "Arbeitsablauf",
	["EFFECT_SOURCE_WORKFLOW_TT"] = "Suche nach der Variable innerhalb des Arbeitsablaufs. Die Variable besteht nur während der Ausführung des Arbeitsablaufs und wird danach gelöscht.",
	["EFFECT_SPEECH_NAR"] = "Sprechen: Erzähler",
	["EFFECT_SPEECH_NAR_DEFAULT"] = "Der Schnee glänzt weiß auf den Bergen heut' Nacht ...",
	["EFFECT_SPEECH_NAR_TEXT_TT"] = "Bitte stelle nicht den senkrechten Strich (\"Pipe\" ||) voran.",
	["EFFECT_SPEECH_NAR_TT"] = [=[Zeigt eine Erzählung als formatiertes Emote.

|cff00ff00Hat denselben Effekt wie ein Emote mit führendem senkrechten Strich || ("Pipe"). Wird im Chat anderer TRP-Benutzer formatiert.]=],
	["EFFECT_SPEECH_NPC"] = "Sprechen: NSC",
	["EFFECT_SPEECH_NPC_DEFAULT"] = "Willst du einen Schneemann bauen?",
	["EFFECT_SPEECH_NPC_NAME"] = "Name des NSCs",
	["EFFECT_SPEECH_NPC_NAME_TT"] = "Der Name des NSCs.",
	["EFFECT_SPEECH_NPC_TT"] = [=[Lässt einen NSC in einem formatierten Emote sprechen.

|cff00ff00Hat denselben Effekt wie ein Emote mit führendem senkrechten Strich || ("Pipe"), einem NSC-Namen und Text. Wird im Chat anderer TRP-Benutzer formatiert.]=],
	["EFFECT_SPEECH_PLAYER"] = "Sprechen: Spieler",
	["EFFECT_SPEECH_PLAYER_TT"] = "Lässt den Spieler sprechen, schreien oder /e-moten.",
	["EFFECT_SPEECH_TYPE"] = "Sprechart",
	["EFFECT_SUMMOUNT"] = "Reittier beschwören",
	["EFFECT_SUMMOUNT_ACTION_TT"] = "Wähle ein Reittier",
	["EFFECT_SUMMOUNT_NOMOUNT"] = "Kein Reittier ausgewählt.",
	["EFFECT_SUMMOUNT_RANDOMMOUNT"] = "Zufälliges Lieblingsreittier",
	["EFFECT_SUMMOUNT_TT"] = "Beschwört ein bestimmtes Reittier, falls verfügbar.",
	["EFFECT_TEXT"] = "Text anzeigen",
	["EFFECT_TEXT_PREVIEW"] = "Angezeigter Text",
	["EFFECT_TEXT_TEXT"] = "Text",
	["EFFECT_TEXT_TEXT_DEFAULT"] = [=[Hallo.
Wie geht's dir?]=],
	["EFFECT_TEXT_TEXT_TT"] = "Der anzuzeigende Text.",
	["EFFECT_TEXT_TT"] = [=[Zeigt einen Text an.
Verschiedene Ausgabearten sind möglich.]=],
	["EFFECT_TEXT_TYPE"] = "Textart",
	["EFFECT_TEXT_TYPE_1"] = "Text im Chatfenster",
	["EFFECT_TEXT_TYPE_2"] = "Benachrichtigungsfenster",
	["EFFECT_TEXT_TYPE_3"] = "Schlachtzugswarnung",
	["EFFECT_TEXT_TYPE_4"] = "Warnhinweis",
	["EFFECT_USE_SLOT"] = "Platznummer im Behälter",
	["EFFECT_USE_SLOT_TT"] = "Die Platznummern sind von links nach rechts und von oben nach unten nummeriert.",
	["EFFECT_VAR"] = "Variablenname",
	["EFFECT_VAR_INDEX"] = "Argument-Index",
	["EFFECT_VAR_INDEX_TT"] = [=[Der Index des Arguments.

Willst du bspw. das dritte Argument eines Ereignisses abfragen, gib "3" ein.]=],
	["EFFECT_VAR_OBJECT_CHANGE"] = "Variablenoperation",
	["EFFECT_VAR_OBJECT_CHANGE_TT"] = [=[Führt eine Operation mit einer Variablen aus.

|cffff9900Für Rechenoperationen: Falls die Variable nicht existiert oder keine Zahl ist, wird sie wie 0 behandelt.]=],
	["EFFECT_VAR_OPERAND"] = "Dynamischer Wert",
	["EFFECT_VAR_OPERAND_CONFIG"] = "Wert einstellen",
	["EFFECT_VAR_OPERAND_CONFIG_NO"] = "Keine Einstellungen für diesen Wert",
	["EFFECT_VAR_OPERAND_TT"] = "Weist der Variablen einen dynamischen Wert zu. Du kannst auf alle Werte zugreifen, die auch in Bedingungen verfügbar sind.",
	["EFFECT_VAR_VALUE"] = "Wert",
	["EFFECT_W_CAMPAIGN_TT"] = "Suche nach dem Arbeitsablauf innerhalb der derzeit aktiven Kampagne.",
	["EFFECT_W_OBJECT_TT"] = "Suche nach dem Arbeitsablauf innerhalb des selben Objekts.",
	["ERROR_MISSING_ARG"] = "Fehlendes Argument %1$s während des Funktionsaufrufs %2$s.",
	["EX_SOUND_HISTORY"] = "Soundhistorie",
	["EX_SOUND_HISTORY_CLEAR"] = "Zurücksetzen",
	["EX_SOUND_HISTORY_EMPTY"] = "Es wurde kein Sound abgespielt.",
	["EX_SOUND_HISTORY_LINE"] = "%s hat SoundID %s im Channel %s abgespielt.",
	["EX_SOUND_HISTORY_REPLAY"] = "Wiederholen",
	["EX_SOUND_HISTORY_STOP"] = "Stop",
	["EX_SOUND_HISTORY_STOP_ALL"] = "Alles stoppen",
	["EX_SOUND_HISTORY_TT"] = [=[Liste der abgespielten Klänge, einschließlich ihrer Quelle und der Möglichkeit sie anzuhalten, wenn sie noch abgespielt werden.

|cffffff00Klicken:|r Soundhistorie öffnen
|cffffff00Rechtsklicken:|r Alle Klänge bzw. Musik anhalten]=],
	["IN_INNER"] = "Innere Objekte",
	["IN_INNER_ADD"] = "Inneres Objekt hinzufügen",
	["IN_INNER_ADD_COPY"] = "Kopie eines bestehenden Objekts hinzufügen",
	["IN_INNER_ADD_NEW"] = "Neues Objekt erstellen",
	["IN_INNER_COPY_ACTION"] = "Objektinhalt kopieren",
	["IN_INNER_DELETE_CONFIRM"] = "Inneres Objekt |cff00ffff\"%s\"|r |cff00ff00[%s]|r aus dem übergeordneten Objekt |cff00ff00[%s]|r entfernen? |cffff9900Das innere Objekt geht dabei verloren.",
	["IN_INNER_DELETE_TT"] = "Entferne dieses innere Objekt aus seinem übergeordneten Objekt.",
	["IN_INNER_EMPTY"] = [=[Keine inneren Objekte.

Mit der Schaltfläche unten kannst du eins hinzufügen.]=],
	["IN_INNER_ENTER_ID"] = "Gib die Id des neuen inneren Objekts ein",
	["IN_INNER_ENTER_ID_NO_SPACE"] = "Objekt-Ids dürfen keine Leerzeichen enthalten. Denk dran: Dies ist nicht der Objektname!",
	["IN_INNER_ENTER_ID_TT"] = [=[Ids von inneren Objekten müssen eindeutig innerhalb des übergeordneten Objekts sein.

|cffff9900Bitte verwende nur Kleinbuchstaben und Unterstriche. Alle anderen Zeichen werden in Unterstriche umgewandelt.]=],
	["IN_INNER_HELP"] = [=[Innere Objekte sind Objekte, die sich innerhalb eines übergeordneten Objekts befinden.
Wir sollten mit einigen Beispielen anfangen:
|cffff9900
- Du möchtest ein Gewehr erstellen, das man mit Patronen laden kann. Typischerweise würde das Gewehr das Hauptobjekt sein, während das Patronen-Objekt in dessen Inneren liegt.
- Ein Brief, der ein Dokument anzeigt. Das Dokument ist ein inneres Objekt des Briefs.
- Erstellen von Quests: Alle Gegenstände/Dokumente/Zwischensequenzen könnten innere Objekte der Quest sein.
|rDie Benutzung von inneren Objekten bringt mehrere Vorteile:
|cff00ff00
- Die Objektdaten werden tatsächlich innerhalb des beinhaltenden Objekts gespeichert. Das bedeutet, dass beide dieselbe Versionsnummer teilen und die Objektdaten werden immer zusammen mit dem übergeordneten Objekt übertragen.
- Du kannst die Objekt-Id frei wählen, da die übergeordnete Objekt-Id vorangestellt wird. Du kannst nur nicht zwei Objekte mit derselben Id im selben übergeordneten Objekt erzeugen.
- Innere Objekte bringen eine bessere Leistung.
- Die Navigation durch die Objekte wird erleichtert. Du kannst dir übergeordnete Objekte als Ordner vorstellen, in dem man Dateien speichert.
|rAlso ganz einfach: Wenn du ein Objekt erstellen möchtest, frage dich immer, ob es sinnvoll ist es als inneres Objekt eines anderen Objekts oder einer Quest zu ertsellen.
|cff00ff00Außerdem: Dokumente und Zwischensequenzen müssen innere Objekte sein.]=],
	["IN_INNER_HELP_TITLE"] = "Was sind innere Objekte?",
	["IN_INNER_ID"] = [=[Bitte gib eine neue Id für das innere Objekt |cff00ff00[%s]|r ein.

Alte Id: |cff00ffff"%s"|r]=],
	["IN_INNER_ID_ACTION"] = "Id ändern",
	["IN_INNER_ID_COPY"] = "Kopieren",
	["IN_INNER_ID_COPY_TT"] = "Du kannst dein inneres Objekt kopieren um es an anderer Stelle einzufügen.",
	["IN_INNER_LIST"] = "Innere Objekte",
	["IN_INNER_NO_AVAILABLE"] = "Diese innere Id ist nicht verfügbar!",
	["IN_INNER_PASTE_ACTION"] = "Objektinhalt einfügen",
	["IN_INNER_PASTE_CONFIRM"] = "Inhalt dieses inneren Objekts durch den vorher kopierten ersetzen?",
	["IN_INNER_S"] = "Inneres Objekt",
	["INV_PAGE_CAMERA_CONFIG"] = [=[Kameraeinstellungen:
   Rotation: %.2f]=],
	["INV_PAGE_CHARACTER_INSPECTION"] = "Charakter betrachten",
	["INV_PAGE_CHARACTER_INSPECTION_TT"] = "Betrachtet das Inventar des Charakters",
	["INV_PAGE_CHARACTER_INV"] = "Inventar",
	["INV_PAGE_EDIT_ERROR1"] = "Du musst der Urheber des Gegenstands sein um ihn zu bearbeiten.",
	["INV_PAGE_EDIT_ERROR2"] = "Dieser Gegenstand befindet sich nicht im Schnellmodus.",
	["INV_PAGE_INV_OPEN"] = "Inventar öffnen",
	["INV_PAGE_ITEM_LOCATION"] = "Körperstelle, an der der Gegenstand getragen wird",
	["INV_PAGE_LOOT_ALL"] = "Alles plündern",
	["INV_PAGE_MARKER"] = [=[Markierungsposition:
   x: %.2f
   y: %.2f]=],
	["INV_PAGE_PLAYER_INV"] = "%s's Inventar",
	["INV_PAGE_QUICK_SLOT"] = "Schnellzugriffsplatz",
	["INV_PAGE_QUICK_SLOT_TT"] = "Dieser Platz wird als Hauptbehälter benutzt.",
	["INV_PAGE_SEQUENCE"] = "Sequenz-Id",
	["INV_PAGE_SEQUENCE_PRESET"] = "Du kannst eine Sequenz-Id eingeben, die einem Emote entspricht.",
	["INV_PAGE_SEQUENCE_TT"] = [=[Du kannst die Haltung deines Charakters ändern, indem du hier die Animations-Id eingibst und mit dem unteren Schieberegler den Animationsframe auswählst.

Warnung: Wenn die Animation flackert gibt es einen Konflikt zwischen der Animation und dem Volksmodell. Sollte das vorkommen, nimm bitte eine andere Animation.]=],
	["INV_PAGE_TOTAL_VALUE"] = "Gesamtwert aller Gegenstände",
	["INV_PAGE_TOTAL_VALUE_TT"] = [=[Dies ist der Wert deines Inventars.

Es ist nicht die Anzahl an "Münzen", sondern der geschätzte Gesamtwert aller Gegenstände in deinem Inventar.]=],
	["INV_PAGE_WAIT"] = "Warte auf Antwort",
	["INV_PAGE_WEAR_ACTION"] = "Lage des Gegenstands einstellen",
	["INV_PAGE_WEAR_ACTION_RESET"] = "Einstellungen zurücksetzen",
	["INV_PAGE_WEAR_TT"] = [=[Dieser Gegenstand ist tragbar.
Die grüne Zone zeigt seine Lage am Charakter an.]=],
	["INV_TU_1"] = [=[Du kannst Gegenstände (oder Stapel davon) in jeden Inventarplatz legen.
|cff00ff00Es gibt keine Kapazitätsbegrenzung, da du eine unbegrenzte Anzahl an Taschen und Behältern haben kannst. Du kannst auch Behälter in Behälter legen.
|cffff9900Das einzige, worauf du achten solltest ist die Höchstlast eines Behälters.|r
Wird die maximale Last eines Behälters überstiegen, wird er langsam beschädigt und kann zufällig Gegenstände fallen lassen!]=],
	["INV_TU_2"] = [=[Jede Tasche, die du hier plazierst, gilt als Hauptbehälter.
|cffff9900Es ist sehr wichtig immer freien Platz im Hauptbehälter zu haben, da dieser für den Austausch mit anderen Spielern verwendet wird.
|cff00ff00Der Hauptbehälter kann auch leicht mit der Inventarschaltfläche auf der TRP-Werkzeugleiste geöffnet werden.]=],
	["INV_TU_3"] = [=[Für angelegte Gegenstände (nicht diejenigen in einer Tasche) |cff00ff00kannst du festlegen, wo sie sich am Charakter befinden|r. (Der Urheber des Gegenstands kann bestimmen, ob er anlegbar ist.)
|cffff9900Klicke dazu auf den Punkt in der Nähe des Gegenstands und setze die Markierung an die gewünschte Stelle. Du kannst deinen Charakter auch drehen und seine Haltung auswählen.
|cff00ff00Wenn dich jemand betrachtet, wird er die Markierung zusammen mit der passenden Haltung sehen!
|rDu kannst jemanden betrachten, indem du den Charakter auswählst und auf |cff00ff00"Charakter betrachten"|r in der Zielleiste klickst.
|cffff9900Beachte, dass beide Spieler TRP Extendend aktiviert haben müssen um sich gegenseitig betrachten zu können.]=],
	["INV_TU_4"] = [=[Wenn du einen Gegenstand mit der Maus aus dem Inventar ziehst, |cffff9900kannst du auswählen ob er zerstört oder auf den Boden fallen gelassen werden soll.|r
Du kannst (fast) überall in der Welt Gegenstände fallen lassen. |cff00ff00Diese kannst du später wieder aufheben, indem du die "Gegenstandssuche" in der Werkzeugleiste benutzt.
Du kannst ebenfalls alle abgelegten Gegenstände auf der Karte sehen, indem du die Schaltfläche "Suche nach meinen Gegenständen" benutzt.
|cffff9900Beachte, dass Gegenstände manchmal automatisch fallen gelassen werden: wenn du Gegenstände bekommt, dein Inventar aber voll ist, oder wenn eine deiner Tachen beschädigt ist.]=],
	["INV_TU_5"] = [=[Du kannst Gegenstände (oder Stapel davon) mit anderen Spielern per Drag&Drop austauschen (wie auch im Spiel).
|cffff9900Wenn dir jemand einen Gegenstand gibt, wird dir das Handelsfenster mitteilen, ob es lästige Effekte haben kann. (niemand möchte seinen Charakter schreckliche Sachen brüllen lassen)
|rFalls das der Fall sein sollte, wird TRP diese Effekte in eine weniger schädliche Form überführen (z. B. wird ein persönlicher Text angezeigt, anstatt dass der Charakter schreit) bis du dich entscheidest den Effekt freizugeben.
|cff00ff00Du kannst Effekte sperren/freigeben sowie Effekte und auch Spieler weißlisten, indem du auf den Gegenstand Alt+Rechtsklickst.]=],
	["INV_TU_5_V2"] = [=[Du kannst Gegenstände (oder Stapel davon) mit anderen Spielern per Drag&Drop austauschen (wie auch im Spiel) oder mit der dafür vorgesehenen Schaltfläche im Zielfenster.

|cffff9900Wenn dir jemand einen Gegenstand gibt, wird dir das Handelsfenster mitteilen, ob es lästige Effekte haben kann. (niemand möchte seinen Charakter schreckliche Sachen brüllen lassen)

|rFalls das der Fall sein sollte, wird TRP diese Effekte in eine weniger schädliche Form überführen (z. B. wird ein persönlicher Text angezeigt, anstatt dass der Charakter schreit) bis du dich entscheidest den Effekt freizugeben.

|cff00ff00Du kannst Effekte sperren/freigeben sowie Effekte und auch Spieler weißlisten, indem du auf den Gegenstand Alt+Rechtsklickst.]=],
	["IT_CAST"] = "Wirken",
	["IT_CO_DURABILITY"] = "Haltbarkeit",
	["IT_CO_DURABILITY_TT"] = [=[Legt die maximale Haltbarkeit deines Behälters fest. Ein Behälter kann mit der Zeit Haltbarkeit verlieren oder beschädigt werden, mit den richtigen Gegenständen aber auch repariert werden.

|cff00ff00Null bedeutet unzerstörbar.]=],
	["IT_CO_MAX"] = "Höchstgewicht (in Gramm)",
	["IT_CO_MAX_TT"] = [=[Legt das Höchstgewicht fest, ab dem dein Behälter auf Grund von Übergewicht Haltbarkeit verliert.

|cff00ff00Null bedeutet unbegrenzt.

|cffff9900Bitte gib das Höchstgewicht in GRAMM an.]=],
	["IT_CO_ONLY_INNER"] = "Kann nur innere Gegenstände enthalten",
	["IT_CO_ONLY_INNER_TT"] = [=[Beschränkt diesen Behälter auf eigene innere Gegenstände, andere können hierin nicht plaziert werden.

Bis jetzt ist es nur möglich Behälter mit Inhalt zu handeln, wenn diese Option aktiv ist.]=],
	["IT_CO_SIZE"] = "Behältergröße",
	["IT_CO_SIZE_COLROW"] = "%s |1Zeile;Zeilen; mal %s Spalten",
	["IT_CON"] = "Behälter",
	["IT_CON_CAN_INNER"] = "Behälter kann nicht in sich selbst abgelegt werden!",
	["IT_CON_ERROR_TRADE"] = "Du kannst diesen Behälter nicht fallen lassen, wenn er nicht leer ist.",
	["IT_CON_ERROR_TYPE"] = "Dieser Behälter kann diesen Gegenstand nicht enthalten.",
	["IT_CON_OPEN"] = "Behälter öffnen/schließen",
	["IT_CON_TT"] = "Behälter (%d/%d Plätzen belegt)",
	["IT_CON_TT_MISSING_CLASS"] = "Fehlende Gegenstandsklassen-Id",
	["IT_CONTAINER_TT"] = [=[Legt fest, dass dieses Element ein Behälter ist. Behälter können andere Gegenstände enthalten.

|cff00ff00Der Behälter kann auf der Registerkarte 'Behälter' dieses Editors konfiguriert werden.]=],
	["IT_CONVERT_TO_NORMAL"] = "In Normalmodus umwandeln",
	["IT_CONVERT_TO_NORMAL_TT"] = [=[Du befindest dich im Schnellmodus, einem leichten Einstieg um einen einfachen Gegenstand zu erstellen.

Du kannst fortschreiten, indem du den Gegenstand im Normalmodus bearbeitest. Das gibt dir mehr Möglichkeiten, ist aber auch etwas komplexer zu erlernen und zu verwenden.

|cffff9900Warnung: Ein Gegenstand im Normalmodus kann nicht zurück in den Schnellmodus überführt werden.]=],
	["IT_CRAFTED"] = "Hergestellt",
	["IT_CRAFTED_TT"] = "Bei einem als hergestellt markierten Gegenstand wird der Name des Spielers im Tooltip angezeigt, der ihn hergestellt hat, also dem Spieler, der das Exemplar erstellt hat, entweder manuell oder mittels eines Arbeitsablaufs.",
	["IT_DISPLAY_ATT"] = "Anzeigeeinstellungen",
	["IT_DOC_ACTION"] = "Dokument lesen",
	["IT_DR_SOUND"] = "Sound entfernen",
	["IT_EX_DOWNLOAD"] = "Herunterladen",
	["IT_EX_DOWNLOAD_TT"] = [=[|cffff9900Dieser Gegenstand hat %s Datenpakete und es würde mindestens %.1f Sekunden dauern um ihn herunterzuladen (im günstigsten Fall).

|cff00ff00Klicken um %s anzuweisen, dir alle Datenpakate dieses Gegenstands zu senden.

|cffff9900Du kannst keinen Handel abschließen, wenn du nicht alle aktuellen Informationen über einen Gegenstand hast, den du erhalten würdest.]=],
	["IT_EX_DOWNLOADING"] = "Herunterladen: %0.1f %%",
	["IT_EX_EMPTY"] = "Nichts zu handeln",
	["IT_EX_EMPTY_DRAG"] = "Du kannst hier Gegenstände mit Drag&Drop ablegen.",
	["IT_EX_SLOT_DOWNLOAD"] = [=[|rDu hast die Gegestandsdaten nicht.

|cff00ff00Wenn der Gegenstand nicht zu groß ist, wird TRP3 ihn automatisch von %s herunterladen.

|cffff9900Wenn er zu groß ist, kannst du die Daten manuell mit der Schaltfläche "Herunterladen" anfragen, aber beachte, dass das etwas Zeit in Anspruch nehmen kann.]=],
	["IT_EX_TRADE_BUTTON"] = "Handelsfenster öffnen",
	["IT_EX_TRADE_BUTTON_TT"] = "Öffnet das Handelsfenster um mit diesem Spieler Gegenstände auszutauschen.",
	["IT_FIELD_NAME"] = "Gegenstandsname",
	["IT_FIELD_NAME_TT"] = "Der Name des Gegenstands, wird im Tooltip angezeigt sowie in Links im Chatfenster.",
	["IT_FIELD_QUALITY"] = "Gegenstandsqualität",
	["IT_GAMEPLAY_ATT"] = "Gegenstandseigenschaften",
	["IT_INV_ERROR_CANT_DESTROY_LOOT"] = "Du kannst keine Beutegegenstände zerstören.",
	["IT_INV_ERROR_CANT_HERE"] = "Du kannst hier keine Gegenstände plazieren.",
	["IT_INV_ERROR_FULL"] = "%s ist voll.",
	["IT_INV_ERROR_MAX"] = "Du kannst keine weiteren %s tragen.",
	["IT_INV_GOT"] = "Erhalten: %s x%d",
	["IT_INV_SCAN_MY_ITEMS"] = "Suche nach meinen Gegenständen",
	["IT_INV_SHOW_ALL"] = "Gesamtes Inventar zeigen",
	["IT_INV_SHOW_CONTENT"] = [=[|cffffff00Klicken:|r Hauptinventar öffnen (falls vorhanden)
|cffffff00Rechtsklick:|r Inventar öffnen]=],
	["IT_LOOT_ERROR"] = "Beutefenster kann nicht angezeigt werden, da bereits ein anderes Beutefenster zu sehen ist.",
	["IT_NEW_NAME"] = "Neuer Gegenstand",
	["IT_NEW_NAME_CO"] = "Neuer Behälter",
	["IT_NO_ADD"] = "Manuelles Hinzufügen verbieten",
	["IT_NO_ADD_TT"] = "Verhindert, dass Spieler den Gegenstand manuell ihrem Inventar hinzufügen können, sondern nur durch Erbeuten oder durch einen Arbeitsablauf.",
	["IT_ON_USE"] = "Bei Benutzung",
	["IT_ON_USE_TT"] = [=[Dieser Arbeitsablauf wird ausgelöst, sobald der Spieler den Gegenstand benutzt.

|cffff9900Bemerkung:|r Wenn du mehrere Arbeitsabläufe für diesen Gegenstand benötigst, kannst du ihn in der Datenbank-Sicht in den Expertenmodus überführen (Rechtsklicken und |cff00ff00In Expertenmodus umwandeln|r wählen).]=],
	["IT_PU_SOUND"] = "Aufnehmen-Geräusch",
	["IT_PU_SOUND_1183"] = "Tasche",
	["IT_PU_SOUND_1184"] = "Buch",
	["IT_PU_SOUND_1185"] = "Stoff",
	["IT_PU_SOUND_1186"] = "Essen",
	["IT_PU_SOUND_1187"] = "Kräuter",
	["IT_PU_SOUND_1188"] = "Kette",
	["IT_PU_SOUND_1189"] = "Fleisch",
	["IT_PU_SOUND_1190"] = "Großes Metal",
	["IT_PU_SOUND_1191"] = "Kleines Metal",
	["IT_PU_SOUND_1192"] = "Papier",
	["IT_PU_SOUND_1193"] = "Ring",
	["IT_PU_SOUND_1194"] = "Stein",
	["IT_PU_SOUND_1195"] = "Kleine Kette",
	["IT_PU_SOUND_1196"] = "Stab",
	["IT_PU_SOUND_1197"] = "Flüssigkeit",
	["IT_PU_SOUND_1198"] = "Kleines Holz",
	["IT_PU_SOUND_1199"] = "Großes Holz",
	["IT_PU_SOUND_1221"] = "Edelsteine",
	["IT_QUEST"] = "Questmarkierung",
	["IT_QUEST_TT"] = [=[Fügt dem Gegenstands-Icon eine Makierung hinzu, die darauf hinweist, dass der Gegenstand eine Quest starten sollte.

|cffff7700Wie andere Anzeigeeinstellungen ist dies ein rein visueller Hinweis und nicht notwendig um tatsächlich eine Quest starten zu können.]=],
	["IT_QUICK_EDITOR"] = "Gegenstands-Schnellerstellung",
	["IT_QUICK_EDITOR_EDIT"] = "Gegenstands-Schnellanpassung",
	["IT_SOULBOUND_TT"] = "Dieser Gegenstand wird an den Spieler gebunden, sobald er in dessen Inventar abgelegt wird. Er kann dann nicht gehandelt oder auf dem Boden abgelegt werden.",
	["IT_STACK"] = "Stapelbar",
	["IT_STACK_COUNT"] = "Max. Einheiten pro Stapel",
	["IT_STACK_COUNT_TT"] = [=[Legt die maximale Anzahl an Einheiten fest, die auf einem einzigen Inventarplatz liegen können.
Sollte größer als 1 sein.]=],
	["IT_STACK_TT"] = "Lässt das Stapeln dieses Gegenstands auf einem Behälterplatz zu.",
	["IT_TRIGGER_ON_DESTROY"] = "Bei Zerstörung eines Stapels",
	["IT_TRIGGER_ON_DESTROY_TT"] = [=[Wird ausgelöst, sobald der Spieler einen Stapel dieses Gegenstands zerstört (aus dem Inventar zieht und bestätigt).|cffff9900

Dies wird einmal pro Stapel ausgelöst, unmittelbar vor der Entfernung (d.h. der Stapel wird bei der Einheitenzählung in diesem Arbeitsablauf noch berücksichtigt).]=],
	["IT_TRIGGER_ON_USE"] = "Bei Benutzung",
	["IT_TRIGGER_ON_USE_TT"] = [=[Wrid bei jeder Benutzung des Gegenstands ausgelöst.

|cff00ff00Vergiss nicht den Gegenstand in der Gegenstandsübersicht als benutzbar einzustellen.]=],
	["IT_TT_DESCRIPTION"] = "Tooltip-Beschreibung",
	["IT_TT_DESCRIPTION_TT"] = [=[Dies ist deine Gegenstandsbeschreibung.

|cff00ff00Hier sollte keine Textwand stehen, versuche dich kurz zu fassen.

Wenn dein Gegenstand benutzbar ist, versuche hier Hinweise zu geben, wie er benutzt werden sollte.]=],
	["IT_TT_LEFT"] = "Linker Tooltip-Text",
	["IT_TT_LEFT_TT"] = [=[Freitext im Tooltip, unter dem Gegenstandsnamen.

|cff00ff00Typisch für dieses Feld ist der Gegenstandstyp (Rüstung, Stoff, Waffe, Trank,...).]=],
	["IT_TT_REAGENT"] = "Handwerksmaterial",
	["IT_TT_REAGENT_TT"] = [=[Fügt dem Tooltip die Zeile "Handwerksmaterial" zu.

|cffff7700Wie andere Anzeigeattribute ist dies nur ein visueller Hinweis und nicht notwendig um den Gegenstand zu einem Handwerksmaterial zu machen.]=],
	["IT_TT_RIGHT"] = "Rechter Tooltip-Text",
	["IT_TT_RIGHT_TT"] = [=[Freitext im Tooltip, unter dem Gegenstandsnamen, neben dem linken Text.

|cff00ff00Typischerweise stehen hier genauere Angaben zum Gegenstandstyp im linken Text.

Wenn du zum Beispiel links "Rüstung" eingegeben hast, könnte hier "Helm" oder "Handschuhe" stehen.]=],
	["IT_TT_VALUE"] = "Gegenstandswert",
	["IT_TT_VALUE_FORMAT"] = "Gegenstandswert (in %s)",
	["IT_TT_VALUE_TT"] = [=[Dieser Wert wird im erweiterten Tooltip angezeigt (halte Alt gedrückt) oder während eines Handels.

|cffff7700Wenn der Gegenstand unbezahlbar sein soll, trage 0 ein. Null bedeutet nicht wertlos, sondern dass der Wert des Gegenstands nicht festgelegt ist.]=],
	["IT_TT_WEIGHT"] = "Gegenstandsgewicht",
	["IT_TT_WEIGHT_FORMAT"] = "Gegenstandsgewicht (in Gramm)",
	["IT_TT_WEIGHT_TT"] = [=[Das Gewicht beeinflusst das Gesamtgewicht des Behälters.

|cffff7700Bitte gib das Gewicht in GRAMM an, es wird bei der Anzeige in die vom Spieler ausgewählte EInheit umgerechnet.]=],
	["IT_UNIQUE_COUNT"] = "Max. Einheiten",
	["IT_UNIQUE_COUNT_TT"] = "Legt die maximale Anzahl an Einheiten fest, die ein Spieler besitzen kann. Sollte größer als Null sein.",
	["IT_UNIQUE_TT"] = "Wenn aktiv, wird die maximale Einheitenzahl, die ein Spieler von diesem Gegenstand besitzen kann, beschränkt.",
	["IT_USE"] = "Benutzbar",
	["IT_USE_TEXT"] = "Text bei Benutzung",
	["IT_USE_TEXT_TT"] = "Dieser Text beschreibt den Effekt, der bei Benutzung eintritt, und erscheint im Tooltip.",
	["IT_USE_TT"] = [=[Lässt die Benutzung des Gegenstands zu.

|cff00ff00Du kannst den Effekt, der bei Benutzung eintritt, in der Registerkarte "Arbeitsabläufe" einstellen.]=],
	["IT_WARNING_1"] = "Du solltest einen Gegenstand nicht gleichzeitig stapelbar und herstellbar machen. (%s)",
	["IT_WARNING_2"] = "Du solltest einen Behälter nicht stapelbar machen. (%s)",
	["IT_WEARABLE"] = "Anlegbar",
	["IT_WEARABLE_TT"] = [=[Ermöglicht das Betrachten dieses Gegenstands und die genaue Plazierung an deinem Charakter.

|cffff9900Wenn diese Option eingeschaltet ist, können andere Spieler den Gegenstand in deinem Inventar sehen, wenn sie dich betrachten, selbst dann, wenn du die Position nicht festgelegt hast.]=],
	["ITEM_ID"] = "Gegenstands-Id",
	["LOOT"] = "Beute",
	["LOOT_CONTAINER"] = "Lootbehälter",
	["LOOT_DISTANCE"] = "Du hast dich zu weit vom Beuteort entfernt.",
	["MODE_EXPERT"] = "Experte",
	["MODE_NORMAL"] = "Normal",
	["MODE_QUICK"] = "Schnell",
	["NEW_EXTENDED_VERSION"] = "|cffff9900Eine neue Version von TRP3:Extended ist verfügbar (%s). |cff00ff00Sieh es dir bei Curse an!",
	["NPC_EMOTES"] = "emotet",
	["NPC_SAYS"] = "sagt",
	["NPC_WHISPERS"] = "flüstert",
	["NPC_YELLS"] = "schreit",
	["OP_ADD_TEST"] = "Test hinzufügen",
	["OP_AND"] = "UND",
	["OP_AND_SWITCH"] = "Zu UND wechseln",
	["OP_BOOL"] = "Wahrheitswert",
	["OP_BOOL_FALSE"] = "FALSCH",
	["OP_BOOL_TRUE"] = "WAHR",
	["OP_COMP_EQUALS"] = "ist gleich",
	["OP_COMP_GREATER"] = "ist größer als",
	["OP_COMP_GREATER_OR_EQUALS"] = "ist größer oder gleich",
	["OP_COMP_LESSER"] = "ist kleiner als",
	["OP_COMP_LESSER_OR_EQUALS"] = "ist kleiner oder gleich",
	["OP_COMP_NEQUALS"] = "ist ungleich",
	["OP_COMPA_SEL"] = "Vergleicher auswählen",
	["OP_CONFIGURE"] = "Einstellen",
	["OP_CURRENT"] = "Aktueller Wert",
	["OP_CURRENT_TT"] = "Gibt den Wert dieses Operanden unter den jetzigen Bedingungen im Chatfenster aus.",
	["OP_DIRECT_VALUE"] = "Direkter Wert",
	["OP_EVAL_VALUE"] = "Ausgewerteter Wert",
	["OP_FAIL"] = "Fehlermeldung",
	["OP_FAIL_TT"] = "Diese Meldung wird angezeigt, wenn die Bedingung nicht erfüllt ist. Leer lassen, wenn keine Meldung angezeigt werden soll.",
	["OP_FAIL_W"] = "Arbeitsablauf bei Nichterfüllung (Experte)",
	["OP_FAIL_W_TT"] = [=[Wenn diese Bedingung nicht erfüllt ist, wird dieser Arbeitsablauf ausgeführt. Auf diese Weise kann ein "Sonst"-Zweig erstellt werden.

|cffff9900Beachte, dass dies viel Rechenleistung beansprucht und daher mit Vorsicht benutzt werden sollte. Der aufgerufene Arbeitsablauf muss im selben Objekt liegen.

|cffff0000Erstelle AUF KEINEN FALL einen Arbeitsablauf-Kreislauf (z.B. Arbeitsablauf A ruft B auf und dieser wiederum A), auch nicht mit Verzögerungen.]=],
	["OP_NUMERIC"] = "Zahlenwert",
	["OP_OP_CHAR_ACHIEVEMENT"] = "Erfolg",
	["OP_OP_CHAR_ACHIEVEMENT_ACC"] = "Account",
	["OP_OP_CHAR_ACHIEVEMENT_ACC_TT"] = "Prüft, ob ein beliebiger Charakter dieses Accounts den Erfolg abgeschlossen hat",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR"] = "Charakter",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR_TT"] = "Prüft, ob der aktuelle Charakter den Erfolg abgeschlossen hat",
	["OP_OP_CHAR_ACHIEVEMENT_ID"] = "Erfolgs-Id",
	["OP_OP_CHAR_ACHIEVEMENT_ID_TT"] = "Die numerische Id des Erfolgs, den du abfragen möchtest.",
	["OP_OP_CHAR_ACHIEVEMENT_PREVIEW"] = "%s abgeschlossen von |cffff9900%s",
	["OP_OP_CHAR_ACHIEVEMENT_TT"] = "Prüft, ob der Account den angegebenen Erfolg abgeschlossen hat.",
	["OP_OP_CHAR_ACHIEVEMENT_WHO"] = "Abgeschlossen von",
	["OP_OP_CHAR_CAM_DISTANCE"] = "Kameraentfernung",
	["OP_OP_CHAR_CAM_DISTANCE_TT"] = "Die Entfernung der Kamera vom Spieler. Null, wenn in Egoperspektive.",
	["OP_OP_CHAR_FACING"] = "Blickrichtung des Charakters",
	["OP_OP_CHAR_FACING_TT"] = [=[Gibt die Blickrichtung zurück (in Radiant, 0 = Norden, Werte steigen entgegen dem Uhrzeigersinn).

|cffff9900Zeigt die Richtung an, in die das Charaktermodell (normalerweise) schaut und in welche sich der Spieler bewegt, sobald er vorwärts läuft, nicht aber die Ausrichtung der Kamera.]=],
	["OP_OP_CHAR_FALLING"] = "Charakter fällt",
	["OP_OP_CHAR_FALLING_TT"] = "Gibt an, ob der Spielercharakter gerade in sein Verderben stürzt.",
	["OP_OP_CHAR_FLYING"] = "Charakter fliegt",
	["OP_OP_CHAR_FLYING_TT"] = "Prüft, ob der Charakter gerade fliegt.",
	["OP_OP_CHAR_INDOORS"] = "Charakter befindet sich drinnen",
	["OP_OP_CHAR_INDOORS_TT"] = "Prüft, ob sich der Charakter innerhalb eines Gebäudes befindet.",
	["OP_OP_CHAR_MINIMAP"] = "Minikartentext",
	["OP_OP_CHAR_MINIMAP_TT"] = [=[Gibt den Gebietsnamen der Minikarte wieder.

Wenn sich dieser Text ändert, wird das Ereignis "MINIMAP_ZONE_CHANGED" ausgelöst. Auf diese Weise kannst du in einer Ereignisverknüpfung einer Kampagne oder einer Quest auf einen Gebietswechsel reagieren.]=],
	["OP_OP_CHAR_MOUNTED"] = "Charakter reitet",
	["OP_OP_CHAR_MOUNTED_TT"] = "Prüft, ob sich der Charakter auf einem Reittier befindet.",
	["OP_OP_CHAR_RESTING"] = "Charakter erholt sich",
	["OP_OP_CHAR_RESTING_TT"] = "Prüft, ob sich er Charakter erholt. Dies geschieht in Gasthäusern oder in Hauptstädten wie Eisenschmiede oder Orgrimmar.",
	["OP_OP_CHAR_STEALTH"] = "Charakter ist in Verstohlenheit",
	["OP_OP_CHAR_STEALTH_TT"] = "Prüft, ob sich der Charakter in Verstohlenheit befindet.",
	["OP_OP_CHAR_SUBZONE"] = "Name der Subzone",
	["OP_OP_CHAR_SUBZONE_TT"] = [=[Der Name der Subzone, in der sich der Charakter gerade befindet.

|cffff9900Warnung: Der Text hängt von der ausgewählten Sprache ab.]=],
	["OP_OP_CHAR_SWIMMING"] = "Charakter schwimmt",
	["OP_OP_CHAR_SWIMMING_TT"] = "Prüft, ob der Charakter gerade schwimmt. Er muss sich nicht unter Wasser befinden.",
	["OP_OP_CHAR_ZONE"] = "Gebietsname",
	["OP_OP_CHAR_ZONE_TT"] = [=[Der Name des Gebiets, in dem sich der Charakter gerade befindet.

|cffff9900Warnung: Der Text hängt von der ausgewählten Sprache ab.]=],
	["OP_OP_CHECK_EVENT_VAR"] = "Ereingnisparameter als Text",
	["OP_OP_CHECK_EVENT_VAR_N"] = "Ereingnisparameter als Zahl",
	["OP_OP_CHECK_EVENT_VAR_N_PREVIEW"] = "%s. Ereignisparameter |cff00ff00(numerisch)",
	["OP_OP_CHECK_EVENT_VAR_N_TT"] = [=[Prüft den n-ten Parameter des Ereignisses, das diese Bedingung auslöst (falls vorhanden).

Wird als Zahl ausgewertet.

Gibt 0 zurück, falls nicht existent oder nicht als Zahl interpretierbar.]=],
	["OP_OP_CHECK_EVENT_VAR_PREVIEW"] = "%s. Ereignisparameter |cff00ff00(Text)",
	["OP_OP_CHECK_EVENT_VAR_TT"] = [=[Prüft den n-ten Parameter des Ereignisses, das diese Bedingung auslöst (falls vorhanden).

Wird als Text ausgewertet.

Gibt "nil" zurück, falls nicht existent oder nicht als Text interpretierbar.]=],
	["OP_OP_CHECK_VAR"] = "Variablenwert (Text)",
	["OP_OP_CHECK_VAR_N"] = "Variablenwert (numerisch)",
	["OP_OP_CHECK_VAR_N_PREVIEW"] = "|cff00ffff%s: |cffff9900(n)|r %s",
	["OP_OP_CHECK_VAR_N_TT"] = [=[Gibt den Wert einer Variablen zurück, |cff00ff00ausgewertet als Zahl|r.

Falls die Variable nicht existiert, nicht erreichbar oder nicht als Zahl interpretierbar ist, wird 0 zurückgegeben.

|cffff9900Da der Wert laufzeitabhängig ist, gibt es keine Vorschau.]=],
	["OP_OP_CHECK_VAR_PREVIEW"] = "|cff00ffff%s:|r %s",
	["OP_OP_CHECK_VAR_TT"] = [=[Gibt den Wert einer Variablen zurück, |cff00ff00ausgewertet als Text|r.

Falls die Variable nicht existiert oder nicht erreichbar ist, wird der Text "nil" zurückgegeben.

|cffff9900Da der Wert laufzeitabhängig ist, gibt es keine Vorschau.]=],
	["OP_OP_DISTANCE_CURRENT"] = "Verwende aktuelle Position",
	["OP_OP_DISTANCE_ME"] = "Entfernung der Einheit zum Spieler",
	["OP_OP_DISTANCE_ME_TT"] = [=[Gibt die Entfernung (in Metern) zwischen einer Einheit und dem Spieler zurück.

Funktioniert nur mit Spielern.

Gibt 0 zurück, falls die Einheit nicht existiert.

|cffff9900Funktioniert nicht in Instanzen/Schlachtfeldern/Arenen deit Patch 7.1.]=],
	["OP_OP_DISTANCE_POINT"] = "Entfernung der Einheit zu einem Punkt",
	["OP_OP_DISTANCE_POINT_PREVIEW"] = "|cff00ff00%s|r Entfernung zu |cff00ff00(%s, %s)",
	["OP_OP_DISTANCE_POINT_TT"] = [=[Gibt die Entfernung (in Metern) zwischen einer Einheit und einem Punkt mit Koordinaten zurück.

Funktioniert nur mit Spielern.

Gibt 0 zurück, falls die Einheit nicht existiert.

|cffff9900Funktioniert nicht in Instanzen/Schlachtfeldern/Arenen deit Patch 7.1.]=],
	["OP_OP_DISTANCE_X"] = "X-Koordinate",
	["OP_OP_DISTANCE_Y"] = "Y-Koordinate",
	["OP_OP_INV_COUNT"] = "Anzahl an Gegenständen",
	["OP_OP_INV_COUNT_ANY"] = "Alle Gegenstände",
	["OP_OP_INV_COUNT_PREVIEW"] = "%s Einheiten in |cffff9900%s",
	["OP_OP_INV_COUNT_TT"] = [=[|cff00ff00Die Anzahl an Exemplaren eines Gegenstands, die ein Spieler im Inventar hat.

Id leerlassen um alle Gegenstände zu zählen.]=],
	["OP_OP_INV_WEIGHT"] = "Gesamtgewicht des Behälters",
	["OP_OP_INV_WEIGHT_PREVIEW"] = "Gesamtgewicht von |cffff9900%s",
	["OP_OP_INV_WEIGHT_TT"] = "|cff00ff00Das aktuelle Gesamtgewicht eines Behälters (das eigene Gewicht plus das des Inhalts)",
	["OP_OP_QUEST_NPC"] = "Einheit ist ein Kampagnen-NSC",
	["OP_OP_QUEST_NPC_TT"] = "|cff00ff00Gibt zurück, ob eine Einheit ein angepasster NSC in der aktiven Kampagne ist.",
	["OP_OP_QUEST_OBJ"] = "Questziel",
	["OP_OP_QUEST_OBJ_ALL"] = "Alle Questziele",
	["OP_OP_QUEST_OBJ_ALL_PREVIEW"] = "%s alle Questziele erfüllt",
	["OP_OP_QUEST_OBJ_ALL_TT"] = "Gibt zurück, ob alle möglichen Questziele erfüllt sind. Dies schließt ein, dass auch alle Questziele aufgedeckt sind.",
	["OP_OP_QUEST_OBJ_CURRENT"] = "Aktuelle Questziele",
	["OP_OP_QUEST_OBJ_CURRENT_PREVIEW"] = "%s aktuelle Questziele erfüllt",
	["OP_OP_QUEST_OBJ_CURRENT_TT"] = "Gibt zurück, ob alle aktuell aufgedeckten Questziele erfült sind.",
	["OP_OP_QUEST_OBJ_PREVIEW"] = "Questziel %s von %s",
	["OP_OP_QUEST_OBJ_TT"] = "Gibt zurück, ob ein Questziel erfüllt wurde (wahr/falsch). Falls die Kampagne, die Quest oder das Questziel noch nicht aufgedeckt wurden, wird \"falsch\" zurückgegeben.",
	["OP_OP_QUEST_STEP"] = "Aktueller Questschritt",
	["OP_OP_QUEST_STEP_PREVIEW"] = "%s aktueller Questschritt",
	["OP_OP_QUEST_STEP_TT"] = "Gibt die Id des aktuellen Questschritts zurück. Falls die Quest nicht aufgedeckt ist oder keinen aktuellen Schritt hat, wird \"nil\" zurückgegeben.",
	["OP_OP_RANDOM"] = "Zufallswert",
	["OP_OP_RANDOM_FROM"] = "Von",
	["OP_OP_RANDOM_PREVIEW"] = "Zufallszahl zwischen |cff00ff00%s|r und |cff00ff00%s|r.",
	["OP_OP_RANDOM_TO"] = "Bis",
	["OP_OP_RANDOM_TT"] = "Zufällige Ganzzahl zwischen zwei Schranken.",
	["OP_OP_TIME_HOUR"] = "Zeit: Stunde",
	["OP_OP_TIME_HOUR_TT"] = "Die momentane Stunde eines Tages, Serverzeit.",
	["OP_OP_TIME_MINUTE"] = "Zeit: Minute",
	["OP_OP_TIME_MINUTE_TT"] = "Die momentane Minute innerhalb einer Stunde, Serverzeit.",
	["OP_OP_UNIT_CLASS"] = "Klasse einer Einheit",
	["OP_OP_UNIT_CLASS_TT"] = "|cff00ff00Die Einheitenklasse IN ENGLISCHEN KLEINBUCHSTABEN, so wie von der Funktion UnitClass an zweiter Stelle ausgegeben.",
	["OP_OP_UNIT_CLASSIFICATION"] = "Einheitenklassifizierung",
	["OP_OP_UNIT_CLASSIFICATION_TT"] = [=[|cff00ff00Die Einheitenklassifizierung IN ENGLISCHEN KLEINBUCHSTABEN. Beispiel: normal, elite, rare, worldboss, minus...

Gibt bei Spielern immer "normal" zurück.]=],
	["OP_OP_UNIT_CREATURE_FAMILY"] = "Gattung einer Einheit",
	["OP_OP_UNIT_CREATURE_FAMILY_TT"] = "|cff00ff00Die Gattung der Einheit. Funktioniert nur bei Wildtieren oder Dämonen. Z.B.: Krabbe, Wolf, Sukkubus, Leerenwandler...",
	["OP_OP_UNIT_CREATURE_TYPE"] = "Kreaturentyp einer Einheit",
	["OP_OP_UNIT_CREATURE_TYPE_TT"] = "|cff00ff00Kreaturentyp einer Einheit. Z.B.: Wildtier, Drachkin, Elementar...",
	["OP_OP_UNIT_DEAD"] = "Einheit ist tot",
	["OP_OP_UNIT_DEAD_TT"] = "|cff00ff00Gibt zurück, ob eine Einheit entweder tot oder ein Geist ist.",
	["OP_OP_UNIT_DISTANCE_INSPECT"] = "Einheit ist in der Nähe (betrachten)",
	["OP_OP_UNIT_DISTANCE_INSPECT_TT"] = "|cff00ff00Gibt zurück, ob eine Einheit nahe genug zum Betrachten ist (28 Meter).",
	["OP_OP_UNIT_DISTANCE_TRADE"] = "Einheit ist in der Nähe (handeln)",
	["OP_OP_UNIT_DISTANCE_TRADE_TT"] = "|cff00ff00Gibt zurück, ob eine Einheit nahe genug zum Handeln ist (11,11 Meter).",
	["OP_OP_UNIT_EXISTS"] = "Einheit existiert",
	["OP_OP_UNIT_EXISTS_TT"] = [=[|cff00ff00Gibt zurück, ob eine Einheit existiert.

|rEine Einheit "existiert" in Bezug auf den Spieler. Z.B. existiert die Einheit "target", wenn der Spieler ein Ziel hat. "npc" existiert, wenn der Spieler gerade mit einem NSC interagiert, usw.]=],
	["OP_OP_UNIT_FACTION"] = "Fraktion einer Einheit",
	["OP_OP_UNIT_FACTION_TT"] = "|cff00ff00Die Fraktion einer Einheit IN ENGLISCHEN KLEINBUCHSTABEN.",
	["OP_OP_UNIT_GUILD"] = "Gildenname einer Einheit",
	["OP_OP_UNIT_GUILD_RANK"] = "Gildenrang einer Einheit",
	["OP_OP_UNIT_GUILD_RANK_TT"] = "|cff00ff00Der Gildenrang der Einheit (wenn die Einheit in einer Gilde ist).",
	["OP_OP_UNIT_GUILD_TT"] = "|cff00ff00Name der Gilde, in der sich die Einheit befindet (sofern vorhanden).",
	["OP_OP_UNIT_HEALTH"] = "Gesundheit der Einheit",
	["OP_OP_UNIT_HEALTH_TT"] = "|cff00ff00Die momentane Gesundheit der Einheit (Trefferpunkte).",
	["OP_OP_UNIT_ID"] = "Einheiten-Id",
	["OP_OP_UNIT_ID_TT"] = "|cff00ff00Die Id der Einheit in der Form |cff00ff00'Spielername-Realmname'|r, so wie von der Funktion \"UnitFullName\" zurückgegeben. Stellt sicher, dass der Realm-Teil immer enthalten ist.",
	["OP_OP_UNIT_ISPLAYER"] = "Einheit ist ein Spieler",
	["OP_OP_UNIT_ISPLAYER_TT"] = "|cff00ff00Gibt zurück, ob die Einheit ein Spieler ist.",
	["OP_OP_UNIT_LEVEL"] = "Stufe der Einheit",
	["OP_OP_UNIT_LEVEL_TT"] = "|cff00ff00Die Stufe (Level) der Einheit.",
	["OP_OP_UNIT_NAME"] = "Name der Einheit",
	["OP_OP_UNIT_NAME_TT"] = [=[|cff00ff00Name der Einheit, so wie von der Funktion "UnitName" an erster Stelle zurückgegeben.

|rFür Spielereinheiten kann der Wert |cff00ff00'Spielername'|r oder |cff00ff00'Spielername-Realmname'|r sein. Wenn du also sichergehen möchtest, das der Wert in der Form |cff00ff00'Spielername-Realmname'|r ist, benutze den Operanden |cff00ff00'Einheiten-Id'|r.]=],
	["OP_OP_UNIT_NPC_ID"] = "NSC-Id der Einheit",
	["OP_OP_UNIT_NPC_ID_TT"] = "|cff00ff00Die NSC-Id, so wie von der Funktion \"UnitGUID\" bestimmt. Funktioniert nur bei NSCs.",
	["OP_OP_UNIT_POSITION_X"] = "X-Position einer Einheit",
	["OP_OP_UNIT_POSITION_X_TT"] = [=[Gibt die X-Koordinate einer Einheit zurück.

Funktioniert nur bei Spielern.

|cffff9900Funktioniert nicht in Instanzen/Schlachtfeldern/Arenen seit Patch 7.1.]=],
	["OP_OP_UNIT_POSITION_Y"] = "Y-Position einer Einheit",
	["OP_OP_UNIT_POSITION_Y_TT"] = [=[Gibt die Y-Koordinate einer Einheit zurück.

Funktioniert nur bei Spielern.

|cffff9900Funktioniert nicht in Instanzen/Schlachtfeldern/Arenen seit Patch 7.1.]=],
	["OP_OP_UNIT_RACE"] = "Volk einer Einheit",
	["OP_OP_UNIT_RACE_TT"] = [=[|cff00ff00Das Volk, dem die Einheit angehört IN ENGLISCHEN KLEINBUCHSTABEN, wie von der Funktion "UnitRace" an zweiter Stelle zurückgegeben.

Bsp.: "scourge" für Untote.]=],
	["OP_OP_UNIT_SEX"] = "Geschlecht einer Einheit",
	["OP_OP_UNIT_SEX_TT"] = [=[|cff00ff00Index des Geschlechts der Einheit. 2 = männlich, 3 = weiblich. 1 steht für neutral oder unbekannt.

|cffffff00Wird als TEXT zurückgegeben.]=],
	["OP_OP_UNIT_SPEED"] = "Geschwindigkeit der Einheit.",
	["OP_OP_UNIT_SPEED_TT"] = "|cff00ff00Die momentane Geschwindigkeit der Einheit in Metern/Sekunde. Laufen entspricht 2.5 und rennen ohne Stärkungszauber entspricht 7.",
	["OP_OR"] = "ODER",
	["OP_OR_SWITCH"] = "Zu ODER wechseln",
	["OP_PREVIEW"] = "Wertvorschau",
	["OP_REMOVE_TEST"] = "Test löschen",
	["OP_STRING"] = "Textwert",
	["OP_UNIT"] = "Einheitentyp",
	["OP_UNIT_NPC"] = "NSC",
	["OP_UNIT_PLAYER"] = "Spieler",
	["OP_UNIT_TARGET"] = "Ziel",
	["OP_UNIT_TEST"] = "Zustand einer Einheit",
	["OP_UNIT_VALUE"] = "Wert einer Einheit",
	["QE_ACTION"] = "Questaktion",
	["QE_ACTION_NO_CURRENT"] = "Du hast keine aktive Kampagne. Du solltest eine Kampagne aktivieren bevor du eine Aktion startest.",
	["QE_ACTIONS_TYPE_INTERRACT"] = "Interagieren",
	["QE_ACTIONS_TYPE_LISTEN"] = "Zuhören",
	["QE_ACTIONS_TYPE_LOOK"] = "Betrachten",
	["QE_ACTIONS_TYPE_TALK"] = "Reden",
	["QE_AUTO_REVEAL"] = "Automatisch aufdecken",
	["QE_AUTO_REVEAL_TT"] = "Decke die Quest im Questlog auf sobald die Kampagne gestartet wird.",
	["QE_AUTORESUME_CONFIRM"] = [=[Ein Effekt der Kampagne |cff00ff00[%s]|r wurde aufgerufen.

Diese Kampagne aktivieren?
(Wenn bereits eine andere Kampagne aktiv ist, wird diese pausiert und dein Fortschritt gespeichert.)]=],
	["QE_BUTTON"] = "Questlog öffnen",
	["QE_CAMPAIGN"] = "Kampagne",
	["QE_CAMPAIGN_CURRENT"] = "Momentane Kampagne",
	["QE_CAMPAIGN_CURRENT_NO"] = "Keine aktive Kampagne.",
	["QE_CAMPAIGN_EMPTY"] = "Diese Kampagne beinhaltet keine Quests.",
	["QE_CAMPAIGN_FULL"] = "Abgeschlossen",
	["QE_CAMPAIGN_LIST"] = "%s verfügbare Kampagnen",
	["QE_CAMPAIGN_NO"] = "Noch nicht begonnen",
	["QE_CAMPAIGN_NOQUEST"] = [=[In dieser Kampagne wurden noch keine Quests aufgedeckt.
Sieh dir die Kampagnenbeschreibung an um die erste Quest aufzudecken.]=],
	["QE_CAMPAIGN_PAUSE"] = "Pausiere momentane Kampagne.",
	["QE_CAMPAIGN_RESET"] = "Kampagne zurücksetzen",
	["QE_CAMPAIGN_RESUME"] = "Kampagne |cff00ff00[%s]|r wird fortgesetzt.",
	["QE_CAMPAIGN_START"] = "Beginne Kampagne |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_START_BUTTON"] = "Kampagne beginnen oder fortsetzen",
	["QE_CAMPAIGN_UNSTARTED"] = [=[Du hast diese Kampagne noch nicht begonnen.
Klicke auf die Schaltfläche "Start" oben rechts um sie zu beginnen.]=],
	["QE_CAMPAIGNS"] = "Kampagnen",
	["QE_COMPLETED"] = "Abgeschlossen",
	["QE_DESCRIPTION"] = "Questzusammenfassung",
	["QE_DESCRIPTION_TT"] = "Dieser Überblick wird auf der Questseite im Questlog sichtbar sein.",
	["QE_FAILED"] = "Fehlgeschlagen",
	["QE_LINKS_ON_OBJECTIVE"] = "Bei Erfüllung eines Ziels",
	["QE_LINKS_ON_OBJECTIVE_TT"] = [=[Wir immer ausgelöst, sobald ein Questziel abgeschlossen wird.

|cff00ff00Eignet sich gut um nachzuprüfen ob alle Ziele erfüllt wurden und die nächste Quest aufzudecken.]=],
	["QE_LINKS_ON_START"] = "Bei Queststart",
	["QE_LINKS_ON_START_TT"] = [=[Wird |cff00ff00einmal|r ausgelöst, sobald der Spieler deine Quest startet, indem er sie im Questlog aufdeckt.

|cff00ff00Eignet sich gut um zum ersten Questschritt zu wechseln.]=],
	["QE_MACRO"] = "Makro erstellen",
	["QE_MACRO_MAX"] = "Du kannst keine weiteren Makros haben. Bitte stelle eine freien Makroplatz bereit und versuche es erneut.",
	["QE_MACRO_TT"] = "Erstellt ein Makro für diese Aktionsart und unterlegt deinen Mauszeiger zur Platzierung in der Aktionsleiste.",
	["QE_NAME"] = "Questname",
	["QE_NAME_NEW"] = "Neue Quest",
	["QE_NAME_TT"] = "Der Name deiner Quest, so wie er im Questlog erscheinen wird.",
	["QE_NEW"] = "Neue Quest aufgedeckt",
	["QE_NOACTION_ACTION"] = "Es gibt nichts zu tun.",
	["QE_NOACTION_LISTEN"] = "Du hörst nichts besonderes.",
	["QE_NOACTION_LOOK"] = "Du siehst nichts besonderes.",
	["QE_NOACTION_TALK"] = "Es gibt nichts zu sagen.",
	["QE_NPC"] = "Kampagnen-NSC",
	["QE_OBJ"] = "Questziele",
	["QE_OBJ_ADD"] = "Questziel hinzufügen",
	["QE_OBJ_AUTO"] = "Automatisch aufdecken",
	["QE_OBJ_AUTO_TT"] = "Deckt dieses Questziel automatisch auf, sobald die Quest im Questlog aufgedeckt wird.",
	["QE_OBJ_ID"] = "Questziel-Id",
	["QE_OBJ_ID_TT"] = "Dies ist deine Questziel-Id. Innerhalb einer Quest sind zwei Ziele mit derselben Id unzulässig.",
	["QE_OBJ_NO"] = "Kein Questziel",
	["QE_OBJ_REMOVE"] = "Dieses Questziel löschen?",
	["QE_OBJ_SINGULAR"] = "Questziel",
	["QE_OBJ_TEXT"] = "Questzieltext",
	["QE_OBJ_TT"] = [=[Questziele sind Hinweise für den Spieler. Alle Ziele zu erfüllen bedeutet nicht automatisch die Quest abzuschließen. Du entscheidest wann Questziele angezeigt werden, was auch versteckte Ziele ermöglicht.
|cffff9900Questziele werden im Questlog immer nach Id sortiert, nicht nach ihrer Aufdeckungsreihenfolge.]=],
	["QE_OVERVIEW"] = "Questübersicht",
	["QE_PREVIOUS_STEP"] = "Vorherige Schritte",
	["QE_PROGRESS"] = "Fortschritt",
	["QE_PROGRESS_TT"] = [=[Dieser Parameter weist die Quest als Teil des Kampagnenfortschritts aus (auch wenn sie nicht aufgedeckt ist).

Der Kampagnenfortschritt ist ein Prozentwert im Questlog, der den Gesamtfortschritt zeigt (abgeschlossene Quests / Anzahl der Quests in %).

|cff00ff00Sollte typischerweise aktiviert sein, außer für Nebenquests oder sekundäre Quests.]=],
	["QE_QUEST"] = "Quest",
	["QE_QUEST_LIST"] = "Quests in dieser Kampagne",
	["QE_QUEST_OBJ_AND_HIST"] = "Questziele und Verlauf",
	["QE_QUEST_OBJ_FINISHED"] = "|cffffff00Questziel erfüllt: |cff00ff00%s",
	["QE_QUEST_OBJ_REVEALED"] = "|cffffff00Neues Questziel: |cff00ff00%s",
	["QE_QUEST_OBJ_UPDATED"] = "|cffffff00Questziel aktualisiert: |cff00ff00%s",
	["QE_QUEST_START"] = "Beginne Quest |cff00ff00[%s]|r.",
	["QE_QUEST_TT_STEP"] = [=[|cffffff00Momentan:|r
"%s"]=],
	["QE_QUESTS"] = "Quests",
	["QE_QUESTS_HELP"] = [=[Hier kannst du Quests in die Kampagne einfügen. Bitte beachte, dass eine Quest nicht automatisch im Questlog des Spielers erscheint, wenn er deine Kampagne beginnt. Quest müssen durch Arbeitsabläufe gestartet werden.
|cffff9900Das Questlog wird nach Quest-Id sortiert, nicht nach Name und auch nicht in Aufdeckungsreihenfolge.]=],
	["QE_RESET_CONFIRM"] = [=[Kampagne zurücksetzen?

Dadurch geht sämtlicher Fortschritt in allen Quests dieser Kampagne verloren.

Beachte, dass du Gegenstände, die du im Laufe der Kampagne erhalten hast, behältst.]=],
	["QE_ST_AUTO_REVEAL"] = "Anfangsschritt",
	["QE_ST_AUTO_REVEAL_TT"] = "Legt diesen Questschritt als den Anfangsschritt beim Aufdecken der Quest fest.",
	["QE_ST_END"] = "Endschritt",
	["QE_ST_END_TT"] = "Legt diesen Schritt als den Endschritt fest. Wenn dieser erreicht wird, wird die Quest automatisch als abgeschlossen markiert.",
	["QE_ST_LINKS_ON_LEAVE"] = "Bei Verlassen des Questschritts",
	["QE_ST_LINKS_ON_LEAVE_TT"] = "Wird |cff00ff00immer|r ausgelöst, sobald der Spieler aus diesem Schritt in einen anderen wechselt. Dies geschieht bevor der Auslöser \"Bei Betreten\" des nächsten Schritts aktiviert wird.",
	["QE_ST_LINKS_ON_START"] = "Bei Betreten des Questschritts",
	["QE_ST_LINKS_ON_START_TT"] = "Wird |cff00ff00immer|r ausgelöst, sobald der Spieler diesen Schritt erreicht.",
	["QE_ST_POST"] = "Questverlauf",
	["QE_ST_PRE"] = "Questlogeintrag",
	["QE_STEP"] = "Questschritte",
	["QE_STEP_ADD"] = "Questschritt hinzufügen",
	["QE_STEP_CREATE"] = [=[Bitte gib die Questschritt-Id ein. Innerhalb einer Quest darf eine solche Id nur einmal vorkommen.

|cffff9900Bitte beachte, dass Questschritte hier und in der Datenbank alphabetisch nach Id aufgelistet werden.

|cff00ff00Eine gute Methode ist jede Id mit "schritt_#" beginnen zu lassen, wobei # für eine fortlaufende Nummer steht.]=],
	["QE_STEP_EXIST"] = "Es gibt bereits einen Questschritt mit der Id %s.",
	["QE_STEP_LIST"] = "Questschritte in dieser Quest",
	["QE_STEP_LIST_CURRENT"] = "Verfügbare Quests",
	["QE_STEP_LIST_FINISHED"] = "Abgeschlossene Quests",
	["QE_STEP_MISSING"] = "Fehlende Questschrittdaten.",
	["QE_STEP_NAME_NEW"] = "Neuer Questschritt",
	["QE_STEP_NO"] = "Kein Questschritt",
	["QE_STEP_REMOVE"] = "Diesen Schritt löschen?",
	["QE_STEP_TT"] = [=[Quest sind in mehrere Questschritte unterteilt.
Dem Questlog und dem Questverlauf kann Text hinzugefügt werden, jeweils bei Erreichen bzw. Abschließen des Schritts.]=],
	["QE_STEPS"] = "Questschritte",
	["QUEST_ID"] = "Quest-Id",
	["QUEST_TU_1"] = [=[Bei Quests geht es oft darum |cff00ff00mit NSCs oder mit deiner Umgebung mittels Aktionen zu interagieren|r.
Es gibt vier Aktionstypen: |cff00ff00Zuhören, Betrachten, Reden und Interagieren|r. 
Du kannst eine Aktion ausführen, indem du |cff00ff00in der TRP3-Werkzeugleiste auf die Schaltfläche "Questlog" rechtsklickst|r.
Eine leichtere Art ist |cff00ff00ein Makro zu erstellen|r.
Diese Schaltfläche hilft dir die Aktionsmakros zu erstellen.]=],
	["QUEST_TU_2"] = [=[|cff00ff00Hier sind alle verfügbaren Kampagnen aufgelistet.|r
Eine Kampagne ist eine Sammlung von einer oder mehreren Quests.
|cffff9900Du kannst nur in jeweils einer Kampagne gleichzeitig voranschreiten|r. Dafür musst du diese als aktiv markieren. |cff00ff00Du kannst die Schaltfläche "Starten oder fortfahren" benutzen um eine Kampagne zu aktivieren oder zu pausieren.|r
Dein Fortschritt geht nicht verloren, wenn du von einer Kampagne zu einer anderen wechselst.
|cffff9900Du kannst deinen Fortschritt in einer Kampagne zurücksetzen, indem du darauf rechtsklickst und "Kampagne zurücksetzen" auswählst. Beachte, dass geplünderte Gegenstände dabei nicht verloren gehen.]=],
	["QUEST_TU_3"] = [=[|cff00ff00Hier siehst du eine Liste aller momentan verfügbaren Quests und aller abgeschlossenen Quests.|r
Du kannst die momentane Situation und Questziele jeder Quest leicht einsehen.]=],
	["QUEST_TU_4"] = [=[|cff00ff00Hier siehst du den momentanen Fortschritt in dieser Quest und alle aktuellen Questziele.|r
Du kannst auch den Verlauf der bisherigen Questschritte einsehen, falls du etwas vergessen hast.]=],
	["ROOT_CREATED"] = "Erstellt von %s am %s",
	["ROOT_CREATED_BY"] = "Erstellt von",
	["ROOT_CREATED_ON"] = "Erstellt am",
	["ROOT_GEN_ID"] = "Generierte Id",
	["ROOT_ID"] = "Objekt-Id",
	["ROOT_SAVED"] = "Zuletzt geändert von %s am %s",
	["ROOT_TITLE"] = "Wurzelobjekt",
	["ROOT_VERSION"] = "Version",
	["SEC_EFFECT_BLOCKED"] = "Effekt(e) blockiert",
	["SEC_EFFECT_BLOCKED_TT"] = [=[Gemäß deiner Sicherheitseinstellungen wurde mindestens ein Effekt dieses Gegenstands (oder eines darin enthaltenen Gegenstands) isoliert.

|cffff9900Klicken, um die Sicherheit des Gegenstands zu prüfen.

Du kannst auch auf den Gegenstand im Inventar Strg+Rechtsklicken, um die Sicherheitseinstellung später vorzunehmen.]=],
	["SEC_HIGH"] = "Hoch",
	["SEC_HIGH_TT"] = "Dieser Gegenstand und alle zugehörigen Objekte sind sicher und nutzen keine potenziell bösartigen oder ungewollten Effekte.",
	["SEC_LEVEL"] = "Sicherheitsstufe",
	["SEC_LEVEL_DETAIL"] = "Klicken, um Einzelheiten der unsicheren Skripts einzusehen.",
	["SEC_LEVEL_DETAIL2"] = "Klicken, um Einzelheiten der unsicheren Skripts einzusehen und um ausgewählte Effekte zu erlauben.",
	["SEC_LEVEL_DETAILS"] = "Sicherheitsdetails",
	["SEC_LEVEL_DETAILS_ACCEPTED"] = "Erlaubt",
	["SEC_LEVEL_DETAILS_ALL"] = "Sicherheit für alle Objekte umschalten",
	["SEC_LEVEL_DETAILS_ALL_TT"] = "Erlaubt das Ausführen dieses Effekts für alle Objekte, jetzt und in der Zukunft.",
	["SEC_LEVEL_DETAILS_BLOCKED"] = "Blockiert",
	["SEC_LEVEL_DETAILS_FROM"] = "Immer erlauben, falls von %s erhalten",
	["SEC_LEVEL_DETAILS_SECURED"] = "Dieses Objekt und all seine inneren Objekte sind sicher!",
	["SEC_LEVEL_DETAILS_THIS"] = "Sicherheit dieses Objekts umschalten",
	["SEC_LEVEL_DETAILS_THIS_TT"] = "Erlaubt das Ausführen dieses Effekts (nur) durch dieses Objekt.",
	["SEC_LEVEL_DETAILS_TT"] = [=[Für %s und alle inneren Objekte.
|cffff9900Erstellt von: |cff00ff00%s
|cffff9900Erhalten von: |cff00ff00%s]=],
	["SEC_LOW"] = "Niedrig",
	["SEC_LOW_TT"] = "Dieser Gegenstand, oder einer der zugehörigen Objekte, benutzt ein oder mehrere unsichere Skripte, die potenziell böswillige Effekte haben.",
	["SEC_MEDIUM"] = "Mittel",
	["SEC_MEDIUM_TT"] = "Dieser Gegenstand, oder einer der zugehörigen Objekte, benutzt ein oder mehrere unsichere Skripte, die potentiell ungewollte Effekte haben.",
	["SEC_MISSING_SCRIPT"] = "Arbeitsablauf \"%s\" nicht gefunden",
	["SEC_REASON_DISMOUNT"] = "Absitzen",
	["SEC_REASON_DISMOUNT_WHY"] = [=[Dieser Gegenstand könnte dich zum absitzen zwingen.

|cffff9900Das könnte sehr unangenehm für dich werden... Vor allem auf einem fliegenden Reittier!]=],
	["SEC_REASON_MACRO"] = "Makro ausführen",
	["SEC_REASON_MACRO_WHY"] = [=[Dieses Objekt kann Makrobefehle ausführen.

|cffff0000Es könnte Zauber wirken oder Gegenstände verbrauchen (außerhalb des Kampfs). Es könnte auch - wie ein Addon - beliebigen Lua-Code ausführen, der dein Inventar, dein Gold oder deine Gilde betrifft, oder in böswilliger Weise deinen Charakter etwas sagen lassen, was gegen die Benutzerrichtlinien von Blizzard verstößt und einen Bann zur Folge haben kann.

|cff00ff00Falls blockiert, werden die Makrobefehle stattdessen im Chat ausgegeben.]=],
	["SEC_REASON_SCRIPT"] = "Lua Skript",
	["SEC_REASON_SCRIPT_WHY"] = [=[Dieses Objekt könnte jeden "TotalRP 3: Extended"-Effekt auslösen.

|cffff0000Es könnte in einer bösartigen Weise verwendet werden, etwas laut Blizzards Nutzungsbedingungen verwerfliches zu sagen. So etwas kann einen Ausschluss (Ban) vom Spiel bedeuten.

|cff00ff00Wenn der Code blockiert wird, wird er weiterhin in einer gesicherten Umgebung ausgeführt (Chateffekte werden zum Beispiel nur für dich ausgegeben, von deinem Charakter aber nicht ausgesprochen).]=],
	["SEC_REASON_SOUND"] = "Sound abspielen",
	["SEC_REASON_SOUND_WHY"] = [=[Dieses Objekt könnte ein Musikstück oder einen Klang abspielen, den anderen TRP3:E-Benutzer in deiner Nähe hören können.

|cffff9900Dies kann unerwünscht sein, wenn der Klang gespammt wird oder besonders nervig ist. In diesem Fall könnten sie dich dafür verantwortlich machen und/oder blockieren.

|cff00ff00Wenn der Effekt blockiert ist hörst nur du den Klang/die Musik.]=],
	["SEC_REASON_TALK"] = "Charakter spricht",
	["SEC_REASON_TALK_WHY"] = [=[Dieses Objekt könnte deinen Charakter etwas sagen lassen (in Kanal /sagen, /schreiein oder sonstwo).

|cffff0000Dies könnte auf böswillige Art ausgenutzt werden, damit dein Charakter etwas sagt, was gegen Blizzards Nutzungsbedingungen verstößt und einen Bann nach sich ziehen könnte.

|cff00ff00Wenn der Effekt blockiert ist, wird stattdessen ein Text ausgegeben, der nur für dich sichtbar ist (und nicht von deinem Charakter gesagt wird).]=],
	["SEC_RESOLUTION_ALL"] = "Für alle Objekte",
	["SEC_RESOLUTION_AUTHOR"] = "Du bist der Urheber",
	["SEC_RESOLUTION_THIS_OBJECT"] = "Nur für dieses Objekt",
	["SEC_RESOLUTION_WHITELISTED"] = "Weißgelisteter Absender",
	["SEC_SCRIPT_ERROR"] = "Fehler in Arbeitsabfolge %s.",
	["SEC_TT_COMBO"] = "Alt+Rechtsklicken:|cffff9900 Sicherheit einstellen",
	["SEC_TT_COMBO_2"] = "Sicherheit einstellen",
	["SEC_UNSECURED_WHY"] = "Warum ist das unsicher?",
	["SET_TT_DETAILS_1"] = "Halte Alt gedrückt um mehr anzuzeigen",
	["SET_TT_DETAILS_2"] = "%s Warnung(en)",
	["SET_TT_OLD"] = [=[Dieser Gegenstand wurde mit einer älteren Version von Extended (v %s) erstellt.
Es könnte zu Inkompatibilitäten kommen.]=],
	["SET_TT_SECURED"] = [=[Einige möglicherweise schädliche Effekte wurden aus Sicherheitsgründen blockiert.
|cff00ff00Alt+Rechtsklicken für mehr Details.]=],
	["SET_TT_SECURED_2"] = "Einige möglicherweise schädliche Effekte wurden aus Sicherheitsgründen blockiert.",
	["SET_TT_SECURED_2_1"] = "Mehr Details ansehen.",
	["SPECIFIC"] = "Bestimmtes Objekt",
	["SPECIFIC_INNER_ID"] = "Innere Id",
	["SPECIFIC_MODE"] = "Modus",
	["SPECIFIC_PATH"] = "Wurzelpfad",
	["TB_TOOLS"] = "Extended-Objektdatenbank",
	["TB_TOOLS_TT"] = "Erschaffe deine eigenen Gegenstände und Quests.",
	["TU_AC_1_TEXT"] = [=[Mit |cff00ff00Aktionsverknüpfungen|r kannst du Arbeitsabläufe mit Questaktionen verknüpfen.
Es gibt vier Aktionstypen, die ein Spieler ausführen kann:
|cff00ff00Zuhören, betrachten, reden und interagieren|r. 
Du kannst Aktionsverknüpfungen in der Kampagne, der Quest oder im Questschritt definieren.]=],
	["TU_AC_2"] = "Aktionsauswertung",
	["TU_AC_2_TEXT"] = [=[Jede Aktion kann mit einer Bedingung versehen werden, indem man darauf |cff00ff00Strg+rechtsklickt|r.
Führt der Spieler eine Aktion aus, |cff00ff00werden alle Aktionsverknüpfungen in einer festgelegten Reihenfolge ausgewertet|r, beginnend beim Questschritt, dann in der Quest und schließlich in der Kampagne.
Wenn eine Verknüpfung zutrifft (der Aktionstyp stimmt überein und die Bedingung ist erfüllt oder nicht vorhanden), wird der verknüpfte Arbeitsablauf ausgeführt und |cffff9900das Addon beendet die Suche nach weiteren Verknüpfungen|r.]=],
	["TU_CO_1_TEXT"] = [=[Ein Behälter ist ein Gegenstand in dem sich andere Gegenstände befinden können.
Um einen Behälter zu öffen, kannst du in im Inventar |cff00ff00doppelklicken|r.
Ein Behälter kann auch benutzbar sein (Rechtsklick). Diese beiden Konzepte schließen sich nicht aus.
|cffff9900Bitte beachte, dass du (bis jetzt) nur leere Behälter mit anderen Spielern handeln kannst, oder solche, die nur innere Objekte enthalten. Mehr Informationen dazu gibt es unter der Registerkarte "Innere Objekte".]=],
	["TU_CS_1_TEXT"] = [=[Mit |cff00ff00Zwischensequenzen|r kannst du dem Spieler ein erzählerisches Spielerlebnis bescheren.
Zwischensequenzen benutzen dieselbe Aufmachung wie das Addon "Storyline".]=],
	["TU_CS_2_TEXT"] = [=[Eine Zwischensequenz ist eine Liste von Schritten, die nacheinander abgespielt werden.
Sie stellt eine Szene dar, in der zwei Charaktere miteinander reden.
In jedem Schritt kannst du die Szene beliebig einstellen.]=],
	["TU_CS_3_TEXT"] = [=[Der Text eines Schritts wird in Teilschritte zerlegt, wenn du einen doppelten Zeilenumbruch eingibst. Diese Teilschritte benutzen dieselbe Einstellung.
Du wirst also typischerweise zum nächsten Schritt wechseln wenn du den Sprecher ändern möchtest (mit dem Attribut "Sprechrichtung").
Wenn du eine Einstellung in einem Schritt ändern möchtest, |cff00ff00stell sicher, dass das entsprechende Attribut aktiviert ist.]=],
	["TU_CS_4"] = "Zwischensequenzen und Arbeitsabläufe",
	["TU_CS_4_TEXT"] = [=[Du kannst einen Arbeitsablauf mit einem Schritt verknüpfen. Dieser wird beim Betreten des Schritts (oder des ersten Teilschritts) ausgeführt.
Wenn der Arbeitsablauf einen Beute-Effekt enthält, kannst du die Option "Warte auf Beute" benutzen, damit der Spieler die Beute entgegennehmen muss, bevor es weitergeht.]=],
	["TU_CS_5"] = "Vorschau",
	["TU_CS_5_TEXT"] = [=[Du kannst dir jederzeit eine Vorschau der Zwischensequenz ansehen.
|cffff9900Verknüpfte Arbeitsabläufe werden in der Vorschau nicht ausgeführt.]=],
	["TU_DB_1_TEXT"] = [=[|cff00ff00Willkommen beim Datenbank-Tutorial.|r
Dies ist die Datenbank, in der alle Objekte gespeichert werden.
Ein Objekt enthält alle Informationen über einen Gegenstand, ein Dokument, eine Kampagne/Quest/Questschritt oder eine Zwischensequenz.]=],
	["TU_DB_2"] = "Datenbank-Typen",
	["TU_DB_2_TEXT"] = [=[Es gibt vier Registerkarten, aus denen sich die gesamte Datenbank zusammensetzt.
|cff00ff00Meine Datenbank:|r enthält alle Objekte, die von dir stammen.
|cff00ff00Spielerdatenbank:|r enthält alle Objekte, die du von anderen Spielern bekommen (oder importiert) hast.
|cff00ff00Unterstützerdatenbank:|r enthält Objekte der Kickstarter-Unterstützer und des TRP3-Teams.
|cff00ff00Gesamte Datenbank:|r enthält alle oben genannten Inhalte.]=],
	["TU_DB_3_TEXT"] = [=[Du kannst jede Datenbank filtern, um ein bestimmtes Objekt zu finden, indem du den Suchfilter änderst und |cff00ff00"Suchen"|r auswählst.
Ohne Filter werden die Objekte hierarchisch angeordnet.
Wenn du jedoch filterst, werden sie als Liste angezeigt.
Hier haben wir eben die Liste nach Objekttyp gefiltert, damit nur |cffff9900Gegenstände|r angezeigt werden.
Um den Suchmodus zu verlassen, klicke auf |cff00ff00"Zurücksetzen"|r im Filterfeld.]=],
	["TU_DB_4"] = "Wurzel- und innere Objekte",
	["TU_DB_4_TEXT"] = [=[Es gibt zwei Sorten von Objekten: |cff00ff00Wurzelobjekte und innere Objekte|r.
|cff00ff00Innere Objekte|r werden immer in einem |cff00ff00Wurzelobjekt|r gespeichert (auch wenn sie tief verschachtelt innerhalb anderer innerer Objekte liegen).
Wenn du jemandem einen Gegenstand gibst, werden auch die übergeordneten Objektdaten übertragen, selbst wenn es nur ein inneres Objekt ist.
Fürs erste kannst du dir merken: Innere Objekte eignen sich gut, wenn zusammengehörige Daten ausgetauscht werden sollen.
Beispiele:
- Ein Gegenstand, der ein Dokument anzeigt: Das Dokument ist ein inneres Objekt des Wurzelgegenstands.
- Eine Kampagne mit 4 Quests: Jede Quest ist ein inneres Objekt der Kampagne.
- Ein Gewehr, das Patronen abfeuert: Das Patronen-Objekt ist ein inneres Objekt des Gewehr-Objekts.
Keine Sorge, das ergibt sich ganz von selbst!]=],
	["TU_DB_5"] = "Wurzelobjekte",
	["TU_DB_5_TEXT"] = [=[Nur Gegenstände und Kampagnen können Wurzelobjekte sein.

Du kannst diese beiden Schaltflächen benutzen um einen neuen Gegenstand oder eine neue Kampagne zu erstellen.]=],
	["TU_DB_6"] = "Gegenstand erstellen",
	["TU_DB_6_TEXT"] = [=[Um einen Gegenstand zu erstellen kannst du eine Vorlage auswählen oder den Schnellmodus verwenden.
Der |cff00ff00Schnellmodus|r ist gut für einfache Gegenstände, aber er ist eingeschränkt. Du kannst jederzeit in den Normalmodus wechseln.
Benutze die Vorlage |cff00ff00"leerer Gegenstand"|r wenn du ganz von vorn anfangen möchtest, ohne ein Beispiel.
Die Vorlage |cff00ff00"Dokument"|r erstellt zwei Objekte: Ein Gegenstands-Objekt und das eigentliche Dokument als inneres Objekt. Der Gegenstand wird so eingestellt, dass das Dokument angezeigt wird, sobald der Gegenstand benutzt wird.
Die Vorlage |cff00ff00"Behälter"|r richtet einen Gegenstand ein, der als Behälter benutzt werden kann.
Schließlich erlaubt |cff00ff00"Erstellen aus"|r das Duplizieren eines existierenden Gegenstands.]=],
	["TU_DB_7"] = "Objekt-Zeile",
	["TU_DB_7_TEXT"] = "Jede Zeile stellt ein Objekt dar. Du kannst darauf klicken um es zu bearbeiten oder rechtsklicken für weitere Aktionen.",
	["TU_EL_1_TEXT"] = [=[In der Rubrik "Ereignisverknüpfungen" kannst du |cff00ff00Arbeitsabläufe mit Ereignissen|r verknüpfen.
|cffff9900Arbeitsabläufe werden schließlich nicht einfach so gestartet!|r Du musste sie mit einem Ereignis verknüpfen, damit sie ausgeführt werden, sobals dieses eintritt.
Wir haben hier zweierlei Ereignistypen: |cff00ff00Objektereignisse und Spielereignisse|r.]=],
	["TU_EL_2_TEXT"] = [=[|cff00ff00Objektereignisse|r sind Ereignisse die mit Total RP 3 zusammenhängen.
Die Liste der möglichen Ereignisse ist festgelegt und hängt vom Objekttyp ab (Gegenstand, Quest, usw.).
Mit einem Ereignis kann nur ein Arbeitsablauf verknüpft werden, aber derselbe Arbeitsablauf kann mit mehreren verschiedenen Ereignissen verknüpft sein.]=],
	["TU_EL_3_TEXT"] = [=[|cff00ff00Spielereignisse|r werden vom Spiel ausgelöst sobald etwas passiert.
Jede Verknüpfung, die du hinzufügst, verbindet ein Spielereignis mit einem Arbeitsablauf. Jedes Mal, wenn das Ereignis eintritt, wird der Arbeitaablauf ausgeführt.
|cff00ff00Du kannst eine Bedingung hinzufügen indem du auf die Verknüpfung Strg+klickst.|r Innerhalb der Bedingung kannst du auf die Ereignisparameter zugreifen, wenn du sie prüfen möchtest.
Bspw. kannst du herausfinden, welcher Zauber gewirkt wird, wenn du das entsprechende Ereignis verfolgst.
|cffff9900Es gibt eine große Liste von Spielereignissen und es liegt nicht an uns sie alle hier aufzulisten. Wir empfehlen dir, bei Webseiten wie Wowwiki vorbeizuschauen.
http://wowwiki.wikia.com/wiki/Event_API]=],
	["TU_EL_3_TEXT_V2"] = [=[|cff00ff00Spielereignisse|r werden vom Spiel ausgelöst sobald etwas passiert.

Jede Verknüpfung, die du hinzufügst, verbindet ein Spielereignis mit einem Arbeitsablauf. Jedes Mal, wenn das Ereignis eintritt, wird der Arbeitaablauf ausgeführt.

|cff00ff00Du kannst eine Bedingung hinzufügen indem du auf die Verknüpfung Strg+klickst.|r Innerhalb der Bedingung kannst du auf die Ereignisparameter zugreifen, wenn du sie prüfen möchtest.
Bspw. kannst du herausfinden, welcher Zauber gewirkt wird, wenn du das entsprechende Ereignis verfolgst.

|cffff9900Es gibt eine große Liste von Spielereignissen und es liegt nicht an uns sie alle hier aufzulisten. Wir empfehlen dir, bei Webseiten wie Wowwiki vorbeizuschauen.
http://wowwiki.wikia.com/wiki/Event_API|r

Zusätzlich zu Spielereingissen |cff00ff00bietet Total RP 3: Extended einige eigene Ereingisse an|r, die im Wiki des Addons dokumentiert sind.
|cff00ff00https://github.com/Ellypse/Total-RP-3-Extended/wiki|r]=],
	["TU_EL_4_TEXT"] = "|cff00ff00Spielereignisse|r sind nur in Kampagnen, Quests oder Questschritten verfügbar.",
	["TU_IT_1_TEXT"] = [=[|cff00ff00Willkommen beim Tutorial zur Gegenstandserstellung.|r
Ein Gegenstand ist ein Objekt, das du im Charakterinventar ablegen kannst (oder auf den Boden fallen lassen kannst).
Dies ist die Übersicht, in der du alle Basisattribute deines Gegenstands festlegen kannst.]=],
	["TU_IT_2"] = "Anzeigeattribute",
	["TU_IT_2_TEXT"] = [=[Anzeigeattribute sind rein optisch und haben keine "Gameplay"-Relevanz.
Sie sind dazu dar, um das Icon und den Tooltip festzulegen.]=],
	["TU_IT_3"] = "Freie Notizen",
	["TU_IT_3_TEXT"] = [=[Hier kannst du dir Notizen machen um dich später daran erinnern zu können was du mit dem Gegenstand vorhast.
Diese Notizen können auch anderen helfen, die deinen Gegenstand als Vorlage benutzen wollen.]=],
	["TU_IT_4"] = "Gameplayattribute",
	["TU_IT_4_TEXT"] = [=[Gameplayattribute wirken sich auf des Spielverlauf aus.
Zwei Attribute sind besonders wichtig: |cff00ff00Benutzbar|r und |cff00ff00Behälter|r. Sind diese aktiviert, erscheinen die Rubriken |cff00ff00Arbeitsabläufe|r und |cff00ff00Behälter|r.]=],
	["TU_TITLE"] = "Tutorial",
	["TU_WO_1_TEXT"] = [=[|cff00ff00Willkommen beim Tutorial zu Arbeitsabläufen.|r
Ein Arbeitsablauf ist der Mechanismus, der deiner Kreation Leben einhaucht. Hier ist es möglich Effekte auszulösen, wie z.B. einen Text anzuzeigen, einen Klang abzuspielen oder dem Spieler ein Beutegegenstand zu geben.]=],
	["TU_WO_2"] = "Liste der Arbeitsabläufe",
	["TU_WO_2_TEXT"] = [=[Links ist die |cff00ff00Liste der Arbeitsabläufe|r.
Du kannst Arbeitsabläufe löschen, umbenennen oder kopieren und einfügen indem du darauf rechtsklickst.
|cffff9900Beachte: Wenn du einen Gegenstand im Normalmodus bearbeitest, wirst du hier keine Liste sehen, sondern nur einen einzigen Arbeitsablauf "Bei Benutzen". Wenn du mehrere Arbeitsabläufe innerhalb eines Gegenstands benutzen willst, kannst du ihn in den Expertenmodus überführen, indem du in der Datenbankansicht rechtsklickst.]=],
	["TU_WO_3_TEXT"] = [=[Hier sind alle Elemente des Arbeitsablaufs aufgelistet.
Ein Element kann ein Effekt, eine Verzögerung oder eine Bedingung sein.
Die Reihenfolge ist wichtig, denn die Elemente werden von oben nach unten ausgeführt.
Du kannst die Reihenfolge mit den Pfeilen in der rechten oberen Ecke eines jeden Elements verändern.]=],
	["TU_WO_4"] = "Effekt hinzufügen",
	["TU_WO_4_TEXT"] = [=[Effekte sind Befehle wie "spiele einen Klang ab", "zeige Text an" oder "starte eine Zwischensequenz".
Es gibt VIELE Effekte, jeder wird in einem eigenen Tooltip erklärt.]=],
	["TU_WO_5"] = "Bedingung hinzufügen",
	["TU_WO_5_TEXT"] = [=[Mit Bedingungen kannst du |cff00ff00Zustände überprüfen um ggf. die Ausführung des Arbeitsablaufs abzubrechen.|r
|cffff9900Ist die Bedingung nicht erfüllt, wird der Arbeitsablauf nicht fortgesetzt.|r
Eine Bedingung besteht aus mehreren Vergleichen, die mit ODER bzw. UND verknüpft sind.
Jeder Vergleich vergleicht zwei Werte. Zum Bespiel "Das Ziel hat weniger Lebenspunkte als 500", "Der Spieler ist nicht tot" oder "Der Spieler hat mehr als 3 Einheiten des Gegenstands [xxx] im Inventar".]=],
	["TU_WO_6"] = "Verzögerung hinzufügen",
	["TU_WO_6_TEXT"] = "Verzögerungen pausieren den Arbeitsablauf für eine festgelegte Zeit, aber sie können auch als Zauberbalken verwendet werden und den Arbeitsablauf abbrechen, wenn sich der Spieler bewegt.",
	["TU_WO_ERROR_1"] = "Bitte erstelle einen Arbeitsablauf bevor du mit dem Tutorial weitermachst.",
	["TYPE"] = "Typ",
	["TYPE_CAMPAIGN"] = "Kampagne",
	["TYPE_DIALOG"] = "Zwischensequenz",
	["TYPE_DOCUMENT"] = "Dokument",
	["TYPE_ITEM"] = "Gegenstand",
	["TYPE_ITEMS"] = "Gegenstand/Gegenstände",
	["TYPE_LOOT"] = "Beute",
	["TYPE_QUEST"] = "Quest",
	["TYPE_QUEST_STEP"] = "Questschritt",
	["UNIT_FRIES"] = "Fritten",
	["UNIT_POTATOES"] = "Kartoffeln",
	["WO_ACTIONS_LINKS"] = "Aktionsverknüpfungen",
	["WO_ACTIONS_LINKS_TT"] = [=[Hier kannst du Arbeitsabläufe mit Questaktionen des Spielers verknüpfen.
Aktionen sind: |cff00ff00Interagieren, zuhören, reden und betrachten.|r
Jede Verknüpfung kann mit einer Bedingung versehen werden.]=],
	["WO_ADD"] = "Arbeitsablauf erstellen",
	["WO_ADD_ID"] = [=[|cff00ff00Gib die Arbeitsablauf-Id ein.|r

Dies ist ein interner Bezeichner, der dabei hilft dich in deinen Arbeitsabläufen zurechtzufinden; er ist für den Spieler nicht sichtbar.

Beachte, dass zwei Arbeitsabläufe innerhalb eines Objekts nicht dieselbe Id haben können.]=],
	["WO_ADD_ID_NO_AVAILABLE"] = "Diese Arbeitsablauf-Id ist nicht verfügbar.",
	["WO_COMMON_EFFECT"] = "Gewöhnliche Effekte",
	["WO_CONDITION"] = "Bedingung",
	["WO_CONDITION_TT"] = [=[Wertet eine Bedingung aus.
Hält den Arbeitsablauf an, falls die Bedingung nicht zutrifft.]=],
	["WO_CONTEXT"] = "Kontext",
	["WO_CONTEXT_TT"] = "Der Ablauf-Kontext legt fest, welche Effekte im Arbeitsablauf genutzt werden können.",
	["WO_COPY"] = "Inhalt des Arbeitsablaufs kopieren",
	["WO_DELAY"] = "Verzögerung",
	["WO_DELAY_CAST"] = "Zauberwirken",
	["WO_DELAY_CAST_SOUND"] = "Klang-Id des Zaubers",
	["WO_DELAY_CAST_SOUND_TT"] = [=[Eine Klang-id für die Zeit des Zauberwirkens. Du kannst einen wiederholbaren Klang verwenden. Dieser wird angehalten, falls der Zauber unterbrochen wird.

|cff00ff00Beispiele: 12273, 12361, usw.]=],
	["WO_DELAY_CAST_TEXT"] = "Zaubertext",
	["WO_DELAY_CAST_TEXT_TT"] = "Der Text, der auf dem Zauberbalken erscheint.",
	["WO_DELAY_DURATION"] = "Dauer",
	["WO_DELAY_DURATION_TT"] = "Die Dauer der Verzögerung, in Sekunden.",
	["WO_DELAY_INTERRUPT"] = "Unterbrechung",
	["WO_DELAY_INTERRUPT_1"] = "Keine Unterbrechung",
	["WO_DELAY_INTERRUPT_2"] = "Unterbrechung bei Bewegung",
	["WO_DELAY_SECONDS"] = "Sekunde(n)",
	["WO_DELAY_TT"] = [=[Pausiert den Arbeitsablauf.
Kann auch als Zauberwirken verwendet werden, welches optional unterbrechbar ist.]=],
	["WO_DELAY_TYPE"] = "Verzögerungstyp",
	["WO_DELAY_TYPE_1"] = "Normale Verzögerung",
	["WO_DELAY_TYPE_1_TT"] = "Pausiert den Arbeitsablauf lediglich, ohne dem Spieler etwas anzuzeigen.",
	["WO_DELAY_TYPE_2"] = "Zauberwirken",
	["WO_DELAY_TYPE_2_TT"] = "Zeigt einen Zauberbalken während der Pause.",
	["WO_DELAY_WAIT"] = "Wartet auf",
	["WO_EFFECT"] = "Effekt",
	["WO_EFFECT_CAT_COMMON"] = "Allgemein",
	["WO_EFFECT_NO_EDITOR"] = "Dieser Effekt kann nicht konfiguriert werden.",
	["WO_EFFECT_SELECT"] = "Wähle einen Effekt aus",
	["WO_EFFECT_TT"] = [=[Führt einen Effekt aus.
Das kann das Abspielen eines Klangs, Anzeigen von Text, uvm. sein.]=],
	["WO_ELEMENT"] = "Element bearbeiten",
	["WO_ELEMENT_ADD"] = "Element in Arbeitsablauf einfügen",
	["WO_ELEMENT_COND"] = "Effektbedingung bearbeiten",
	["WO_ELEMENT_COND_NO"] = "Effektbedingung entfernen",
	["WO_ELEMENT_COND_TT"] = "Für (nur) diesem Effekt eine Bedingung hinzu.",
	["WO_ELEMENT_COPY"] = "Elementinhalt kopieren",
	["WO_ELEMENT_EDIT"] = "Klicken um das Element zu bearbeiten",
	["WO_ELEMENT_EDIT_CTRL"] = "Strg+Klicken um diesem Befehl eine Bedingung hinzuzufügen",
	["WO_ELEMENT_EDIT_RIGHT"] = "Rechtsklicken für mehr Operationen",
	["WO_ELEMENT_PASTE"] = "Elementinhalt einfügen",
	["WO_ELEMENT_TYPE"] = "Wähle den Elementtyp",
	["WO_EMPTY"] = [=[Du kannst beginnen, indem du deinem Arbeitsablauf ein Element hinzufügst.
Dies kann ein Effekt, eine Bedingung oder eine Verzögerung sein.]=],
	["WO_END"] = "Ende des Arbeitsablaufs",
	["WO_EVENT_EX_ADD"] = "Ereignisverknüpfung hinzufügen",
	["WO_EVENT_EX_BROWSER_COMBAT_LOG_ERROR"] = "Kann Argumente nicht anzeigen, siehe Wowpedia.",
	["WO_EVENT_EX_BROWSER_NO_PAYLOAD"] = "Keine Argumente",
	["WO_EVENT_EX_BROWSER_OPEN"] = "Ereigniskatalog öffnen",
	["WO_EVENT_EX_BROWSER_TITLE"] = "Ereigniskatalog",
	["WO_EVENT_EX_CONDI"] = "Bedingungseditor für Ereignisverknüpfung",
	["WO_EVENT_EX_EDITOR"] = "Editor für Ereignisverknüpfung",
	["WO_EVENT_EX_LINK"] = "Spielereignisverknüpfung",
	["WO_EVENT_EX_LINKS"] = "Spielereignisverknüpfungen",
	["WO_EVENT_EX_LINKS_TT"] = [=[Hier kannst du Arbeitsabläufe mit Spielereignissen verknüpfen.
Jede Verknüpfung kann mit einer Bedingung versehen werden.]=],
	["WO_EVENT_EX_NO"] = "Keine Ereignisverknüpfung",
	["WO_EVENT_EX_UNKNOWN_ERROR"] = "[Fehler] Unbekanntes Ereignis %s in %s",
	["WO_EVENT_ID"] = "Ereignis-Id",
	["WO_EVENT_ID_TT"] = [=[Die Ereignis-Id.

Du kannst die vollständige Liste auf Webseiten wie WoWWiki oder Wowpedia einsehen.

Als Beispiel sei "PLAYER_REGEN_DISABLED" erwähnt, welches immer ausgelöst wird, sobald du den Kampf betrittst.]=],
	["WO_EVENT_LINKS"] = "Objektereignisverknüpfungen",
	["WO_EXECUTION"] = "Arbeitsablaufplan",
	["WO_EXPERT"] = "Expertenmodus",
	["WO_EXPERT_DONE"] = "%s in Expertenmodus überführt. Lass deiner Kreativität nun freien Lauf!",
	["WO_EXPERT_EFFECT"] = "Experteneffekte",
	["WO_EXPERT_TT"] = [=[Ein Arbeitsablauf ist eine Reihe von Befehlen, die dein Objekt dynamisch machen können.

Hier kannst du alle Arbeitsabläufe für dieses Objekt definieren. Dann kannst du sie mit Aktionen in der Rubrik "Ereignisverknüpfungen" verknüpfen.]=],
	["WO_LINKS"] = "Ereignisverknüpfungen",
	["WO_LINKS_NO_LINKS"] = "kein Link",
	["WO_LINKS_NO_LINKS_TT"] = "Verknüpft diese Aktion/dieses Ereignis nicht mit einem Arbeitsablauf.",
	["WO_LINKS_SELECT"] = "Arbeitsablauf zum verknüpfen wählen",
	["WO_LINKS_TO"] = "Verknüpft mit Arbeitsablauf",
	["WO_LINKS_TRIGGERS"] = "Hier kannst du deinen Arbeitsablauf mit einem bestimmten Ereignis deines Objekt verknüpfen.",
	["WO_NO"] = "keine Arbeitsabläufe",
	["WO_PASTE"] = "Füge Inhalt des Arbeitsablaufes ein",
	["WO_PASTE_CONFIRM"] = "Möchtest du den Inhalt des Arbeitsablaufs durch den vorher kopierten ersetzen?",
	["WO_REMOVE_POPUP"] = "Diesen Ablauf %s löschen? ",
	["WO_SECURITY"] = "Sicherheitsstufe",
	["WO_SECURITY_HIGH"] = "Hoch",
	["WO_SECURITY_HIGH_DETAILS"] = "Dieser Effekt ist sicher und führt zu keiner Sicherheitswarnung.",
	["WO_SECURITY_LOW"] = "Niedrig",
	["WO_SECURITY_LOW_DETAILS"] = "Dieser Effekt ist nicht sicher und könnte schädlich sein. Basierend auf den Sicherheitseinstellungen des Benutzers wird eine Sicherheitswarnung ausgegeben, welche eine Bestätigung erfordert.",
	["WO_SECURITY_NORMAL"] = "Mittel",
	["WO_SECURITY_NORMAL_DETAILS"] = "Der Effekt ist abgesichert, aber könnte Unannehmlichkeiten erzeugen. Es werden Warnungen basierend auf den Sicherheitseinstellungen des Benutzers angezeigt.",
	["WO_WO_SECURITY"] = "Sicherheit der Arbeitsabläufe",
	["WO_WORKFLOW"] = "Arbeitsabläufe"
}

Localization:GetLocale("deDE"):AddTexts(localeContent);
localeContent = {
	["ALL"] = "Tous",
	["BINDING_NAME_TRP3_INVENTORY"] = "Ouvrir l'inventaire du personnage",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "Ouvrir le contenant principal",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "Action de quête : interagir",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "Action de quête : écouter",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "Action de quête : observer",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "Action de quête : parler",
	["BINDING_NAME_TRP3_QUESTLOG"] = "Ouvrir le journal de quêtes TRP3",
	["BINDING_NAME_TRP3_SEARCH_FOR_ITEMS"] = "Rechercher des objets",
	["CA_ACTION_CONDI"] = "Éditeur de condition d'action",
	["CA_ACTION_REMOVE"] = "Supprimer cette action ?",
	["CA_ACTIONS"] = "Actions",
	["CA_ACTIONS_ADD"] = "Ajouter action",
	["CA_ACTIONS_COND"] = "Modifier condition",
	["CA_ACTIONS_COND_OFF"] = "Cette action n'est pas conditionnée.",
	["CA_ACTIONS_COND_ON"] = "Cette action est conditionnée.",
	["CA_ACTIONS_COND_REMOVE"] = "Supprimer condition",
	["CA_ACTIONS_EDITOR"] = "Éditeur d'action",
	["CA_ACTIONS_NO"] = "Pas d'action",
	["CA_ACTIONS_SELECT"] = "Sélection de type d'action",
	["CA_DESCRIPTION"] = "Résumé de la campagne",
	["CA_DESCRIPTION_TT"] = "Ce bref résumé apparaîtra sur la page de la campagne, dans le journal de quêtes.",
	["CA_ICON"] = "Icône de la campagne",
	["CA_ICON_TT"] = "Sélection de l'icône de campagne",
	["CA_IMAGE"] = "Portrait de campagne",
	["CA_IMAGE_TT"] = "Sélection du portrait de campagne",
	["CA_LINKS_ON_START"] = "Au lancement de la campagne",
	["CA_LINKS_ON_START_TT"] = [=[Déclenché |cff00ff00une seule fois|r lorsque le joueur commence votre campagne, donc lorsqu'il active votre campagne pour la première fois, ou la réinitialise dans le journal de quêtes.

|cff00ff00C'est un bon endroit où placer l'activation de la première quête.|r]=],
	["CA_NAME"] = "Nom de campagne",
	["CA_NAME_NEW"] = "Nouvelle campagne",
	["CA_NAME_TT"] = "C'est le nom de votre campagne. Il apparaît dans le journal de quêtes.",
	["CA_NO_NPC"] = "Pas de PNJ personnalisé",
	["CA_NPC"] = "Liste des PNJs de campagne",
	["CA_NPC_ADD"] = "Ajouter un PNJ personnalisé",
	["CA_NPC_AS"] = "Dupliquer",
	["CA_NPC_EDITOR"] = "Éditeur de PNJ",
	["CA_NPC_EDITOR_DESC"] = "Description du PNJ",
	["CA_NPC_EDITOR_NAME"] = "Nom du PNJ",
	["CA_NPC_ID"] = "ID du PNJ",
	["CA_NPC_ID_TT"] = [=[Veuillez entrer l'identifiant du PNJ à personnaliser.

|cff00ff00Pour obtenir l'identifiant d'un PNJ actuellement ciblé, tapez cette commande dans le chat: /trp3 getID]=],
	["CA_NPC_NAME"] = "Nom de PNJ par défaut",
	["CA_NPC_REMOVE"] = "Supprimer ce PNJ personnalisé ?",
	["CA_NPC_TT"] = [=[Vous pouvez personnaliser des PNJs afin de leur donner un nom, une icône et une description.
Cette personnalisation sera visible lorsque le joueur aura votre campagne comme campagne active.]=],
	["CA_NPC_UNIT"] = "PNJ personnalisé",
	["CA_QE_ID"] = "Changer l'ID de quête",
	["CA_QE_ST_ID"] = "Changer l'ID de l'étape de quête",
	["CA_QUEST_ADD"] = "Ajouter quête",
	["CA_QUEST_CREATE"] = [=[Veuillez entrer l'ID de quête. Vous ne pouvez avoir deux quêtes avec le même ID au sein d'une campagne.

|cffff9900Veuillez noter que les quêtes seront listées dans le journal par ordre alphabétique d'ID.

|cff00ff00Il est donc conseillé de commencer l'ID d'une quête par quete_#, où le # est le numéro d’apparition voulu de la quête dans le journal.]=],
	["CA_QUEST_DD_COPY"] = "Copier quête",
	["CA_QUEST_DD_PASTE"] = "Coller quête",
	["CA_QUEST_DD_REMOVE"] = "Supprimer quête",
	["CA_QUEST_EXIST"] = "Il y a déjà une quête avec l'identifiant %s.",
	["CA_QUEST_NO"] = "Pas de quête",
	["CA_QUEST_REMOVE"] = "Supprimer cette quête ?",
	["CL_CAMPAIGN_PROGRESSION"] = "Progression pour %s:",
	["CL_CREATION"] = "Création Extended",
	["CL_EXTENDED_CAMPAIGN"] = "Campagne Extended",
	["CL_EXTENDED_ITEM"] = "Object Extended",
	["CL_IMPORT"] = "Importer dans la base de données",
	["CL_IMPORT_ITEM_BAG"] = "Ajouter dans votre inventaire",
	["CL_TOOLTIP"] = "Créer un lien de discussion",
	["COM_NPC_ID"] = "voir l'ID du PNJ ciblé",
	["COND_COMPLETE"] = "Expression logique complète",
	["COND_CONDITIONED"] = "Conditionné",
	["COND_EDITOR"] = "Éditeur de condition",
	["COND_EDITOR_EFFECT"] = "Editeur de condition d'effet",
	["COND_LITT_COMP"] = "Tous types de comparaison",
	["COND_NUM_COMP"] = "Comparaison numérique seulement",
	["COND_NUM_FAIL"] = "Vous devez avoir deux opérandes numériques si vous utilisez un comparateur numérique.",
	["COND_PREVIEW_TEST"] = "Prévisualiser le test",
	["COND_PREVIEW_TEST_TT"] = "Imprime dans la fenêtre de discussion l'évaluation de ce test, basé sur la situation actuelle.",
	["COND_TEST_EDITOR"] = "Éditeur de test",
	["COND_TESTS"] = "Tests de la condition",
	["CONF_MAIN"] = "Extended",
	["CONF_MUSIC_ACTIVE"] = "Jouer les musiques locales",
	["CONF_MUSIC_ACTIVE_TT"] = [=[Les musiques locales sont des musiques jouées par d'autres joueurs (par exemple via un objet) dans un certain rayon en mètres.

Désactivez ceci si vous voulez ne pas entendre ces musiques.

|cff00ff00Notez que vous n'entendrez jamais les musiques des joueurs ignorés.

|cff00ff00Notez que toutes les musiques sont interruptibles via l'Historique sonore dans la barre de raccourcis TRP3.]=],
	["CONF_MUSIC_METHOD"] = "Méthode d'écoute de musique locale",
	["CONF_MUSIC_METHOD_TT"] = "Détermine de quelle façon vous entendrez une musique locale quand vous êtes à portée.",
	["CONF_SOUNDS"] = "Musiques / sons locaux",
	["CONF_SOUNDS_ACTIVE"] = "Jouer les sons locaux",
	["CONF_SOUNDS_ACTIVE_TT"] = [=[Les sons locaux sont des sons joués par d'autres joueurs (par exemple via un objet) dans un certain rayon en mètres.

Désactivez ceci si vous voulez ne pas entendre ces sons.

|cff00ff00Notez que vous n'entendrez jamais les sons des joueurs ignorés.

|cff00ff00Notez que tous les sons sont interruptibles via l'Historique sonore dans la barre de raccourcis TRP3.]=],
	["CONF_SOUNDS_MAXRANGE"] = "Distance maximum d'écoute",
	["CONF_SOUNDS_MAXRANGE_TT"] = [=[Règle le rayon maximum (en mètres) dans lequel vous entendrez les musiques/sons locaux.

|cffff9900Utile pour éviter les personnes jouant des sons à l'échelle de tout le continent.

|cffff9900Zéro correspond à pas de limite !]=],
	["CONF_SOUNDS_METHOD"] = "Méthode d'écoute de son local",
	["CONF_SOUNDS_METHOD_1"] = "Jouer automatiquement",
	["CONF_SOUNDS_METHOD_1_TT"] = "Si vous êtes à portée, les musiques/sons seront joués sans demander votre permission.",
	["CONF_SOUNDS_METHOD_2"] = "Demander la permission",
	["CONF_SOUNDS_METHOD_2_TT"] = "Si vous êtes à portée, un lien apparaîtra dans la fenêtre de discussion pour vous demander confirmation avant de jouer la musique ou le son.",
	["CONF_SOUNDS_METHOD_TT"] = "Détermine de quelle façon vous entendrez un son local quand vous êtes à portée.",
	["CONF_UNIT"] = "Unités",
	["CONF_UNIT_WEIGHT"] = "Unité de poids",
	["CONF_UNIT_WEIGHT_1"] = "Grammes",
	["CONF_UNIT_WEIGHT_2"] = "Livres",
	["CONF_UNIT_WEIGHT_3"] = "Pommes de terre",
	["CONF_UNIT_WEIGHT_TT"] = "Définit de quelle façon les poids sont affichés.",
	["DB"] = "Base de données",
	["DB_ACTIONS"] = "Actions",
	["DB_ADD_COUNT"] = "Combien d'unités de %s voulez-vous ajouter à votre inventaire ?",
	["DB_ADD_ITEM"] = "Ajouter à l'inventaire principal",
	["DB_ADD_ITEM_TT"] = "Ajoute des unités de cet objet dans votre contenant principal (ou dans l'inventaire principal si vous n'avez pas de contenant principal sur votre personnage).",
	["DB_BACKERS"] = "Base de données Backers (%s)",
	["DB_BACKERS_LIST"] = "Remerciements",
	["DB_BROWSER"] = "Navigateur de créations",
	["DB_COPY_ID_TT"] = "Affiche l'identifiant de création dans une nouvelle fenêtre pour être copié-collé.",
	["DB_COPY_TT"] = "Copie toutes les informations de cette création et de ses créations liées, pour permettre de les coller en tant que création interne.",
	["DB_CREATE_CAMPAIGN"] = "Créer une campagne",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "Campagne vierge",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT"] = [=[Un modèle vierge.
Pour ceux qui préfèrent commencer de zéro.]=],
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "Créer à partir de...",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "Crée une copie d'une campagne préexistante.",
	["DB_CREATE_CAMPAIGN_TT"] = "Commencer la création d'une campagne",
	["DB_CREATE_ITEM"] = "Créer un objet",
	["DB_CREATE_ITEM_TEMPLATES"] = "Ou sélectionnez un modèle",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "Objet vierge",
	["DB_CREATE_ITEM_TEMPLATES_BLANK_TT"] = [=[Un modèle vierge.
Pour ceux qui préfèrent commencer de zéro.]=],
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "Objet contenant",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[Un modèle de contenant.
Un contenant peut contenir d'autres objets.]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "Objet document",
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT"] = [=[Un modèle d'objet incluant un document.
Utile pour créer rapidement un livre ou un parchemin.]=],
	["DB_CREATE_ITEM_TEMPLATES_EXPERT"] = "Objet expert",
	["DB_CREATE_ITEM_TEMPLATES_EXPERT_TT"] = [=[Un modèle expert vierge.
Pour les joueurs expérimentés dans la création d'objets.]=],
	["DB_CREATE_ITEM_TEMPLATES_FROM"] = "Créer à partir de...",
	["DB_CREATE_ITEM_TEMPLATES_FROM_TT"] = "Crée une copie d'un objet préexistant.",
	["DB_CREATE_ITEM_TEMPLATES_QUICK"] = "Création rapide",
	["DB_CREATE_ITEM_TEMPLATES_QUICK_TT"] = [=[Crée rapidement un objet simple et sans effet.
En ajoute une unité dans votre sac principal.]=],
	["DB_CREATE_ITEM_TT"] = "Sélectionner un modèle pour un nouvel objet.",
	["DB_DELETE_TT"] = "Supprime cette création et tous ses éléments enfants.",
	["DB_EXPERT_TT"] = "Bascule cette création en mode expert, qui permet des personnalisations plus poussées.",
	["DB_EXPORT"] = "Exportation rapide de création",
	["DB_EXPORT_DONE"] = [=[Votre création a été exportée dans un fichier appelé |cff00ff00totalRP3_Extended_ImpExport.lua|r dans ce dossier du jeu :

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables

Vous pouvez partager ce fichier avec vos amis !

Vous pouvez suivre le processus d'exportation dans |cff00ff00Full Database tab|r.]=],
	["DB_EXPORT_HELP"] = "Code pour la création %s (taille: %0.1f ko)",
	["DB_EXPORT_MODULE_NOT_ACTIVE"] = "Import/export complet de création: Veuillez activer l'add-on totalRP3_Extended_ImpExport en premier lieu.",
	["DB_EXPORT_TOO_LARGE"] = [=[Cette création est trop lourde une fois sérialisée pour être exportée de cette façon. Veuillez utiliser la méthode d'exportation complète.

Taille : %0.1f kB.]=],
	["DB_EXPORT_TT"] = [=[Sérialise le contenu de cette création pour être échangeable en-dehors du jeu.

Fonctionne seulement sur de petites créations (moins de 20 ko après sérialisation). pour de plus grosses créations, utilisez la méthode d'exportation complète.]=],
	["DB_FILTERS"] = "Filtres de recherche",
	["DB_FILTERS_CLEAR"] = "Effacer",
	["DB_FILTERS_NAME"] = "Nom de la création",
	["DB_FILTERS_OWNER"] = "Créé par",
	["DB_FULL"] = "Base de données complète (%s)",
	["DB_FULL_EXPORT"] = "Exportation complète",
	["DB_FULL_EXPORT_TT"] = [=[Effectuez une exportation complète pour cette création, peu importe sa taille.

Ceci déclenchera un rechargement de l'interface, de façon à forcer l'écriture du fichier de sauvegarde d'add-on.]=],
	["DB_HARD_SAVE"] = "Sauvegarde forcée",
	["DB_HARD_SAVE_TT"] = "Recharge l'interface du jeu de façon à forcer l'écriture des éléments à sauvegarder sur le disque.",
	["DB_IMPORT"] = "Importation rapide de création",
	["DB_IMPORT_CONFIRM"] = [=[Cette création a été sérialisée dans une version de TotalRP3:Extended différente de la vôtre.

Version TRP3E de l'importation : %s
Votre version TRP3E : %s

|cffff9900Ceci peut engendrer des incompatibilités.
Poursuivre l'importation malgré tout ?]=],
	["DB_IMPORT_DONE"] = "Création importée avec succès !",
	["DB_IMPORT_EMPTY"] = [=[Il n'y a pas de création à importer dans votre fichier |cff00ff00totalRP3_Extended_ImpExport.lua|r.

Le fichier doit être placé dans ce dossier du jeu |cffff9900avant de lancer le jeu|r:

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables]=],
	["DB_IMPORT_ERROR1"] = "La création n'a pas pu être dé-sérialisée.",
	["DB_IMPORT_FULL"] = "Importation complète de créations",
	["DB_IMPORT_FULL_CONFIRM"] = [=[Voulez-vous importer la création suivante ?

%s
%s
Par |cff00ff00%s|r
Version %s]=],
	["DB_IMPORT_FULL_TT"] = "Importe le fichier |cff00ff00totalRP3_Extended_ImpExport.lua|r.",
	["DB_IMPORT_ITEM"] = "Importer l'objet",
	["DB_IMPORT_TT"] = "Collez ici une création précédemment sérialisée.",
	["DB_IMPORT_VERSION"] = [=[Vous êtes en train d'importer une version plus ancienne de cette création, par rapport à celle que vous détenez.

Version de l'importation : %s
Votre version : %s

|cffff9900Confirmez-vous ce retour en arrière ?]=],
	["DB_IMPORT_WORD"] = "Importer",
	["DB_LIST"] = "Liste des créations",
	["DB_LOCALE"] = "Langue",
	["DB_MY"] = "Ma base de données (%s)",
	["DB_MY_EMPTY"] = [=[Vous n'avez pas encore de créations.
Utilisez un des boutons ci-dessous et déchaînez votre créativité !]=],
	["DB_OTHERS"] = "Base de données des joueurs (%s)",
	["DB_OTHERS_EMPTY"] = "Ici seront placées toutes les créations d'autres joueurs.",
	["DB_REMOVE_OBJECT_POPUP"] = [=[Veuillez confirmer la suppression de cette création:
Identifiant : |cff00ffff"%s"|r
|cff00ff00[%s]|r

|cffff9900Attention : Cette action est irréversible !]=],
	["DB_RESULTS"] = "Résultats de la recherche",
	["DB_SECURITY_TT"] = "Montre tous les paramètres de sécurité pour cette création. À partir d'ici, vous pourrez autoriser ou non certains effets indésirables.",
	["DB_TO_EXPERT"] = "Basculer en mode expert",
	["DB_WARNING"] = [=[|cffff0000!!! Attention !!!

|cffff9900N'oubliez pas d'enregistrer vos modifications avant de revenir à la liste de la base de données !]=],
	["DEBUG_QUEST_START"] = "Commencer la quête",
	["DEBUG_QUEST_START_USAGE"] = "Utilisation: /trp3 debug_quest_start ID_de_quete",
	["DEBUG_QUEST_STEP"] = "Aller à une étape de quête.",
	["DEBUG_QUEST_STEP_USAGE"] = "Utilisation: /trp3 debug_quest_step ID_de_quete ID_detape",
	["DI_ATTR_TT"] = "Cochez si vous souhaitez changer la valeur de ce paramètre par rapport à l'étape précédente.",
	["DI_ATTRIBUTE"] = "Modifier les attributs",
	["DI_BKG"] = "Image de fond",
	["DI_BKG_TT"] = [=[Sera utilisé comme fond d'écran pour l'étape de dialogue. Merci d'entre le chemin complet de la texture.

Si vous changez le fond d'écran pendant le dialogue, ces fonds d'écran s’enchaîneront en fondu.]=],
	["DI_CHOICE"] = "Choix",
	["DI_CHOICE_CONDI"] = "Condition de choix",
	["DI_CHOICE_STEP"] = "Aller à l'étape",
	["DI_CHOICE_STEP_TT"] = [=[Entrez le numéro d'étape du dialogue à jouer si le joueur sélectionne ce choix de dialogue.

|cff00ff00Si laissé vide ou si le numéro est invalide, cela mettra fin au dialogue si sélectionné (et déclenchera l’événement d'objet "A la fin").]=],
	["DI_CHOICE_TT"] = [=[Entrez le texte pour cette option.

|cff00ff00Laissez vide pour désactiver cette option.]=],
	["DI_CHOICES"] = "Choix laissés au joueur",
	["DI_CHOICES_TT"] = "Configurer les choix laissés au joueur pour cette étape.",
	["DI_CONDI_TT"] = [=[Définit une condition pour cette option. Si la condition n'est pas validée quand les options sont affichées, l'option en question ne sera pas visible.

|cff00ff00Clic : Configurer la condition
Clic droit : Effacer la condition]=],
	["DI_DIALOG"] = "Dialogue",
	["DI_DISTANCE"] = "Distance max (mètres)",
	["DI_DISTANCE_TT"] = [=[Définit la distance maximum (en mètres) à laquelle le joueur peut aller une fois la scène lancée, avant qu'elle ne se ferme automatiquement (et ne déclenche donc l'évènement "Annulé" de l'élément).

|cff00ff00Zéro signifie : pas de limite.

|cff00ff00Ne fonctionne pas en instance/champ de bataille/arène depuis le patch 7.1.]=],
	["DI_END"] = "Étape de terminaison",
	["DI_END_TT"] = [=[Marque cette étape comme étape de terminaison. Lorsqu'elle sera atteinte, cela mettra fin au dialogue (et déclenchera l'événement d'objet "A la fin").

|cff00ff00Pratique si vous utilisez les choix de dialogue.]=],
	["DI_FRAME"] = "Décoration",
	["DI_GET_ID"] = "ID de la cible",
	["DI_GET_ID_TT"] = "Copie l'ID PNJ de la cible. Ne fonctionne que si votre cible actuelle est un PNJ.",
	["DI_HISTORY"] = "Historique des cinématiques",
	["DI_HISTORY_TT"] = "Cliquez pour voir/cacher le panneau d'historique, qui montre les précédentes lignes de cinématique.",
	["DI_IMAGE"] = "Image",
	["DI_IMAGE_TT"] = [=[Affiche une image au centre de la fenêtre de cinématique. L'image apparaîtra en fondu. Veuillez entrer le chemin de la texture entière.

Pour cacher l'image par la suite, laissez juste le champ vide.]=],
	["DI_LEFT_UNIT"] = "Modèle de gauche",
	["DI_LINKS_ONEND"] = "En fin de cinématique",
	["DI_LINKS_ONEND_TT"] = [=[Déclenché lorsque la cinématique est terminée.

|cff00ff00Cela peut se produire lorsque la dernière étape est atteinte ou lorsqu'un choix laissé au joueur mène à une étape vide ou non existante.

|cffff0000Cela n'est PAS déclenché lorsque le joueur annule la cinématique en fermant manuellement la fenêtre de cinématique.]=],
	["DI_LINKS_ONSTART"] = "En début de cinématique",
	["DI_LINKS_ONSTART_TT"] = [=[Déclenché lorsque la cinématique commence.

|cffff9900Notez que ce déclencheur se lance avant que la première étape de cinématique ne s'exécute.]=],
	["DI_LOOT"] = "Attendre le butin",
	["DI_LOOT_TT"] = "Si le processus sélectionné à gauche déclenche l'affichage d'un butin pour le joueur, vous pouvez cocher ce paramètre pour empêcher le joueur de passer à l'étape suivante du dialogue tant qu'il n'a pas récupéré l'intégralité du butin.",
	["DI_MODELS"] = "Modèles",
	["DI_NAME"] = "Nom de l'orateur",
	["DI_NAME_DIRECTION"] = "Direction du dialogue",
	["DI_NAME_DIRECTION_TT"] = "Détermine comment placer la bulle et le nom, et quel modèle animer. Ne rien sélectionner revient à cacher la bulle et le nom.",
	["DI_NAME_TT"] = [=[Le nom du personnage parlant.

Seulement nécessaire si la direction de dialogue ci-dessus n'est pas mise à "Aucun".]=],
	["DI_NEXT"] = "Indice d'étape suivante",
	["DI_NEXT_TT"] = [=[Vous pouvez indiquer quelle étape sera jouée après celle-ci.

|cff00ff00Laissez vide pour jouer l'index suivant dans l'ordre séquentiel, n'utilisez ce champ que si vous devez "sauter" à un autre index. Utile quand vous programmez des choix.]=],
	["DI_RIGHT_UNIT"] = "Modèle de droite",
	["DI_STEP"] = "Étape de cinématique",
	["DI_STEP_ADD"] = "Ajouter étape",
	["DI_STEP_EDIT"] = "Édition d'étape de cinématique",
	["DI_STEP_TEXT"] = "Texte d'étape",
	["DI_STEPS"] = "Étapes de cinématique",
	["DI_UNIT_TT"] = [=[Définit le modèle à afficher :

- Laissez vide pour cacher le modèle
- "player", pour utiliser le modèle du joueur
- "target", pour utiliser le modèle de la cible
- un nombre voulu, pour charger un ID de PNJ]=],
	["DI_WAIT_LOOT"] = "Veuillez ramasser tous les objets",
	["DISCLAIMER"] = [=[{h1:c}Veuillez lire{/h1}

La création d'objets et quêtes prend du temps et de l'énergie, et c'est toujours tragique de perdre tout ce dur labeur accompli...

Tous les add-ons de World of Warcraft peuvent stocker des données mais il y a des limites :

• Il y a une limite de taille des données, pour les données d'add-on, qui est inconnue (dépend de si vous tournez sur un client 32 ou 64 bits, entre autres).
• Atteindre cette limite peut balayer d'un coup toutes les données enregistrées d'add-on.
• "Killer" le processus, fermer le jeu de force (Alt+F4) ou crasher peut corrompre les données enregistrées d'add-on.
• Même si vous quittez le jeu proprement, il existe toujours une chance que le jeu ne parvienne pas à sauvegarder les données d'add-on, et les corrompe.

Au regard de tout ceci, nous recommandons FORTEMENT de sauvegarder ailleurs, régulièrement, vos données enregistrées d'add-on.

Vous trouverez ici un tutoriel sur la façon de retrouver toutes les données enregistrées :
{link*https://totalrp3.info/documentation/how_to/saved_variables*Where are my information stored?}

Vous trouverez ici un tutoriel sur la façon de synchroniser vos données avec un service de "cloud" :
{link*https://totalrp3.info/documentation/how_to/backup_and_sync_profiles*How to backup and synchronize your add-ons settings using a cloud service}

Veuillez comprendre que nous ne répondrons plus aux commentaires ni aux requêtes relevant d'une perte de données.
Ce n'est pas parce que nous ne voulons pas aider, mais parce que nous ne pouvons techniquement rien faire pour restaurer des données perdues.

Merci, et profitez bien de Total RP 3 Extended !

{p:r}L'équipe de TRP3{/p}]=],
	["DISCLAIMER_OK"] = "Par la présente, je signe ce contrat de mon sang",
	["DO_EMPTY"] = "Document vide",
	["DO_LINKS_ONCLOSE"] = "À la fermeture",
	["DO_LINKS_ONCLOSE_TT"] = "Déclenché quand le document est fermé par le joueur ou un autre évènement (par ex. via un effet de processus)",
	["DO_LINKS_ONOPEN"] = "À l'ouverture",
	["DO_LINKS_ONOPEN_TT"] = "Déclenché quand le document est montré au joueur.",
	["DO_NEW_DOC"] = "Document",
	["DO_PAGE_ADD"] = "Ajouter page",
	["DO_PAGE_BORDER"] = "Bordure",
	["DO_PAGE_BORDER_1"] = "Parchemin",
	["DO_PAGE_COUNT"] = "Page %s / %s",
	["DO_PAGE_EDITOR"] = "Éditeur de page : page %s",
	["DO_PAGE_FIRST"] = "Première page",
	["DO_PAGE_FONT"] = "police %s",
	["DO_PAGE_HEIGHT"] = "Hauteur de page",
	["DO_PAGE_HEIGHT_TT"] = "La hauteur de page, en pixels. Veuillez noter que certains fonds supportent seulement un certain rapport hauteur/largeur et peuvent se trouver déformés.",
	["DO_PAGE_LAST"] = "Dernière page",
	["DO_PAGE_MANAGER"] = "Gestionnaire de pages",
	["DO_PAGE_NEXT"] = "Page suivante",
	["DO_PAGE_PREVIOUS"] = "Page précédente",
	["DO_PAGE_REMOVE"] = "Supprimer page",
	["DO_PAGE_REMOVE_POPUP"] = "Supprimer la page %s ?",
	["DO_PAGE_RESIZE"] = "Taille changeable",
	["DO_PAGE_RESIZE_TT"] = [=[Permet à l'utilisateur de changer la taille de la fenêtre.

|cffff9900Soyez sûr que votre mise en page soit lisible et ne dépende pas du rapport hauteur/largeur.

|cff00ff00Notez que l'utilisateur ne pourra jamais réduire la taille de fenêtre en-dessous des largeur et hauteur par défaut.]=],
	["DO_PAGE_TILING"] = "Répétition de fond d'écran",
	["DO_PAGE_TILING_TT"] = "Cochez si le fond d'écran doit être répété horizontalement et verticalement. Si non, la texture sera étirée.",
	["DO_PAGE_WIDTH"] = "Largeur de page",
	["DO_PAGE_WIDTH_TT"] = "La largeur de page, en pixels. Veuillez noter que certains fonds supportent seulement un certain rapport hauteur/largeur et peuvent se trouver déformés.",
	["DO_PARAMS_CUSTOM"] = "Paramètres personnalisés de page",
	["DO_PARAMS_GLOBAL"] = "Paramètres par défaut",
	["DO_PARAMS_GLOBAL_TT"] = "Change les paramètres par défaut du document. Ces paramètres seront employés pour toutes les pages qui n'ont pas de paramètres de page spécifiés.",
	["DO_PREVIEW"] = "Cliquer pour voir l'aperçu",
	["DOC_UNKNOWN_ALERT"] = "Ouverture du document impossible. (Classe manquante)",
	["DR_DELETED"] = "Détruit : %s x%d",
	["DR_DROP_ERROR_INSTANCE"] = "Impossible de déposer des objets dans une instance",
	["DR_DROPED"] = "Déposé au sol : %s x%d",
	["DR_NOTHING"] = "Aucun objet trouvé dans cette zone.",
	["DR_POPUP"] = "Déposer ici",
	["DR_POPUP_ASK"] = [=[Total RP 3

Choisissez quoi faire de cet objet :
%s]=],
	["DR_POPUP_REMOVE"] = "Détruire",
	["DR_POPUP_REMOVE_TEXT"] = "Détruire cet objet ?",
	["DR_RESULTS"] = "%s objets trouvés",
	["DR_SEARCH_BUTTON"] = "Rechercher |cff00ff00mes|r objets",
	["DR_SEARCH_BUTTON_TT"] = "Recherche vos objets dans la zone des 15 mètres alentours.",
	["DR_STASHED"] = "Cachés : %s x%d",
	["DR_STASHES"] = "Cachettes",
	["DR_STASHES_CREATE"] = "Créer une cachette ici",
	["DR_STASHES_CREATE_TT"] = "Crée une cachette où vous êtes.",
	["DR_STASHES_DROP"] = "Vous ne pouvez pas déposer d'objet dans la cachette de quelqu'un d'autre.",
	["DR_STASHES_EDIT"] = "Éditer la cachette",
	["DR_STASHES_ERROR_INSTANCE"] = "Impossible de créer une cachette dans une instance",
	["DR_STASHES_ERROR_OUT_SYNC"] = "Cachette dé-synchronisée, veuillez réessayer.",
	["DR_STASHES_ERROR_SYNC"] = "Cachette non synchronisée.",
	["DR_STASHES_FOUND"] = "Cachettes trouvées : %s",
	["DR_STASHES_FULL"] = "Cette cachette est pleine.",
	["DR_STASHES_HIDE"] = "Rendre furtif au radar",
	["DR_STASHES_HIDE_TT"] = [=[Cette cachette n'apparaîtra pas sur le radar de carte des autres joueurs.

NB : Elle leur sera toujours accessible, s'ils savent déjà où elle est.]=],
	["DR_STASHES_MAX"] = "50 caractères max",
	["DR_STASHES_NAME"] = "Cachette",
	["DR_STASHES_NOTHING"] = "Aucune cachette trouvée dans cette zone.",
	["DR_STASHES_OWNER"] = "Propriétaire",
	["DR_STASHES_OWNERSHIP"] = "Approprier",
	["DR_STASHES_OWNERSHIP_PP"] = [=[S'approprier la cachette ?
Ce personnage sera affiché comme propriétaire de la cachette lorsque d'autres personnages effectueront un scan.]=],
	["DR_STASHES_REMOVE"] = "Supprimer cachette",
	["DR_STASHES_REMOVE_PP"] = [=[Supprimer cette cachette ?
|cffff9900Tous les objets encore à l'intérieur seront perdus !]=],
	["DR_STASHES_REMOVED"] = "Cachette supprimée.",
	["DR_STASHES_RESYNC"] = "Resynchroniser",
	["DR_STASHES_SCAN"] = "Afficher toutes les cachettes",
	["DR_STASHES_SCAN_MY"] = "Afficher mes cachettes",
	["DR_STASHES_SEARCH"] = "Rechercher des cachettes de |cff00ff00joueurs|r",
	["DR_STASHES_SEARCH_TT"] = [=[Recherche des cachettes d'autres joueurs dans les 15 mètres alentours.

La recherche durera 3 secondes, patience !]=],
	["DR_STASHES_SYNC"] = "Synchronisation...",
	["DR_STASHES_TOO_FAR"] = "Vous êtes trop loin de cette cachette.",
	["DR_STASHES_WITHIN"] = "|cff00ff00Vos|r cachettes dans les 15 mètres",
	["DR_SYSTEM"] = "Système de dépôt",
	["DR_SYSTEM_TT"] = [=[Déposez / cherchez des objets et créez / accédez à vos cachettes.

Le système de dépôt ne fonctionne pas en donjon/arène/champ de bataille.]=],
	["EDITOR_BOTTOM"] = "Bas",
	["EDITOR_CANCEL_TT"] = [=[Annule tous les changements sur l'élément %s entier (l'élément-racine et tous ses éléments internes).

|cffff9900Les changements non sauvegardés seront perdus !]=],
	["EDITOR_CONFIRM"] = "Confirmer",
	["EDITOR_HEIGHT"] = "Hauteur",
	["EDITOR_ICON"] = "Choisir icône",
	["EDITOR_ICON_SELECT"] = "Cliquez pour choisir une icône.",
	["EDITOR_ID_COPY"] = "Copier l'ID",
	["EDITOR_ID_COPY_POPUP"] = "Vous pouvez copier l'identifiant d'élément ci-dessous si vous avez besoin de le copier ailleurs.",
	["EDITOR_MAIN"] = "Principal",
	["EDITOR_MORE"] = "Plus",
	["EDITOR_NOTES"] = "Notes libres",
	["EDITOR_PREVIEW"] = "Prévisualiser",
	["EDITOR_SAVE_TT"] = "Sauvegarde tous les changements sur l'élément %s entier (l'élément-racine et tous ses éléments internes) et incrémente automatiquement son numéro de version.",
	["EDITOR_TOP"] = "Haut",
	["EDITOR_WARNINGS"] = [=[Il y a %s avertissements.

|cffff9900%s|r

Sauvegarder quand même ?]=],
	["EDITOR_WIDTH"] = "Largeur",
	["EFFECT_CAT_CAMERA"] = "Caméra",
	["EFFECT_CAT_CAMERA_LOAD"] = "Charger caméra",
	["EFFECT_CAT_CAMERA_LOAD_TT"] = "Place la caméra du joueur à une position précédemment sauvegardée.",
	["EFFECT_CAT_CAMERA_SAVE"] = "Sauvegarder caméra",
	["EFFECT_CAT_CAMERA_SAVE_TT"] = "Sauvegarde la position actuelle de la caméra du joueur dans un des 5 emplacements disponibles.",
	["EFFECT_CAT_CAMERA_SLOT"] = "Emplacement de sauvegarde",
	["EFFECT_CAT_CAMERA_SLOT_TT"] = "L'index d'un des 5 emplacements de sauvegarde disponibles.",
	["EFFECT_CAT_CAMERA_ZOOM_DISTANCE"] = "Distance de zoom",
	["EFFECT_CAT_CAMERA_ZOOM_IN"] = "Zoomer caméra",
	["EFFECT_CAT_CAMERA_ZOOM_IN_TT"] = "Zoomer la caméra d'une certaine distance",
	["EFFECT_CAT_CAMERA_ZOOM_OUT"] = "Dézoomer caméra",
	["EFFECT_CAT_CAMERA_ZOOM_OUT_TT"] = "Dézoomer la caméra d'une certaine distance.",
	["EFFECT_CAT_CAMPAIGN"] = "Campagne et quête",
	["EFFECT_CAT_SOUND"] = "Son et musique",
	["EFFECT_CAT_SPEECH"] = "Parole et émotes",
	["EFFECT_COOLDOWN_DURATION"] = "Durée de rafraîchissement",
	["EFFECT_COOLDOWN_DURATION_TT"] = "Le temps du \"cooldown\", en secondes.",
	["EFFECT_DIALOG_ID"] = "ID de cinématique",
	["EFFECT_DIALOG_QUICK"] = "Cinématique rapide",
	["EFFECT_DIALOG_QUICK_TT"] = "Génère rapidement une cinématique d'une seule étape. Elle prendra automatiquement la cible du joueur comme orateur.",
	["EFFECT_DIALOG_START"] = "Démarrer cinématique",
	["EFFECT_DIALOG_START_PREVIEW"] = "Démarre la cinématique %s.",
	["EFFECT_DIALOG_START_TT"] = "Démarre une cinématique. Si une cinématique est déjà en lecture, elle sera coupée et remplacée par celle-ci.",
	["EFFECT_DISMOUNT"] = "Désarçonner",
	["EFFECT_DISMOUNT_TT"] = "Désarçonne le joueur de sa monture actuelle.",
	["EFFECT_DISPET"] = "Renvoyer mascotte",
	["EFFECT_DISPET_TT"] = "Renvoie la mascotte actuellement invoquée.",
	["EFFECT_DO_EMOTE"] = "Utiliser emote",
	["EFFECT_DO_EMOTE_ANIMATED"] = "Animées",
	["EFFECT_DO_EMOTE_OTHER"] = "Autres",
	["EFFECT_DO_EMOTE_SPOKEN"] = "Sonores",
	["EFFECT_DO_EMOTE_TT"] = "Fait utiliser une emote animée spécifique au joueur.",
	["EFFECT_DOC_CLOSE"] = "Fermer document",
	["EFFECT_DOC_CLOSE_TT"] = "Ferme le document actuellement ouvert. Pas d'effet s'il n'y a pas de document affiché.",
	["EFFECT_DOC_DISPLAY"] = "Afficher document",
	["EFFECT_DOC_DISPLAY_TT"] = "Affiche un document au joueur. Si un document est déjà ouvert, il sera fermé et remplacé.",
	["EFFECT_DOC_ID"] = "ID de document",
	["EFFECT_DOC_ID_TT"] = [=[Le document à montrer.

|cffffff00Veuillez entrer l'ID du document complet (ID-mère et ID inclus).

|cffffff00Conseil : copiez-collez l'ID complet pour être sûr d'éviter les coquilles.]=],
	["EFFECT_ITEM_ADD"] = "Ajouter objet",
	["EFFECT_ITEM_ADD_CRAFTED"] = "Artisanat",
	["EFFECT_ITEM_ADD_CRAFTED_TT"] = "Marque les objets ajoutés (via processus) comme étant \"Fabriqué par xxx\" où xxx sera le nom du joueur.",
	["EFFECT_ITEM_ADD_ID"] = "ID d'objet",
	["EFFECT_ITEM_ADD_ID_TT"] = [=[L'objet à ajouter.

|cffffff00Veuillez entrer l'ID d'objet complet (ID-mère et ID inclus).

|cffffff00Conseil : copiez-collez l'ID complet pour être sûr d'éviter les coquilles.]=],
	["EFFECT_ITEM_ADD_PREVIEW"] = "Ajoute %sx %s",
	["EFFECT_ITEM_ADD_QT"] = "Quantité",
	["EFFECT_ITEM_ADD_QT_TT"] = [=[Le nombre d'objets à ajouter.

|cffffff00NB : L'addon fera de son mieux pour atteindre cette quantité mais il est possible que tous les objets ne soient pas ajoutés : par exemple si le sac devient plein ou si l'objet a une limite d'unités qu'un personnage peut détenir (attribut "Unique" notamment).]=],
	["EFFECT_ITEM_ADD_TT"] = "Ajoute des objets à votre sac.",
	["EFFECT_ITEM_BAG_DURABILITY"] = "Endommager/Réparer contenant",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD"] = "Type",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE"] = "Endommager",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE_TT"] = "Abîme le contenant-mère. L'état du contenant-mère ne peut tomber en-dessous de 0.",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL"] = "Réparer",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL_TT"] = "Répare le contenant-mère. L'état du contenant-mère ne peut être meilleur que la durabilité maximum du contenant.",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_1"] = "|cff00ff00Répare|cffffff00 %s points d'état sur le contenant-mère.",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_2"] = "|cff00ff00Endommage|cffffff00 le contenant-mère de %s points d'état.",
	["EFFECT_ITEM_BAG_DURABILITY_TT"] = [=[Répare ou endommage la durabilité de l'objet contenant-mère.

|cff00ff00Ne fonctionne que sur les contenants ayant une durabilité définie.]=],
	["EFFECT_ITEM_BAG_DURABILITY_VALUE"] = "Point d'état",
	["EFFECT_ITEM_BAG_DURABILITY_VALUE_TT"] = "Le nombre de points d'état à ajouter/soustraire de la durabilité du contenant-mère.",
	["EFFECT_ITEM_CONSUME"] = "Consommer objet",
	["EFFECT_ITEM_CONSUME_TT"] = "Consomme l'objet utilisé et le détruit.",
	["EFFECT_ITEM_COOLDOWN"] = "Lancer rafraîchissement",
	["EFFECT_ITEM_COOLDOWN_PREVIEW"] = "Durée : %s seconde(s)",
	["EFFECT_ITEM_COOLDOWN_TT"] = "Déclenche un \"cooldown\" pour cet objet.",
	["EFFECT_ITEM_DICE"] = "Lancer de dés",
	["EFFECT_ITEM_DICE_PREVIEW"] = "Lancer %s",
	["EFFECT_ITEM_DICE_PREVIEW_STORED"] = "Lancer %s et sauvegarder le résultat dans %s",
	["EFFECT_ITEM_DICE_ROLL"] = "Lancer",
	["EFFECT_ITEM_DICE_ROLL_TT"] = [=[Entrez une configuration de lancer, similaire à celle de la commande /trp3 roll.

|cff00ff00Exemple: 1d20, 3d6 ..etc.]=],
	["EFFECT_ITEM_DICE_ROLL_VAR"] = "Nom de la variable (optionnel)",
	["EFFECT_ITEM_DICE_ROLL_VAR_TT"] = [=[La variable dans laquelle vous souhaitez sauvegarder le résultat du lancer de dés.
Laisser vierge si vous ne souhaitez pas sauvegarder le résultat.]=],
	["EFFECT_ITEM_DICE_TT"] = "They see me rollin', they hating.",
	["EFFECT_ITEM_LOOT"] = "Montrer/déposer butin",
	["EFFECT_ITEM_LOOT_DROP"] = "Déposer objets",
	["EFFECT_ITEM_LOOT_DROP_TT"] = "Dépose des objets au sol au lieu de présenter une fenêtre de butin au joueur. Le joueur peut ensuite ramasser les objets qu'il veut via la méthode \"rechercher des objets\".",
	["EFFECT_ITEM_LOOT_NAME"] = "Nom de la source",
	["EFFECT_ITEM_LOOT_NAME_TT"] = "Ce sera le nom du contenant du butin.",
	["EFFECT_ITEM_LOOT_PREVIEW_1"] = "Dépose %s objet(s) au sol.",
	["EFFECT_ITEM_LOOT_PREVIEW_2"] = "Affiche un butin de %s objet(s).",
	["EFFECT_ITEM_LOOT_SLOT"] = "Cliquez sur un emplacement pour le configurer.",
	["EFFECT_ITEM_LOOT_TT"] = "Affiche un contenant de butin au joueur, ou dépose le butin au sol là où est le joueur.",
	["EFFECT_ITEM_REMOVE"] = "Détruire objet",
	["EFFECT_ITEM_REMOVE_ID_TT"] = [=[L'objet à supprimer.

|cffffff00Veuillez entrer l'ID d'objet complet (ID-mère et ID inclus).

|cffffff00Conseil : copiez-collez l'ID complet pour être sûr d'éviter les coquilles.]=],
	["EFFECT_ITEM_REMOVE_PREVIEW"] = "Détruit %sx %s",
	["EFFECT_ITEM_REMOVE_QT_TT"] = "Le nombre d'objets à supprimer.",
	["EFFECT_ITEM_REMOVE_TT"] = "Détruit l'objet depuis votre inventaire.",
	["EFFECT_ITEM_SOURCE"] = "Rechercher dans",
	["EFFECT_ITEM_SOURCE_1"] = "Tout l'inventaire",
	["EFFECT_ITEM_SOURCE_1_ADD_TT"] = "Ajoute l'objet n'importe où dans l'inventaire du personnage, en commençant par le conteneur principal.",
	["EFFECT_ITEM_SOURCE_1_SEARCH_TT"] = "Recherche l'objet dans tout l'inventaire du personnage.",
	["EFFECT_ITEM_SOURCE_1_TT"] = "Recherche l'objet dans tout l'inventaire du personnage.",
	["EFFECT_ITEM_SOURCE_2"] = "Contenant-mère",
	["EFFECT_ITEM_SOURCE_2_ADD_TT"] = [=[Ajoute l'objet seulement dans cet objet contenant-mère (et dans ses éventuels sous-contenants).

|cffff9900Fonctionne seulement si ce script est dans un contexte d'objet.]=],
	["EFFECT_ITEM_SOURCE_2_SEARCH_TT"] = [=[Recherche l'objet seulement dans cet objet contenant-mère (et dans ses éventuels sous-contenants).

|cffff9900Fonctionne seulement si ce script est dans un contexte d'objet.]=],
	["EFFECT_ITEM_SOURCE_2_TT"] = [=[Recherche l'objet seulement dans cet objet contenant-mère (et dans ses éventuels sous-contenants).

|cffff9900Fonctionne seulement si ce script est dans un contexte d'objet.]=],
	["EFFECT_ITEM_SOURCE_3"] = "Cet objet",
	["EFFECT_ITEM_SOURCE_3_ADD_TT"] = [=[Ajoute l'objet seulement dans cet objet (et dans ses éventuels sous-contenants).

|cffff9900Fonctionne seulement si ce script est dans un contexte d'objet et que cet objet est un contenant.]=],
	["EFFECT_ITEM_SOURCE_3_SEARCH_TT"] = [=[Recherche l'objet seulement dans cet objet (et dans ses éventuels sous-contenants).

|cffff9900Fonctionne seulement si ce script est dans un contexte d'objet et que cet objet est un contenant.]=],
	["EFFECT_ITEM_SOURCE_3_TT"] = [=[Recherche l'objet seulement dans cet objet (et dans ses éventuels sous-contenants).

|cffff9900Fonctionne seulement si ce script est dans un contexte d'objet et que cet objet est un contenant.]=],
	["EFFECT_ITEM_SOURCE_ADD"] = "Ajouter à",
	["EFFECT_ITEM_SOURCE_ID"] = "Vous pouvez choisir un ID d'objet que vous voulez trouver, ou laisser vide si vous voulez rechercher tous les types d'objets.",
	["EFFECT_ITEM_SOURCE_SEARCH"] = "Rechercher dans",
	["EFFECT_ITEM_USE"] = "Contenant : utilisation d'objet",
	["EFFECT_ITEM_USE_PREVIEW"] = "Utilise l'objet à l'emplacement %s",
	["EFFECT_ITEM_USE_TT"] = [=[Utilise un objet dans un emplacement du contenant.

|cffff9900Fonctionne seulement si ce processus est déclenché par un contenant.]=],
	["EFFECT_ITEM_WORKFLOW"] = "Exécuter processus d'objet",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_C"] = "Déclenche le processus %s dans l'objet contenu en emplacement %s.",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_P"] = "Déclenche le processus %s dans le conteneur parent.",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_S"] = "Déclenche le processus %s dans l'objet frère d'emplacement %s.",
	["EFFECT_ITEM_WORKFLOW_TT"] = "Exécute un processus dans le conteneur parent ou sur un objet contenu (si l'objet courant est un conteneur).",
	["EFFECT_MISSING"] = "Cet effet (%s) est inconnu et vous devriez le supprimer.",
	["EFFECT_OPERATION"] = "Opération",
	["EFFECT_OPERATION_TYPE"] = "Type d'opération",
	["EFFECT_OPERATION_TYPE_ADD"] = "Addition",
	["EFFECT_OPERATION_TYPE_DIV"] = "Division",
	["EFFECT_OPERATION_TYPE_INIT"] = "Initialisation",
	["EFFECT_OPERATION_TYPE_INIT_TT"] = "Initialise la variable à la valeur choisie, mais seulement si la variable n'existe pas encore.",
	["EFFECT_OPERATION_TYPE_MULTIPLY"] = "Multiplication",
	["EFFECT_OPERATION_TYPE_SET"] = "Établir",
	["EFFECT_OPERATION_TYPE_SET_TT"] = "Place la variable à la valeur choisie, même si la variable a déjà été définie auparavant.",
	["EFFECT_OPERATION_TYPE_SUB"] = "Soustraction",
	["EFFECT_OPERATION_VALUE"] = "Valeur d'opération",
	["EFFECT_PROMPT"] = "Demande de saisie",
	["EFFECT_PROMPT_CALLBACK"] = "Processus à appeler (optionnel)",
	["EFFECT_PROMPT_CALLBACK_TT"] = [=[Le nom du processus à appeler après la saisie de l'utilisateur.

Ceci est optionnel. Laissez vide pour ne pas appeler de processus.

Si donné, le processus sera appelé avec la saisie comme variable de processus avec le nom associé.

|cffffff00Attention: le processus est appelé même si le joueur clique "Annuler" dans le popup de saisie. Dans ce cas, la variable ne sera pas modifiée si elle existe.]=],
	["EFFECT_PROMPT_DEFAULT"] = "Valeur par défaut",
	["EFFECT_PROMPT_DEFAULT_TT"] = "La valeur par défaut pour la saisie.",
	["EFFECT_PROMPT_PREVIEW"] = "Demande à l'utilisateur de saisir la valeur de la variable |cff00ff00%s|r.",
	["EFFECT_PROMPT_TEXT"] = "Texte du popup",
	["EFFECT_PROMPT_TEXT_TT"] = "Le texte qui sera présenté à l'utilisateur dans la fenêtre de saisie.",
	["EFFECT_PROMPT_TT"] = [=[Demande à l'utilisateur de saisir une valeur qui sera stockée dans une variable. Optionnellement, appelle un processus après saisie.

|cffff0000ATTENTION, l'exécution de cet effet est asynchrone.]=],
	["EFFECT_PROMPT_VAR"] = "Nom de la variable",
	["EFFECT_PROMPT_VAR_TT"] = "Le nom de la variable qui stockera la valeur saisie.",
	["EFFECT_QUEST_GOTOSTEP"] = "Changer d'étape de quête",
	["EFFECT_QUEST_GOTOSTEP_ID"] = "ID d'étape de quête",
	["EFFECT_QUEST_GOTOSTEP_ID_TT"] = [=[Utilisez le navigateur pour sélectionner votre étape de quête (la quête comme l'étape de quête doivent exister avant de les lier par cet effet).

Si votre étape de quête n'apparaît pas dans le navigateur, sauvegardez votre campagne et réessayez.]=],
	["EFFECT_QUEST_GOTOSTEP_PREVIEW"] = "Va à l'étape %s.",
	["EFFECT_QUEST_GOTOSTEP_TT"] = [=[Change une étape de quête.

|cffff9900Fonctionne seulement si la quête fait partie de la campagne actuellement active et que la quête a déjà été révélée dans le journal de quête.]=],
	["EFFECT_QUEST_OBJ_ID"] = "ID d'objectif",
	["EFFECT_QUEST_OBJ_ID_TT"] = "Entrez l'ID d'objectif. Veuillez entrer uniquement l'ID de l'objectif sans le préfixer par l'identifiant de la campagne-quête.",
	["EFFECT_QUEST_REVEAL_OBJ"] = "Révéler objectif de quête",
	["EFFECT_QUEST_REVEAL_OBJ_DONE"] = "Compléter l'objectif",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_PREVIEW"] = "Compléter l'objectif: %s de %s",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_TT"] = [=[Marque un objectif comme complété.

|cffff9900Fonctionne seulement si la quête fait partie de la campagne active, si la quête est déjà révélée dans le journal de quêtes et si l'objectif a déjà été révélé.]=],
	["EFFECT_QUEST_REVEAL_OBJ_PREVIEW"] = "Révéler l'objectif: %s de %s",
	["EFFECT_QUEST_REVEAL_OBJ_TT"] = [=[Révèle un objectif de quête.

|cffff9900Fonctionne seulement si la quête fait partie de la campagne active et si la quête a déjà été révélée dans le journal de quêtes.]=],
	["EFFECT_QUEST_START"] = "Révéler quête",
	["EFFECT_QUEST_START_ID"] = "ID de quête",
	["EFFECT_QUEST_START_ID_TT"] = [=[Utilisez le navigateur pour sélectionner votre quête (la quête doit déjà exister avant que vous puissiez la lier à cet effet).

Si la quête n’apparaît pas dans le navigateur, essayer d'abord de sauvegarder votre campagne.]=],
	["EFFECT_QUEST_START_PREVIEW"] = "Révèle la quête %s.",
	["EFFECT_QUEST_START_TT"] = [=[Révèle la quête dans le journal de quêtes.

|cffff9900Fonctionne seulement si la quête fait partie de la campagne active.]=],
	["EFFECT_RANDSUM"] = "Invoquer une mascotte aléatoire",
	["EFFECT_RANDSUM_PREVIEW_FAV"] = "Invoque une mascotte aléatoire parmi vos |c0000ff00favorites|r.",
	["EFFECT_RANDSUM_PREVIEW_FULL"] = "Invoque une mascotte aléatoire parmi |c0000ff00toutes vos mascottes|r.",
	["EFFECT_RANDSUM_SUMMON_FAV"] = "Uniquement invoquer des favoris",
	["EFFECT_RANDSUM_TT"] = "Invoque une mascotte aléatoire, choisie parmi vos mascotte favorites.",
	["EFFECT_RUN_WORKFLOW"] = "Exécuter processus",
	["EFFECT_RUN_WORKFLOW_ID"] = "ID de processus",
	["EFFECT_RUN_WORKFLOW_ID_TT"] = "L'identifiant du processus que vous souhaitez exécuter.",
	["EFFECT_RUN_WORKFLOW_PREVIEW"] = "Exécuter le processus %s situé dans %s.",
	["EFFECT_RUN_WORKFLOW_SLOT"] = "ID d'emplacement",
	["EFFECT_RUN_WORKFLOW_SLOT_TT"] = "L'indexe de l'emplacement du conteneur où trouver l'objet à déclencher. Les emplacements sont numéroté de gauche à droite et de haut en bas, en commençant par 1.",
	["EFFECT_RUN_WORKFLOW_TT"] = "Exécuter un autre processus. Toutes les variables seront passées de l'exécution actuelle du processus vers le nouveau processus appelé.",
	["EFFECT_SCRIPT"] = "Exécuter un script lua restreint",
	["EFFECT_SCRIPT_I_EFFECT"] = "Insérer un effet",
	["EFFECT_SCRIPT_I_EFFECT_TT"] = [=[Insère une fonction d'effet à l'endroit où se situe le curseur dans le code.

La fonction est de la forme : |cff00ffffeffect( effectID, args, arg1, arg2, ...);|r 
- |cff00ffffEffect ID|r: l'ID de l'effet, vous pouvez le trouver en regardant dans le code source de l'addon.
- |cff00ffffargs|r: Les arguments d'exécution: doit toujours être la variable args. 
- |cff00ffffArguments d'effet argX|r: Tous les arguments des effets peuvent être trouvés dans le code source de l'addon.

|cffffff00Gardez toujours 'args' comme second paramètre, |ril est requis pour la fonction d'effet et contient tous les arguments des processus. 

|cff00ff00Les ID et arguments d'effets ne seront pas documentés pour le moments, cet effet étant considéré restreint aux utilisateurs capables de comprendre le code source de l'addon. ;)]=],
	["EFFECT_SCRIPT_SCRIPT"] = "Code lua",
	["EFFECT_SCRIPT_SCRIPT_TT"] = [=[Ce script sera exécuté dans un environnement sécurisé dans lequel vous avez accès à toute la syntaxe et les API lua (table, string, math...) ainsi qu'à la fonction |cff00ff00effect|r d'Extended.

|cffff0000Vous n'avez pas accès à l'API du jeu ici !|r 

Un script lua personnalisé sera toujours moins efficace qu'un effet de processus, car il est compilé à chaque exécution, à l'opposé d'un effet de processus qui n'est compilé qu'une seule fois.

 |cffff9900Restreignez votre script à un minimum et n'utilisez cet effet de script que si nécessaire.]=],
	["EFFECT_SCRIPT_TT"] = "Exécute un script lua dans un environnement restreint sécurisé.",
	["EFFECT_SECURE_MACRO_ACTION_NAME"] = "Exécuter une macro",
	["EFFECT_SECURE_MACRO_BLOCKED"] = "Effet de macro bloqué :",
	["EFFECT_SECURE_MACRO_DESCRIPTION"] = [=[Exécute une commande de macro.

|cffccccccNotes:
- Cet effet ne sera exécuté qu'après une action de l'utilisateur (utiliser un objet, cliquer sur un choix de dialogue).
- Cet effet n'est pas impacté par les delais du processus. Blizzard requiert que les effets sécurisés des macros soient effectués immédiatement après l'action de l'utilisateur.
- Cet effet EST impacté par les conditions et les variables Total RP 3 insérées dans le texte de la macro seront résolues à l'exécution.
- Cet effet ne sera JAMAIS exucté pendant un combat ou à la suite d'un évènement du jeu écouté dans une campagne.
|r]=],
	["EFFECT_SECURE_MACRO_HELP"] = [=[Vous pouvez utiliser n'importe quelle commande que vous utiliseriez normalement dans une macro, y compris les /commandes d'autres add-ons.

Vous pouvez également utiliser des variables Total RP 3: Extended (|cffcccccc${ma_variable}|r).]=],
	["EFFECT_SECURE_MACRO_HELP_TITLE"] = "Commandes de macro",
	["EFFECT_SHEATH"] = "Dégainer/rengainer armes",
	["EFFECT_SHEATH_TT"] = "Dégaine ou rengaine les armes du personnage.",
	["EFFECT_SIGNAL"] = "Envoyer signal",
	["EFFECT_SIGNAL_ID"] = "ID du signal",
	["EFFECT_SIGNAL_ID_TT"] = "C'est l'identifiant de votre signal. Il pourra être testé dans les conditions et processus déclenchés par l’événement de jeu |cff00ff00TRP3_SIGNAL|r.",
	["EFFECT_SIGNAL_PREVIEW"] = "|cffffff00Envoyer le signal:|r %s|cffffff00 avec la valeur:|r %s",
	["EFFECT_SIGNAL_TT"] = [=[Envoi un signal avec un identifiant et une valeur au personnage sélectionné par le joueur.

Ce signal peut être écouté par les campagnes, quêtes et étapes via les événements de jeu en écoutant l’événement |cff00ff00TRP3_SIGNAL|r.]=],
	["EFFECT_SIGNAL_VALUE"] = "Valeur du signal",
	["EFFECT_SIGNAL_VALUE_TT"] = "C'est la valeur de votre signal. Il pourra être testé dans les conditions et processus déclenchés par l’événement de jeu |cff00ff00TRP3_SIGNAL|r. Il peut aussi être inséré comme balise de texte |cff00ff00${event.2}|r.",
	["EFFECT_SOUND_ID_LOCAL"] = "Jouer son local",
	["EFFECT_SOUND_ID_LOCAL_PREVIEW"] = "Jouer le son d'ID %s dans le channel %s dans un rayon de %s yards.",
	["EFFECT_SOUND_ID_LOCAL_STOP"] = "Arrêter son local",
	["EFFECT_SOUND_ID_LOCAL_STOP_TT"] = "Arrête un ou tous les sons sur un canal spécifique pour tous les joueurs autour de vous.",
	["EFFECT_SOUND_ID_LOCAL_TT"] = "Joue un son qui sera entendu par les joueurs aux alentours.",
	["EFFECT_SOUND_ID_SELF"] = "Jouer un son",
	["EFFECT_SOUND_ID_SELF_CHANNEL"] = "Channel",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE"] = "Ambiance",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE_TT"] = [=[Ambiance correspond aux sons ambiants. Les paramètres de volume des sons d'ambiance seront utilisés.

Plusieurs sons d'ambience peuvent être joués simultanément.

|cffff9900Veillez à ne pas utiliser cet effet pour jouer de la musique car la musique déjà jouée par la jeu ne sera pas coupée. Pour jouer une musique vous devez utiliser l'effet Jouer musique.]=],
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX"] = "SFX",
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX_TT"] = [=[SFX est à utiliser pour les effets sonores. Il utilise le volume du jeu.

Différents sons SFX peuvent être joués simultanément.]=],
	["EFFECT_SOUND_ID_SELF_ID"] = "ID de son",
	["EFFECT_SOUND_ID_SELF_ID_TT"] = [=[L'ID correspond à un identifiant interne au jeu pour chaque son.

|cff00ff00Vous pouvez trouver les ID des sons du jeu sur des sites comme WoWHead.

|cffff9900À noter que si l'ID correspond à une liste de plusieurs sons, un des sons sera choisi aléatoirement.]=],
	["EFFECT_SOUND_ID_SELF_PREVIEW"] = "Joue le son d'ID %s dans le channel %s.",
	["EFFECT_SOUND_ID_SELF_TT"] = "Joue un son dans un channel particulier. Seul le joueur l'entendra.",
	["EFFECT_SOUND_ID_STOP"] = "Arrêter un son",
	["EFFECT_SOUND_ID_STOP_ALL_PREVIEW"] = "Arrête |cff00ff00tous|cffffff00 les sons dans le canal %s.",
	["EFFECT_SOUND_ID_STOP_PREVIEW"] = "Arrête le son d'ID %s dans le channel %s.",
	["EFFECT_SOUND_ID_STOP_TT"] = "Arrête un ou tous les sons dans un canal spécifique.",
	["EFFECT_SOUND_LOCAL_DISTANCE"] = "Distance de jeu",
	["EFFECT_SOUND_LOCAL_DISTANCE_TT"] = "Détermine la distance jusqu'à laquelle les joueurs aux alentours entendront l'effet sonore.",
	["EFFECT_SOUND_MUSIC_LOCAL"] = "Jouer musique locale",
	["EFFECT_SOUND_MUSIC_LOCAL_PREVIEW"] = "Joue la musique \"%s\" dans un rayon de %s mètres.",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP"] = "Arrêter musique locale",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP_TT"] = [=[Si vous utilisez l'effet "Jouer musique locale", la musique se jouera en boucle pour tous les joueurs autour de vous jusqu'à ce que le jeu déclenche une autre musique (suite à un changement de zone par exemple) ou si chaque joueur arrête manuellement le son depuis l'interface d'historique sonore ou jusqu'à ce que vous utilisiez cet effet.

|cffff9900À noter que cet effet n'arrêtera que la musique jouée par l'add-on, pas celle du jeu.]=],
	["EFFECT_SOUND_MUSIC_LOCAL_TT"] = "Joue une musique pour les joueurs aux alentours.",
	["EFFECT_SOUND_MUSIC_SELF"] = "Jouer musique",
	["EFFECT_SOUND_MUSIC_SELF_PATH"] = "Chemin de la musique",
	["EFFECT_SOUND_MUSIC_SELF_PATH_TT"] = [=[Le chemin de fichier vers une musique du jeu.

|cffff9900Ne doit PAS contenir la partie Sounds\Music\ du chemin ou l'extension .mp3.]=],
	["EFFECT_SOUND_MUSIC_SELF_PREVIEW"] = "Joue la musique: %s",
	["EFFECT_SOUND_MUSIC_SELF_TT"] = [=[Joue une musique. Seul le joueur l'entendra.

À noter que la musique se jouera en boucle jusqu'à ce qu'un évènement déclenche une autre musique (suite à un changement de zone par exemple), ou qu'un effet "Arrêter la musique" est déclenché. Le joueur peut également arrêter la musique manuellement via l'interface d'historique sonore.]=],
	["EFFECT_SOUND_MUSIC_STOP"] = "Arrêter la musique",
	["EFFECT_SOUND_MUSIC_STOP_TT"] = [=[Si vous utilisez l'effet "Jouer musique", la musique se jouera en boucle jusqu'à ce que le jeu déclenche une autre musique (suite à un changement de zone par exemple) ou si le joueur arrête manuellement le son depuis l'interface d'historique sonore ou jusqu'à ce que vous utilisiez cet effet.

|cffff9900À noter que cet effet n'arrêtera que la musique jouée par l'add-on, pas celle du jeu.]=],
	["EFFECT_SOUND_PLAY"] = "Jouer",
	["EFFECT_SOURCE"] = "Source",
	["EFFECT_SOURCE_CAMPAIGN"] = "Campagne active",
	["EFFECT_SOURCE_CAMPAIGN_TT"] = "Recherche la variable dans la campagne active, si il existe une campagne active.",
	["EFFECT_SOURCE_OBJECT"] = "Création",
	["EFFECT_SOURCE_OBJECT_TT"] = [=[Recherche la variable dans le processus de l'objet source.

Ne fonctionne que si l'objet source est un objet, une campagne, une quête ou une étape de quête.

Dans le cas d'une campagne, quête ou étape de quête, la recherche se fera au niveau de la campagne (en entière).]=],
	["EFFECT_SOURCE_PARENT"] = "Conteneur parent",
	["EFFECT_SOURCE_PARENT_TT"] = "Chercher le processus dans l'objet conteneur parent.",
	["EFFECT_SOURCE_SLOT"] = "Objet dans l'emplacement (enfant)",
	["EFFECT_SOURCE_SLOT_B"] = "Objet dans l'emplacement (frère)",
	["EFFECT_SOURCE_SLOT_B_TT"] = "Cherche le processus dans l'objet situé à un certain emplacement dans le même conteneur parent.",
	["EFFECT_SOURCE_SLOT_TT"] = [=[Cherche le processus dans un emplacement spécifique à l'intérieur de cet objet.
Fonctionne uniquement si l'objet courant est un conteneur !]=],
	["EFFECT_SOURCE_V"] = "Source de la variable",
	["EFFECT_SOURCE_W"] = "Source du processus",
	["EFFECT_SOURCE_WORKFLOW"] = "Processus",
	["EFFECT_SOURCE_WORKFLOW_TT"] = "Recherche la variable dans l'exécution du processus. La portée de la variable est limitée à l'exécution de ce processus et sera détruite par après.",
	["EFFECT_SPEECH_NAR"] = "Discours: Narration",
	["EFFECT_SPEECH_NAR_DEFAULT"] = "L'hivers s'installe doucement dans la nuit ...",
	["EFFECT_SPEECH_NAR_TEXT_TT"] = "Veuillez ne pas inclure le préfixe ||.",
	["EFFECT_SPEECH_NAR_TT"] = [=[Joue un effet de narration sous la forme d'une émote.

|cff00ff00Même principe que d'écrire une émote en commençant par le caractère || (pipe). Le message sera formaté dans la fenêtre de discussions pour les autres utilisateurs de Total RP.]=],
	["EFFECT_SPEECH_NPC"] = "Discours: PNJ",
	["EFFECT_SPEECH_NPC_DEFAULT"] = "Je voudrais un bonhomme de neige.",
	["EFFECT_SPEECH_NPC_NAME"] = "Nom du PNJ",
	["EFFECT_SPEECH_NPC_NAME_TT"] = "Le nom du PNJ.",
	["EFFECT_SPEECH_NPC_TT"] = [=[Joue un texte de PNJ sous forme d'émote.

|cff00ff00Même principe que d'écrire une émote en commençant par le caractère || (pipe) avec un nom de PNJ et un texte. Le message sera formaté dans la fenêtre de discussions pour les autres utilisateurs de Total RP.]=],
	["EFFECT_SPEECH_PLAYER"] = "Discours: Joueur",
	["EFFECT_SPEECH_PLAYER_DEFAULT"] = "Que le dragon vous consume !",
	["EFFECT_SPEECH_PLAYER_TT"] = "Fait parler/crier le joueur, ou lui fait faire une emote /e.",
	["EFFECT_SPEECH_TYPE"] = "Type de discours",
	["EFFECT_SUMMOUNT"] = "Invoquer une monture",
	["EFFECT_SUMMOUNT_ACTION_TT"] = "Sélectionnez une monture spécifique",
	["EFFECT_SUMMOUNT_NOMOUNT"] = "Pas de monture sélectionnée.",
	["EFFECT_SUMMOUNT_RANDOMMOUNT"] = "Monture favorite aléatoire",
	["EFFECT_SUMMOUNT_TT"] = "Invoque une monture spécifique, si elle est disponible.",
	["EFFECT_TEXT"] = "Afficher du texte",
	["EFFECT_TEXT_PREVIEW"] = "Texte affiché",
	["EFFECT_TEXT_TEXT"] = "Texte",
	["EFFECT_TEXT_TEXT_DEFAULT"] = "Votre texte",
	["EFFECT_TEXT_TEXT_TT"] = "Le texte à afficher.",
	["EFFECT_TEXT_TT"] = [=[Affiche un texte.
Différents affichages sont disponibles.]=],
	["EFFECT_TEXT_TYPE"] = "Type d'affichage",
	["EFFECT_TEXT_TYPE_1"] = "Fenêtre de chat",
	["EFFECT_TEXT_TYPE_2"] = "Popup d'alerte",
	["EFFECT_TEXT_TYPE_3"] = "Texte d'alerte de raid",
	["EFFECT_TEXT_TYPE_4"] = "Message d'erreur",
	["EFFECT_USE_SLOT"] = "Index d'emplacement du contenant.",
	["EFFECT_USE_SLOT_TT"] = "Les indexes des emplacements sont assignés de gauche à droite et de haut en bas.",
	["EFFECT_VAR"] = "Nom de variable",
	["EFFECT_VAR_INDEX"] = "Index d'argument",
	["EFFECT_VAR_INDEX_TT"] = [=[L'index de l'argument.

Donc si vous souhaitez vérifier le troisième argument de l'événement, entrez 3.]=],
	["EFFECT_VAR_OBJECT_CHANGE"] = "Opération sur variable",
	["EFFECT_VAR_OBJECT_CHANGE_TT"] = [=[Exécute une opération sur une variable.

|cffff9900Pour les opérations mathématiques: Si la variable n'existe pas ou ne peut pas être interprétée comme un nombre elle sera initialisée à 0.]=],
	["EFFECT_VAR_OPERAND"] = "Evaluation de variable",
	["EFFECT_VAR_OPERAND_CONFIG"] = "Configuration de valeur",
	["EFFECT_VAR_OPERAND_CONFIG_NO"] = "Pas de configuration pour cette valeur",
	["EFFECT_VAR_OPERAND_TT"] = "Évalue à l'exécution une valeur à placer dans une variable. Toutes les valeurs testables dans les conditions sont disponibles.",
	["EFFECT_VAR_VALUE"] = "Valeur de variable",
	["EFFECT_W_CAMPAIGN_TT"] = "Chercher le processus dans la campagne courante.",
	["EFFECT_W_OBJECT_TT"] = "Chercher le processus dans la création courante.",
	["ERROR_MISSING_ARG"] = "Argument %1$s manquant en essayant d'appeler la fonction %2$s.",
	["EX_SOUND_HISTORY"] = "Historique sonore",
	["EX_SOUND_HISTORY_CLEAR"] = "Réinitialiser",
	["EX_SOUND_HISTORY_EMPTY"] = "Aucun son n'a été joué.",
	["EX_SOUND_HISTORY_LINE"] = "%s a joué le son %s dans le channel %s.",
	["EX_SOUND_HISTORY_REPLAY"] = "Rejouer",
	["EX_SOUND_HISTORY_STOP"] = "Arrêter",
	["EX_SOUND_HISTORY_STOP_ALL"] = "Arrêter tous",
	["EX_SOUND_HISTORY_TT"] = "Voyez quels effets sonores ont été joués, d'où ils proviennent et interrompez les si ils sont toujours en cours.",
	["IN_INNER"] = "Éléments internes",
	["IN_INNER_ADD"] = "Créer un élément interne",
	["IN_INNER_ADD_COPY"] = "Copie d'une création existante",
	["IN_INNER_ADD_NEW"] = "Nouvelle création",
	["IN_INNER_COPY_ACTION"] = "Copier le contenu de l'élément",
	["IN_INNER_DELETE_CONFIRM"] = [=[Supprimer l'élément interne |cff00ffff"%s"|r |cff00ff00[%s]|r de l'élément-mère |cff00ff00[%s]|r ?

|cffff9900Cet élément interne sera perdu.]=],
	["IN_INNER_DELETE_TT"] = "Supprime cet élément interne de l'élément-mère.",
	["IN_INNER_EMPTY"] = [=[Pas d'élément interne.

Vous pouvez en ajouter un en utilisant le bouton Ajouter ci-dessous.]=],
	["IN_INNER_ENTER_ID"] = "Entrer un nouvel ID d'élément interne",
	["IN_INNER_ENTER_ID_NO_SPACE"] = "L'ID d'un objet ne peut pas contenir d'espace. Rappelez-vous que ceci n'est pas le nom de l'objet !",
	["IN_INNER_ENTER_ID_TT"] = [=[L'ID de l'élément interne doit être unique au sein de l'élément-parent.

|cffff9900Veuillez n'utiliser que les minuscules et le tiret-bas (_). Tous les autres caractères seront automatiquement convertis en _.]=],
	["IN_INNER_HELP"] = [=[Les éléments internes sont des éléments hébergés dans un élément-mère.

Prenons quelques exemples :
|cffff9900
- Vous voulez créer un fusil avec des objets "balles" pour le recharger. Typiquement, le fusil serait l'objet principal, donc l'élément-mère, dans lequel la balle serait l'élément interne.

- Un objet de courrier ouvrant un document. Le document (une lettre, par exemple) serait l'élément interne, conçu pour l'objet de courrier (une enveloppe, par ex.).

- Création de quêtes : tous les objets/documents/cinématiques que vous employez dans une quête peuvent être de tels "élément interne", s'ils sont justement conçus pour cette quête.

|rLes avantages à employer des éléments internes sont multiples :
|cff00ff00
- Les données des éléments internes sont vraiment hébergées à l'intérieur des données de l'élément-mère. Ce qui signifie qu'ils partagent le même numéro de version, et que leurs données sont échangées en même temps que celles de leur élément-mère.

- Employer des éléments internes apporte plus de performances.

- Il est plus simple de gérer vos éléments et d'y naviguer s'ils sont hébergés dans des éléments-mères. Vous pouvez vraiment voir un élément-mère comme un dossier dans lequel vous insérez des fiches.

|rDonc c'est simple : chaque fois que vous voulez créer un élément, demandez-vous si ça ne serait pas plus efficace d'en faire un élément interne, attribué à un autre objet ou à une quête qui lui est lié(e).

|cff00ff00NB : Les documents et les cinématiques ne peuvent être QUE des éléments internes !]=],
	["IN_INNER_HELP_TITLE"] = "Qu'est-ce que les éléments internes ?",
	["IN_INNER_ID"] = [=[Veuillez entrer un nouvel ID pour cet élément interne |cff00ff00[%s]|r.

Ancien ID: |cff00ffff"%s"|r]=],
	["IN_INNER_ID_ACTION"] = "Changer l'identifiant",
	["IN_INNER_ID_COPY"] = "Copier",
	["IN_INNER_ID_COPY_TT"] = "Vous pouvez copier votre élément interne pour le coller dans un autre élément-mère.",
	["IN_INNER_LIST"] = "Liste des éléments internes",
	["IN_INNER_NO_AVAILABLE"] = "Cet identifiant inclus n'est pas disponible !",
	["IN_INNER_PASTE_ACTION"] = "Coller le contenu d'élément",
	["IN_INNER_PASTE_CONFIRM"] = "Remplacer le contenu de cet élément interne par celui que vous venez de copier ?",
	["IN_INNER_S"] = "Élément interne",
	["INV_PAGE_CAMERA_CONFIG"] = [=[Paramètres de caméra :
   Rotation: %.2f]=],
	["INV_PAGE_CHARACTER_INSPECTION"] = "Inspection de personnage",
	["INV_PAGE_CHARACTER_INSPECTION_TT"] = "Inspecte l'inventaire de ce personnage.",
	["INV_PAGE_CHARACTER_INV"] = "Inventaire",
	["INV_PAGE_EDIT_ERROR1"] = "Vous devez être l'auteur de cet objet pour l'éditer.",
	["INV_PAGE_EDIT_ERROR2"] = "Cet objet n'est pas en Mode rapide.",
	["INV_PAGE_INV_OPEN"] = "Ouvrir l'inventaire",
	["INV_PAGE_ITEM_LOCATION"] = "Emplacement d'objet sur le personnage",
	["INV_PAGE_LOOT_ALL"] = "Tout ramasser",
	["INV_PAGE_MARKER"] = [=[Position des marqueurs :
   x: %.2f
   y: %.2f]=],
	["INV_PAGE_PLAYER_INV"] = "Inventaire de %s",
	["INV_PAGE_QUICK_SLOT"] = "Emplacement rapide",
	["INV_PAGE_QUICK_SLOT_TT"] = "Cet emplacement sera utilisé comme contenant principal.",
	["INV_PAGE_SEQUENCE"] = "ID de séquence",
	["INV_PAGE_SEQUENCE_PRESET"] = "Vous pouvez sélectionner une ID de séquence correspondant à une émote.",
	["INV_PAGE_SEQUENCE_TT"] = [=[Vous pouvez changer la posture de votre personnage en entrant un ID d'animation ici et en sélectionnant la séquence d'animation avec le curseur ci-dessous.

Attention: Si l'animation tremble, c'est qu'il y a un problème avec l'animation en question pour le modèle de votre race. Si cela arrive, veuillez choisir une autre animation.]=],
	["INV_PAGE_TOTAL_VALUE"] = "Valeur totale des objets",
	["INV_PAGE_TOTAL_VALUE_TT"] = [=[C'est la valeur de votre inventaire.

Ce n'est pas la somme des "pièces", mais la valeur totale estimée de tous les objets dans l'inventaire.]=],
	["INV_PAGE_WAIT"] = "En attente d'une réponse",
	["INV_PAGE_WEAR_ACTION"] = "Configurer l'emplacement d'objet",
	["INV_PAGE_WEAR_ACTION_RESET"] = "Réinitialiser la configuration",
	["INV_PAGE_WEAR_TT"] = [=[Cet objet est équipable.
La zone verte indique l'emplacement d'objet sur le personnage.]=],
	["INV_TU_1"] = [=[Vous pouvez placer un objet (ou une pile d'objets) dans chaque emplacement d'inventaire.

|cff00ff00Vous n'êtes pas limité en place puisque vous pouvez avoir un nombre illimité de sacs et contenants. Vous pouvez aussi avoir des contenants dans des contenants.

|cffff9900La seule chose dont vous devez vous préoccuper est le poids du chargement de chaque contenant.|r

Si un contenant a une capacité maximum en poids et que vous le dépassez, il s'endommagera peu à peu et pourra, aléatoirement, semer des objet au sol !]=],
	["INV_TU_2"] = [=[Tout sac placé ici se comportera comme le contenant principal.

|cffff9900Il est très important d'avoir toujours un contenant principal avec de l'espace libre car c'est le contenant qui sera utilisé lors des échanges avec d'autres joueurs.

|cffff9900De plus, le contenant principal peut facilement être ouvert avec le bouton d'inventaire sur la barre d'outils TRP.]=],
	["INV_TU_3"] = [=[Pour les objets qui sont affichés directement sur le personnage (pas dans un sac), s'ils sont équipables (ce qui est un choix de l'auteur), |cffff9900vous pouvez indiquer où ils se trouvent sur votre personnage.

|cffff9900Pour cela, cliquez sur le point à côté de l'objet et placez le marqueur sur votre personnage. Vous pouvez aussi tourner votre personnage et choisir sa posture.

|cffff9900Quand quelqu'un utilise l'outil d'inspection sur vous, il ou elle verra le marqueur avec la posture adéquate !

|rVous pouvez inspecter l'inventaire de quelqu'un en ciblant le personnage et en cliquant sur le bouton de la barre de cible TRP |cff00ff00"Inspection du personnage"|r.

|cff00ff00Notez que les deux joueurs doivent utiliser TRP3: Extended pour pouvoir s'inspecter l'un l'autre.
]=],
	["INV_TU_4"] = [=[Quand vous glissez un objet en-dehors de l'inventaire, |cffff9900il vous sera demandé si vous choisissez de le détruire ou de le déposer au sol.|r

Vous pouvez déposer des objets (presque) partout dans le monde. |cffff9900Vous pouvez ensuite revenir les ramasser plus tard en utilisant le bouton "Rechercher des objets" dans la barre d'outils de Total RP 3.

|cffff9900NB : Parfois des objets peuvent être déposés automatiquement : si vous récupérez des objets mais que votre inventaire est plein, ou si un de vos sacs est endommagé.]=],
	["INV_TU_5"] = [=[Vous pouvez échanger un objet (ou une pile d'objets) avec un autre joueur, en glissant la pile sur ce joueur (de la même manière que dans le jeu).

|cffff9900Quand quelqu'un vous donne un objet, la fenêtre d'échange vous informera si cet objet pourrait avoir des effets gênants (personne n'aime que son personnage crie des choses horribles).

|rQuand c'est le cas, TRP convertira ces effets en une forme moins dangereuse (par exemple, le fait de crier sera converti en texte personnel) jusqu'à ce que vous décidiez de les débloquer.

|cff00ff00Vous pouvez bloquer/débloquer ces effets, et valider des effets ou joueurs de confiance, avec Alt + Clic droit sur un objet de votre inventaire.]=],
	["INV_TU_5_V2"] = [=[Vous pouvez échanger un objet (ou une pile d'objets) avec un autre joueur, en glissant la pile sur ce joueur (de la même manière que dans le jeu) ou en utilisant le bouton dédié sur le cadre de la cible.

|cffff9900Quand quelqu'un vous donne un objet, la fenêtre d'échange vous informera si cet objet pourrait avoir des effets gênants (personne n'aime que son personnage crie des choses horribles).

|rQuand c'est le cas, TRP convertira ces effets en une forme moins dangereuse (par exemple, le fait de crier sera converti en texte personnel) jusqu'à ce que vous décidiez de les débloquer.

|cff00ff00Vous pouvez bloquer/débloquer ces effets, et valider des effets ou joueurs de confiance, avec Alt + Clic droit sur un objet de votre inventaire.]=],
	["IT_CAST"] = "Incantation",
	["IT_CO_DURABILITY"] = "Durabilité",
	["IT_CO_DURABILITY_TT"] = [=[Détermine le meilleur état possible de votre contenant. Un contenant peut voir son état se dégrader dans le temps, ou peut être endommagé. Mais il peut aussi être réparé avec les objets adéquats.

|cff00ff00Zéro signifie : invulnérable.]=],
	["IT_CO_MAX"] = "Poids max (en grammes)",
	["IT_CO_MAX_TT"] = [=[Ceci définit la limite de poids à partir de laquelle votre contenant commencera à voir son état se dégrader dans le temps à cause d'une surcharge.

|cff00ff00Zéro signifie : pas de limite.

|cff00ff00Veuillez entrer le poids maximal en GRAMMES. (1 kg = 1000 grammes)]=],
	["IT_CO_ONLY_INNER"] = "Ne peut contenir que ses objets inclus",
	["IT_CO_ONLY_INNER_TT"] = [=[Marque ce contenant pour ne pouvoir contenir que les objets liés au même objet-mère de base.

Pour l'instant, seuls les contenants avec cette option activée peuvent être troqués alors qu'ils contiennent d'autres objets.]=],
	["IT_CO_SIZE"] = "Taille du contenant",
	["IT_CO_SIZE_COLROW"] = "%s lignes par %s colonnes",
	["IT_CON"] = "Contenant",
	["IT_CON_CAN_INNER"] = "Impossible de placer un contenant dans lui-même !",
	["IT_CON_ERROR_TRADE"] = "Vous ne pouvez pas déposer ce contenant s'il n'est pas vide.",
	["IT_CON_ERROR_TYPE"] = "Ce contenant ne peut contenir ce type d'objet.",
	["IT_CON_OPEN"] = "Ouvrir/Fermer le contenant",
	["IT_CON_TT"] = "Contenant (%d/%d emplacements utilisés)",
	["IT_CON_TT_MISSING_CLASS"] = "ID de classe d'objet manquante",
	["IT_CONTAINER_TT"] = [=[Définit cet objet pour être un contenant. Les contenants peuvent rassembler d'autres objets.

|cff00ff00Le contenant peut être configuré dans la table "Contenant" de cet éditeur.]=],
	["IT_CONVERT_TO_NORMAL"] = "Basculer en mode normal",
	["IT_CONVERT_TO_NORMAL_TT"] = [=[Vous êtes en mode rapide, une première approche facile pour créer un objet simple.

Vous pouvez aller plus loin et éditer cet objet en mode normal. Ceci vous apportera davantage de possibilités mais c'est aussi plus complexe à apprendre et à utiliser.

|cffff9900Attention : Si vous basculez cet objet en mode normal, vous ne pourrez pas le ramener au mode rapide.]=],
	["IT_CRAFTED"] = "Artisanat",
	["IT_CRAFTED_TT"] = "Quand une unité de cet objet sera ajoutée à votre sac ou créée par un autre objet, vous serez mentionné comme son créateur dans son infobulle.",
	["IT_DISPLAY_ATT"] = "Afficher les attributs",
	["IT_DOC_ACTION"] = "Lire le document",
	["IT_DR_SOUND"] = "Son de dépôt",
	["IT_EX_DOWNLOAD"] = "Télécharger",
	["IT_EX_DOWNLOAD_TT"] = [=[|cffff9900Cet objet est long de %s messages et prendra au moins %.1f seconds à être téléchargé (dans les meilleures conditions).

|cff00ff00Cliquez pour demander à %s de vous envoyer toutes les données sur cet objet.

|cffff9900Vous ne pouvez pas finir un troc tant que vous n'avez pas toute l'information à jour sur les objets que vous devriez recevoir.]=],
	["IT_EX_DOWNLOADING"] = "Téléchargement : %0.1f %%",
	["IT_EX_EMPTY"] = "Rien à troquer",
	["IT_EX_EMPTY_DRAG"] = "Vous pouvez glisser et déposer des objets ici.",
	["IT_EX_SLOT_DOWNLOAD"] = [=[|rVous n'avez pas l'information de cet objet.

|cff00ff00Si l'objet n'est pas trop lourd, TRP3 le téléchargera automatiquement de %s.

|cff00ff00Si l'objet est trop lourd, vous pouvez demander manuellement ses informations avec le bouton télécharger, mais gardez à l'esprit que ce téléchargement pourrait prendre quelque temps.]=],
	["IT_EX_TRADE_BUTTON"] = "Ouvrir l'échange",
	["IT_EX_TRADE_BUTTON_TT"] = "Ouvre la fenêtre d'échanges pour échanger des objets avec ce joueur.",
	["IT_FIELD_NAME"] = "Nom d'objet",
	["IT_FIELD_NAME_TT"] = "C'est le nom de votre objet, tel qu'il apparaîtra sur l'infobulle ou dans un lien d'objet dans la fenêtre de discussion.",
	["IT_FIELD_QUALITY"] = "Qualité de l'objet",
	["IT_GAMEPLAY_ATT"] = "Attributs de gameplay",
	["IT_INV_ERROR_CANT_DESTROY_LOOT"] = "Vous ne pouvez pas détruire des objets de butin.",
	["IT_INV_ERROR_CANT_HERE"] = "Vous ne pouvez pas placer d'objets ici.",
	["IT_INV_ERROR_FULL"] = "%s est plein.",
	["IT_INV_ERROR_MAX"] = "Vous ne pouvez pas porter davantage de %s.",
	["IT_INV_GOT"] = "Reçu : %s x%d",
	["IT_INV_SCAN_MY_ITEMS"] = "Afficher mes objets",
	["IT_INV_SHOW_ALL"] = "Montrer tout l'inventaire",
	["IT_INV_SHOW_CONTENT"] = [=[|cffffff00Clic :|r Ouvre le contenant principal (s'il existe)
|cffffff00Clic droit :|r Ouvre l'inventaire]=],
	["IT_LOOT_ERROR"] = "Impossible d'afficher le butin maintenant, un autre butin est déjà montré.",
	["IT_NEW_NAME"] = "Nouvel objet",
	["IT_NEW_NAME_CO"] = "Nouveau contenant",
	["IT_NO_ADD"] = "Empêcher l'ajout manuel",
	["IT_NO_ADD_TT"] = "Empêche le joueur d'ajouter manuellement l'objet à son inventaire. Ils ne peuvent donc être ajoutés ou ramassés que via certaines actions.",
	["IT_ON_USE"] = "À l'utilisation",
	["IT_ON_USE_TT"] = [=[Ce processus sera déclenché quand le joueur utilise cet objet.

|cffff9900NB :|r Si vous voulez avoir plus de processus pour cet objet, vous pouvez le basculer en Mode expert, via la vue des Bases de données (en cliquant-droit dessus et en sélectionnant |cff00ff00Basculer en Mode expert|r).]=],
	["IT_PU_SOUND"] = "Son de ramassage",
	["IT_PU_SOUND_1183"] = "Sac",
	["IT_PU_SOUND_1184"] = "Livre",
	["IT_PU_SOUND_1185"] = "Tissu",
	["IT_PU_SOUND_1186"] = "Nourriture",
	["IT_PU_SOUND_1187"] = "Plante",
	["IT_PU_SOUND_1188"] = "Chaîne",
	["IT_PU_SOUND_1189"] = "Viande",
	["IT_PU_SOUND_1190"] = "Métal (grand)",
	["IT_PU_SOUND_1191"] = "Métal (petit)",
	["IT_PU_SOUND_1192"] = "Papier",
	["IT_PU_SOUND_1193"] = "Bague",
	["IT_PU_SOUND_1194"] = "Rocher",
	["IT_PU_SOUND_1195"] = "Chaînette",
	["IT_PU_SOUND_1196"] = "Baguette",
	["IT_PU_SOUND_1197"] = "Liquide",
	["IT_PU_SOUND_1198"] = "Bois (petit)",
	["IT_PU_SOUND_1199"] = "Bois (grand)",
	["IT_PU_SOUND_1221"] = "Gemmes",
	["IT_QUEST"] = "Symbole de quête",
	["IT_QUEST_TT"] = [=[Ajoute un marqueur à l'icône d'objet pour indiquer qu'utiliser cet objet devrait démarrer une quête.

|cffff7700Comme d'autres attributs d'affichage il s'agit juste d'un symbole, qui n'est pas nécessaire à votre objet pour effectivement démarrer la quête.]=],
	["IT_QUICK_EDITOR"] = "Création rapide d'objet",
	["IT_QUICK_EDITOR_EDIT"] = "Édition rapide d'objet",
	["IT_SOULBOUND_TT"] = "Cet objet sera lié au joueur une fois dans son inventaire, et il ne pourra plus être échangé ou posé au sol.",
	["IT_STACK"] = "Empilable",
	["IT_STACK_COUNT"] = "Maximum d'unités par pile",
	["IT_STACK_COUNT_TT"] = "Définit le maximum d'unités qui peuvent être empilées dans un même emplacement d'inventaire. Devrait être supérieur à 1.",
	["IT_STACK_TT"] = "Permet aux unités de cet objet d'être empilées dans un même emplacement d'inventaire.",
	["IT_TRIGGER_ON_DESTROY"] = "À la destruction de la pile",
	["IT_TRIGGER_ON_DESTROY_TT"] = [=[Déclenché quand le joueur détruit une pile de cet objet (en le glissant hors de son inventaire et en confirmant la destruction).|cffff9900

Le déclenchement se fait une fois par pile, et juste avant la destruction effective de la pile (donc le dénombrement des unités de cet objet dans l'inventaire, dans le processus, prendra en compte la pile).]=],
	["IT_TRIGGER_ON_USE"] = "À l'utilisation",
	["IT_TRIGGER_ON_USE_TT"] = [=[Déclenché chaque fois que le joueur utilise cet objet.

|cff00ff00N'oubliez pas de rendre votre objet utilisable dans la table principale.]=],
	["IT_TT_DESCRIPTION"] = "Description d'infobulle",
	["IT_TT_DESCRIPTION_TT"] = [=[C'est la description de votre objet.

|cff00ff00Mieux vaut éviter un mur de texte ici, essayez de rester concis.

Si votre objet est utilisable, essayez d'indiquer ici comment il devrait être utilisé.]=],
	["IT_TT_LEFT"] = "Note d'infobulle de gauche",
	["IT_TT_LEFT_TT"] = [=[C'est un texte libre qui sera placé dans l'infobulle, à gauche sous le nom d'objet.

|cff00ff00Un exemple-type d'information à placer ici est l'emplacement d'équipement (Tête, Cou, Épaule, Jambes, Main droite, Tenu(e) en main gauche, Deux mains...) ou éventuellement le type d'objet (Potion...).]=],
	["IT_TT_REAGENT"] = "Indicateur de composant",
	["IT_TT_REAGENT_TT"] = [=[Affiche la ligne "Composant d'artisanat" dans l'infobulle.

|cffff7700Comme pour les autres attributs visuels, cela n'a aucune influence sur le jeu et n'est pas requis pour que cet objet puisse être utilisé en tant que composant.]=],
	["IT_TT_RIGHT"] = "Note d'infobulle de droite",
	["IT_TT_RIGHT_TT"] = [=[C'est un texte libre qui sera placé dans l'infobulle, à droite sous le nom d'objet.

|cff00ff00Un exemple-type d'information à placer ici, en complément du texte libre de gauche, est le matériau (Tissu, Cuir, Maille, Plaque, Ornemental...).]=],
	["IT_TT_VALUE"] = "Valeur de l'objet",
	["IT_TT_VALUE_FORMAT"] = "Valeur de l'objet (en %s)",
	["IT_TT_VALUE_TT"] = [=[Cette valeur sera indiquée sur l'extension d'infobulle (maintenir Alt) ou durant les transactions.

|cffff7700Si vous pensez que cet objet est inestimable, veuillez laisser 0. Zéro ne signifie pas qu'il n'a pas de valeur, mais que cette valeur est indéfinie.]=],
	["IT_TT_WEIGHT"] = "Poids de l'objet",
	["IT_TT_WEIGHT_FORMAT"] = "Poids de l'objet (en grammes)",
	["IT_TT_WEIGHT_TT"] = [=[Le poids influence le poids total dans le contenant.

|cffff7700Veuillez entrer la valeur en GRAMMES, qui sera automatiquement convertie à l'affichage selon l'unité choisie par l'utilisateur.]=],
	["IT_UNIQUE_COUNT"] = "Unités max",
	["IT_UNIQUE_COUNT_TT"] = "Définit le nombre d'unités maximum qu'un personnage peut posséder. Devrait être supérieur à 0.",
	["IT_UNIQUE_TT"] = "Une fois actif, le nombre d'unités de l'objet pouvant être possédées par un personnage sera limité.",
	["IT_USE"] = "Utilisable",
	["IT_USE_TEXT"] = "Note d'utilisation",
	["IT_USE_TEXT_TT"] = "Ce texte, expliquant l'effet de l'utilisation de l'objet, apparaîtra dans l'infobulle.",
	["IT_USE_TT"] = [=[Permet à cet objet d'être utilisé.

|cff00ff00Vous pouvez configurer l'effet d'utilisation de l'objet dans la table "Processus" de cet éditeur]=],
	["IT_WARNING_1"] = "Un objet ne devrait pas être à la fois empilable et fabriqué. (%s)",
	["IT_WARNING_2"] = "Un objet contenant ne devrait pas être empilable. (%s)",
	["IT_WEARABLE"] = "Équipable",
	["IT_WEARABLE_TT"] = [=[Autorise cet objet pour l'outil d'inspection et vous permet de le placer précisément sur votre personnage.

|cffff9900Si ce symbole est activé, les gens pourront voir cet objet sur votre inventaire s'ils vous inspectent, même si vous ne lui attribuez pas de position sur le personnage.]=],
	["ITEM_ID"] = "Identifiant de création",
	["LOOT"] = "Butin",
	["LOOT_CONTAINER"] = "Contenant de butin",
	["LOOT_DISTANCE"] = "Vous êtes trop loin du point de ramassage.",
	["MODE_EXPERT"] = "Expert",
	["MODE_NORMAL"] = "Normal",
	["MODE_QUICK"] = "Rapide",
	["NEW_EXTENDED_VERSION"] = "|cffff9900Une nouvelle version de TRP3:Extended est disponible (%s). |cff00ff00Retrouvez-la sur Curse !",
	["NPC_EMOTES"] = "émote",
	["NPC_SAYS"] = "dit",
	["NPC_WHISPERS"] = "chuchote",
	["NPC_YELLS"] = "crie",
	["OP_ADD_TEST"] = "Ajouter test",
	["OP_AND"] = "ET",
	["OP_AND_SWITCH"] = "Basculer sur ET",
	["OP_BOOL"] = "Valeur booléenne",
	["OP_BOOL_FALSE"] = "FAUX",
	["OP_BOOL_TRUE"] = "VRAI",
	["OP_COMP_EQUALS"] = "est égal à",
	["OP_COMP_GREATER"] = "est supérieur à",
	["OP_COMP_GREATER_OR_EQUALS"] = "est supérieur ou égal à",
	["OP_COMP_LESSER"] = "est inférieur à",
	["OP_COMP_LESSER_OR_EQUALS"] = "est inférieur ou égal à",
	["OP_COMP_NEQUALS"] = "n'est pas égal à",
	["OP_COMPA_SEL"] = "Sélection de comparateur",
	["OP_CONFIGURE"] = "Configurer",
	["OP_CURRENT"] = "Valeur actuelle",
	["OP_CURRENT_TT"] = "Affiche, dans la fenêtre de discussion, l'évaluation de ce paramètre basée sur la situation actuelle.",
	["OP_DIRECT_VALUE"] = "Valeur directe",
	["OP_EVAL_VALUE"] = "Valeur évaluée",
	["OP_FAIL"] = "Message d'échec",
	["OP_FAIL_TT"] = "Ce message sera affiché si les conditions ne sont pas remplies. Laissez vide si vous ne voulez pas montrer de message.",
	["OP_FAIL_W"] = "Processus d'échec (Expert)",
	["OP_FAIL_W_TT"] = [=[Si cette condition échoue, ce processus sera exécuté. C'est une manière de faire un "sinon" dans une condition.

|cffff9900Notez que cette fonctionnalité peut être lourde en performance et devrait donc être utilisée avec parcimonie. Le processus appelé doit exister dans la même création.

|cffff0000Ne faites JAMAIS de boucle dans les processus appelés (par exemple: un processus A appelant un processus B appelant lui même à nouveau le processus A), même si vous utilisez des délais !]=],
	["OP_NUMERIC"] = "Valeur numérique",
	["OP_OP_CHAR_ACHIEVEMENT"] = "Haut-fait",
	["OP_OP_CHAR_ACHIEVEMENT_ACC"] = "Compte",
	["OP_OP_CHAR_ACHIEVEMENT_ACC_TT"] = "Vérifie si un personnage du compte a complété le haut-fait",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR"] = "Personnage",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR_TT"] = "Vérifie si le personnage joué a complété le haut-fait",
	["OP_OP_CHAR_ACHIEVEMENT_ID"] = "ID du haut-fait",
	["OP_OP_CHAR_ACHIEVEMENT_ID_TT"] = "L'ID numérique du haut-fait que vous voulez vérifier.",
	["OP_OP_CHAR_ACHIEVEMENT_PREVIEW"] = "%s complété par |cffff9900%s",
	["OP_OP_CHAR_ACHIEVEMENT_TT"] = "Vérifie si le compte a complété le haut-fait spécifié.",
	["OP_OP_CHAR_ACHIEVEMENT_WHO"] = "Complété par",
	["OP_OP_CHAR_CAM_DISTANCE"] = "Distance caméra",
	["OP_OP_CHAR_CAM_DISTANCE_TT"] = "Distance de la caméra par rapport au joueur. 0 si en vue à la première personne.",
	["OP_OP_CHAR_FACING"] = "Orientation du personnage",
	["OP_OP_CHAR_FACING_TT"] = [=[Détermine l'orientation du personnage (en radians, 0 = nord, cette valeur augmente dans le sens anti-horaire).

|cffff9900Indique la direction à laquelle l'avatar du joueur fait face (normalement) et dans laquelle le joueur avancera s'il commence à se déplacer, et non l'orientation de la caméra.]=],
	["OP_OP_CHAR_FALLING"] = "En chute",
	["OP_OP_CHAR_FALLING_TT"] = "Détermine si le personnage du joueur est actuellement en train de se prendre pour un écureuil volant.",
	["OP_OP_CHAR_FLYING"] = "En vol",
	["OP_OP_CHAR_FLYING_TT"] = "Vérifie si le personnage est en train de voler.",
	["OP_OP_CHAR_INDOORS"] = "A l'intérieur",
	["OP_OP_CHAR_INDOORS_TT"] = "Vérifie si le personnage est à l'intérieur.",
	["OP_OP_CHAR_MINIMAP"] = "Texte de la mini-carte",
	["OP_OP_CHAR_MINIMAP_TT"] = [=[Retourne le nom de la zone tel qu'indiqué sur la mini-carte.

L'évènement du jeu "MINIMAP_ZONE_CHANGED" est déclenché quand le texte change, vous pouvez donc le tester dans une campagne ou une quête.]=],
	["OP_OP_CHAR_MOUNTED"] = "En monture",
	["OP_OP_CHAR_MOUNTED_TT"] = "Vérifie si le personnage est sur une monture.",
	["OP_OP_CHAR_RESTING"] = "En repos",
	["OP_OP_CHAR_RESTING_TT"] = "Vérifie si le personnage est en repos. Vous êtes en repos dans les tavernes ou dans des grandes villes telles que Forgefer, Orgrimmar...",
	["OP_OP_CHAR_STEALTH"] = "Personnage camouflé",
	["OP_OP_CHAR_STEALTH_TT"] = "Vérifie si le personnage est actuellement furtif.",
	["OP_OP_CHAR_SUBZONE"] = "Nom de sous-zone",
	["OP_OP_CHAR_SUBZONE_TT"] = [=[Le nom de la sous-zone où le personnage est actuellement situé.

|cffff9900Attention : Le texte est influencé par le client du jeu (VO ou VF).]=],
	["OP_OP_CHAR_SWIMMING"] = "Nage",
	["OP_OP_CHAR_SWIMMING_TT"] = "Vérifie si le personnage est en train de nager. Inclut la nage en surface.",
	["OP_OP_CHAR_ZONE"] = "Nom de zone",
	["OP_OP_CHAR_ZONE_TT"] = [=[Le nom de la zone où le personnage est actuellement situé.

|cffff9900Attention : Le texte est influencé par le client du jeu (VO ou VF).]=],
	["OP_OP_CHECK_EVENT_VAR"] = "Argument d’événement (valeur texte)",
	["OP_OP_CHECK_EVENT_VAR_N"] = "Argument d’événement (valeur numérique)",
	["OP_OP_CHECK_EVENT_VAR_N_PREVIEW"] = "%s-ième argument d'événement |cff00ff00(nombre)",
	["OP_OP_CHECK_EVENT_VAR_N_TT"] = [=[Vérifie le n-ième argument de l'événement déclenchant cette condition (si existant).

Interprété comme un numéro.

S'il n'existe pas ou ne peut pas être interprété, renvoie 0.]=],
	["OP_OP_CHECK_EVENT_VAR_PREVIEW"] = "%s-ième argument d'événement |cff00ff00(texte)",
	["OP_OP_CHECK_EVENT_VAR_TT"] = [=[Vérifie le n-ième argument de l'événement déclenchant cette condition (si existant).

Interprété comme un texte.

S'il n'existe pas ou ne peut pas être interprété, renvoie 'nil' .]=],
	["OP_OP_CHECK_VAR"] = "Valeur texte variable",
	["OP_OP_CHECK_VAR_N"] = "Valeur numérique variable",
	["OP_OP_CHECK_VAR_N_PREVIEW"] = "|cff00ffff%s: |cffff9900(n)|r %s",
	["OP_OP_CHECK_VAR_N_TT"] = [=[Renvoie la valeur d'une variable,|cff00ff00interprétée comme un nombre | r.

Si la variable n'existe pas, ne peut pas être atteinte ou ne peut pas être interprétée comme un nombre, renvoie 0.

|cffff9900Comme la valeur dépend de l'exécution, elle ne peut pas être prévisualisée.]=],
	["OP_OP_CHECK_VAR_PREVIEW"] = "|cff00ffff%s:|r %s",
	["OP_OP_CHECK_VAR_TT"] = [=[Renvoie la valeur d'une variable, |cff00ff00 interprétée comme une chaîne de caractères| r.

Si la variable n'existe pas ou ne peut pas être atteinte, renvoie la chaîne de caractères 'nil'.

|cffff9900Comme la valeur dépend de l'exécution, il ne peut pas être prévisualisé.]=],
	["OP_OP_DISTANCE_CURRENT"] = "Utiliser la position actuelle",
	["OP_OP_DISTANCE_ME"] = "Distance de l'unité au joueur",
	["OP_OP_DISTANCE_ME_TT"] = [=[Détermine la distance (en mètres) entre une unité et le joueur.

Ne fonctionne qu'avec les joueurs.

Vaudra 0 si l'unité n'existe pas.

|cffff9900Ne fonctionne pas en instance/champ de bataille/arène depuis le patch 7.1.]=],
	["OP_OP_DISTANCE_POINT"] = "Distance de l'unité - point",
	["OP_OP_DISTANCE_POINT_PREVIEW"] = "|cff00ff00%s|r distance de |cff00ff00 (% s,% s)",
	["OP_OP_DISTANCE_POINT_TT"] = [=[Détermine la distance (en mètres) entre une unité et un point de coordonnées.

Ne fonctionne qu'avec les joueurs.

Vaudra 0 si l'unité n'existe pas.

|cffff9900Ne fonctionne pas en instance/champ de bataille/arène depuis le patch 7.1.]=],
	["OP_OP_DISTANCE_X"] = "Coordonnée X",
	["OP_OP_DISTANCE_Y"] = "Coordonnée Y",
	["OP_OP_INV_COUNT"] = "Compte d'unités d'objet",
	["OP_OP_INV_COUNT_ANY"] = "N'importe quel objet",
	["OP_OP_INV_COUNT_PREVIEW"] = "%s unités dans |cffff9900%s",
	["OP_OP_INV_COUNT_TT"] = "|cff00ff00Le nombre d'unités d'un élément que le joueur possède dans son inventaire.",
	["OP_OP_INV_WEIGHT"] = "Poids total du contenant",
	["OP_OP_INV_WEIGHT_PREVIEW"] = "Poids total de |cffff9900%s",
	["OP_OP_INV_WEIGHT_TT"] = "|cff00ff00Le poids total actuel d'un contenant (son propre poids plus le contenu).",
	["OP_OP_QUEST_NPC"] = "L'unité est un PNJ de campagne",
	["OP_OP_QUEST_NPC_TT"] = "|cff00ff00Retourne si une unité est un PNJ personnalisé dans la campagne active.",
	["OP_OP_QUEST_OBJ"] = "Objectif de la quête",
	["OP_OP_QUEST_OBJ_ALL"] = "Tous les objectifs de quête",
	["OP_OP_QUEST_OBJ_ALL_PREVIEW"] = "Objectifs de %s",
	["OP_OP_QUEST_OBJ_ALL_TT"] = "Indique si tous les objectifs possibles de la quêtes sont complétés. Donc tout autant les objectifs révélés que ceux pas encore révélés.",
	["OP_OP_QUEST_OBJ_CURRENT"] = "Objectifs courants",
	["OP_OP_QUEST_OBJ_CURRENT_PREVIEW"] = "Obj. courants de %s",
	["OP_OP_QUEST_OBJ_CURRENT_TT"] = "Détermine si tous les objectifs actuellement révélés sont complétés.",
	["OP_OP_QUEST_OBJ_PREVIEW"] = "Objectif %s de %s",
	["OP_OP_QUEST_OBJ_TT"] = "Renvoie l'accomplissement (vrai ou faux) pour un objectif de quête. Si la campagne, la quête ou l'objectif n'est pas encore révélé, renvoie faux.",
	["OP_OP_QUEST_STEP"] = "Étape de quête actuelle",
	["OP_OP_QUEST_STEP_PREVIEW"] = "%s étape actuelle",
	["OP_OP_QUEST_STEP_TT"] = "Renvoie l'ID de l'étape de la quête actuelle. Si la quête n'est pas révélée ou n'a pas d'étape courante, renvoie nil.",
	["OP_OP_RANDOM"] = "Aléatoire",
	["OP_OP_RANDOM_FROM"] = "De",
	["OP_OP_RANDOM_PREVIEW"] = "Nombre aléatoire entre |cff00ff00%s|r et |cff00ff00%s|r.",
	["OP_OP_RANDOM_TO"] = "à",
	["OP_OP_RANDOM_TT"] = "Nombre aléatoire (entier) entre deux bornes.",
	["OP_OP_TIME_HOUR"] = "Temps: Heure",
	["OP_OP_TIME_HOUR_TT"] = "L'heure actuelle de la journée, heure du serveur.",
	["OP_OP_TIME_MINUTE"] = "Temps: Minute",
	["OP_OP_TIME_MINUTE_TT"] = "La minute actuelle, heure du serveur.",
	["OP_OP_UNIT_CLASS"] = "Classe d'unités",
	["OP_OP_UNIT_CLASS_TT"] = "|cff00ff00La classe d'unité EN ANGLAIS MINUSCULE, retournée par les seconds arguments de UnitClass.",
	["OP_OP_UNIT_CLASSIFICATION"] = "Classification des unités",
	["OP_OP_UNIT_CLASSIFICATION_TT"] = [=[|cff00ff00Le classement de l'unité EN ANGLAIS MINUSCULE. Exemple: normal, elite, rare, worldboss, moins ...

Retourne toujours normal pour les joueurs.]=],
	["OP_OP_UNIT_CREATURE_FAMILY"] = "Famille de l'unité",
	["OP_OP_UNIT_CREATURE_FAMILY_TT"] = "|cff00ff00La famille de créature de l'unité. Ne fonctionne que sur les bêtes et les démons. Exemple: Crabe, Loup, Succube, Marcheur du Vide...",
	["OP_OP_UNIT_CREATURE_TYPE"] = "Type de l'unité",
	["OP_OP_UNIT_CREATURE_TYPE_TT"] = "|cff00ff00Le type de créature de l'unité. Exemple: Bête, Draconien, Élémentaire...",
	["OP_OP_UNIT_DEAD"] = "L'unité est morte",
	["OP_OP_UNIT_DEAD_TT"] = "|cff00ff00Retourne si une unité est morte ou fantôme.",
	["OP_OP_UNIT_DISTANCE_INSPECT"] = "L'unité est proche (inspection)",
	["OP_OP_UNIT_DISTANCE_INSPECT_TT"] = "|cff00ff00Retourne si une unité est assez proche pour l'inspection (28 mètres).",
	["OP_OP_UNIT_DISTANCE_TRADE"] = "L'unité est proche (commerce)",
	["OP_OP_UNIT_DISTANCE_TRADE_TT"] = "|cff00ff00Retourne si une unité est assez proche pour l'échange (11,11 mètres).",
	["OP_OP_UNIT_EXISTS"] = "L'unité existe",
	["OP_OP_UNIT_EXISTS_TT"] = [=[|cff00ff00Retourne si une unité existe.

|rA Une unité 'existe' si elle peut être référencée par le joueur; par exemple. La cible existe si le joueur a une cible, le PNJ existe si le joueur interagit actuellement avec un PNJ, etc.]=],
	["OP_OP_UNIT_FACTION"] = "Faction de l'unité",
	["OP_OP_UNIT_FACTION_TT"] = "|cff00ff00La faction de l'unité en ANGLAIS ET MINUSCULE.",
	["OP_OP_UNIT_GUILD"] = "Guilde de l'unité",
	["OP_OP_UNIT_GUILD_RANK"] = "Rank de guilde de l'unité",
	["OP_OP_UNIT_GUILD_RANK_TT"] = "|cff00ff00Le rang de guilde de l'unité (si elle appartient à une guilde).",
	["OP_OP_UNIT_GUILD_TT"] = "|cff00ff00Le nom de la guilde de l'unité (si elle appartient à une guilde).",
	["OP_OP_UNIT_HEALTH"] = "Points de vie de l'unité",
	["OP_OP_UNIT_HEALTH_TT"] = "|cff00ff00Les points de vie actuels de l'unité.",
	["OP_OP_UNIT_ID"] = "ID de l'unité",
	["OP_OP_UNIT_ID_TT"] = "|cff00ff00L'ID de l'unité sous la forme |cff00ff00'joueur-royaume'|r, comme retourné par la fonction UnitFullName. Le royaume sera toujours présent.",
	["OP_OP_UNIT_ISPLAYER"] = "L'unité est un joueur",
	["OP_OP_UNIT_ISPLAYER_TT"] = "|cff00ff00Retourne vrai si l'unité est un joueur.",
	["OP_OP_UNIT_LEVEL"] = "Niveau de l'unité",
	["OP_OP_UNIT_LEVEL_TT"] = "|cff00ff00Le niveau de l'unité.",
	["OP_OP_UNIT_NAME"] = "Nom de l'unité",
	["OP_OP_UNIT_NAME_TT"] = [=[|cff00ff00Le nom d'une unité, première valeur de retour de la fonction UnitName.

|rUtilisé sur un joueur, il peut être |cff00ff00'joueur'|r ou |cff00ff00'joueur-royaume'|r. Donc si vous voulez être certain d'obtenir la forme |cff00ff00'joueur-royaume'|r vous devez utiliser l'opérande |cff00ff00'Unit ID'|r.]=],
	["OP_OP_UNIT_NPC_ID"] = "ID de PNJ de l'unité",
	["OP_OP_UNIT_NPC_ID_TT"] = "|cff00ff00Le PNJ ID, indiqué par UnitGUID. Ne fonctionne qu'avec les PNJ.",
	["OP_OP_UNIT_POSITION_X"] = "Position X de l'unité",
	["OP_OP_UNIT_POSITION_X_TT"] = [=[Retourne la coordonnée X d'une unité.

Ne fonctionne qu'avec les joueurs.

|cffff9900Ne fonctionne pas en instance/champs de bataille/arène depuis le patch 7.1.]=],
	["OP_OP_UNIT_POSITION_Y"] = "Position Y de l'unité",
	["OP_OP_UNIT_POSITION_Y_TT"] = [=[Retourne la coordonnée Y d'une unité.

Ne fonctionne qu'avec les joueurs.

|cffff9900Ne fonctionne pas en instance/champs de bataille/arène depuis le patch 7.1.]=],
	["OP_OP_UNIT_RACE"] = "Race de l'unité",
	["OP_OP_UNIT_RACE_TT"] = [=[|cff00ff00La race de l'unité EN ANGLAIS ET EN MINUSCULE, comme la seconde valeur de retour de la fonction UnitRace.

Donc scourge pour les Réprouvés.]=],
	["OP_OP_UNIT_SEX"] = "Sexe de l'unité",
	["OP_OP_UNIT_SEX_TT"] = [=[|cff00ff00L'index du sexe de l'unité. 2 = Homme, 3 = Femme. 1 correspond à neutre ou inconnu.

|cffffff00Retourné sous forme de STRING.]=],
	["OP_OP_UNIT_SPEED"] = "Vitesse de l'unité",
	["OP_OP_UNIT_SPEED_TT"] = "|cff00ff00La vitesse actuelle de l'unité en mètre par secondes. Marcher correspond à 2.5 et courir (sans amélioration) correspond à 7.",
	["OP_OR"] = "OU",
	["OP_OR_SWITCH"] = "Changer en OU",
	["OP_PREVIEW"] = "Prévisualisation",
	["OP_REMOVE_TEST"] = "Retirer le test",
	["OP_STRING"] = "Valeur texte",
	["OP_UNIT"] = "Type d'unité",
	["OP_UNIT_NPC"] = "PNJ",
	["OP_UNIT_PLAYER"] = "Joueur",
	["OP_UNIT_TARGET"] = "Cible",
	["OP_UNIT_TEST"] = "Test d'unité",
	["OP_UNIT_VALUE"] = "Valeur d'unité",
	["QE_ACTION"] = "Action de quête",
	["QE_ACTION_NO_CURRENT"] = "Vous n'avez pas de campagne active. Vous devez activer une campagne avant de pouvoir effectuer une action.",
	["QE_ACTIONS_TYPE_INTERRACT"] = "Interagir",
	["QE_ACTIONS_TYPE_LISTEN"] = "Écouter",
	["QE_ACTIONS_TYPE_LOOK"] = "Inspecter",
	["QE_ACTIONS_TYPE_TALK"] = "Parler",
	["QE_AUTO_REVEAL"] = "Révélation auto.",
	["QE_AUTO_REVEAL_TT"] = "Révèle automatiquement la quête dans le journal lorsque la campagne est commencée.",
	["QE_AUTORESUME_CONFIRM"] = [=[Un effet vient d'être appelé pour la campagne |cff00ff00[%s]|r.

Activer cette campagne ?
(Si vous avez déjà une campagne active, elle sera mise en pause et son progrès sera sauvegardé.)]=],
	["QE_BUTTON"] = "Ouvrir journal de quêtes",
	["QE_CAMPAIGN"] = "Campagne",
	["QE_CAMPAIGN_CURRENT"] = "Campagne actuelle",
	["QE_CAMPAIGN_CURRENT_NO"] = "Pas de campagne active",
	["QE_CAMPAIGN_EMPTY"] = "Cette campagne n'a pas de quête.",
	["QE_CAMPAIGN_FULL"] = "Terminée",
	["QE_CAMPAIGN_LIST"] = "%s campagne(s) disponible(s)",
	["QE_CAMPAIGN_NO"] = "Pas encore commencée",
	["QE_CAMPAIGN_NOQUEST"] = [=[Aucune quête révélée pour cette campagne.
Jetez un œil à la description de campagne pour révéler votre première quête.]=],
	["QE_CAMPAIGN_PAUSE"] = "Mettre la campagne en pause.",
	["QE_CAMPAIGN_RESET"] = "Réinitialiser la campagne",
	["QE_CAMPAIGN_RESUME"] = "Reprise de la campagne |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_START"] = "Début de la campagne |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_START_BUTTON"] = "Commencer ou reprendre la campagne",
	["QE_CAMPAIGN_UNSTARTED"] = [=[Vous n'avez pas encore commencé cette campagne.
Cliquez sur le bouton "Commencer" en haut à droite.]=],
	["QE_CAMPAIGNS"] = "Campagnes",
	["QE_COMPLETED"] = "Terminée",
	["QE_DESCRIPTION"] = "Résumé de quête",
	["QE_DESCRIPTION_TT"] = "Ce court résumé sera visible sur la page de la quête, dans le journal de quêtes.",
	["QE_FAILED"] = "Échouées",
	["QE_LINKS_ON_OBJECTIVE"] = "A la complétion d'objectif",
	["QE_LINKS_ON_OBJECTIVE_TT"] = [=[Déclenché à chaque fois que le joueur complète un objectif pour cette quête.

|cff00ff00C'est un bon endroit où vérifier si tous les objectifs actuels ont été complétés si vous avez plusieurs objectifs en cours à un moment donné.]=],
	["QE_LINKS_ON_START"] = "Au démarrage de la quête",
	["QE_LINKS_ON_START_TT"] = [=[Déclenché |cff00ff00une fois|r lorsque le joueur commencer votre quête, en la révélant dans son journal de quêtes.

|cff00ff00C'est un bon endroit pour diriger le joueur vers la première étape de la quête.]=],
	["QE_MACRO"] = "Créer macro",
	["QE_MACRO_MAX"] = "Vous ne pouvez pas créer plus de macros. Merci de libérer un emplacement de macro avant de réessayer.",
	["QE_MACRO_TT"] = "Créer une macro pour ce type d'action et placer la macro sous le curseur afin de vous laisser la placer dans vos barres d'actions.",
	["QE_NAME"] = "Nom de la quête",
	["QE_NAME_NEW"] = "Nouvelle quête",
	["QE_NAME_TT"] = "C'est le nom de votre quête, tel qu'il apparaîtra dans le journal de quêtes.",
	["QE_NEW"] = "Nouvelle quête révélée",
	["QE_NOACTION_ACTION"] = "Il n'y a rien à faire.",
	["QE_NOACTION_LISTEN"] = "Vous n'entendez rien d'intéressant.",
	["QE_NOACTION_LOOK"] = "Vous ne voyez rien de spécial.",
	["QE_NOACTION_TALK"] = "Il n'y a rien à dire.",
	["QE_NPC"] = "PNJ de campagne",
	["QE_OBJ"] = "Objectifs de quête",
	["QE_OBJ_ADD"] = "Ajouter objectif",
	["QE_OBJ_AUTO"] = "Révélation auto.",
	["QE_OBJ_AUTO_TT"] = "Révèle automatiquement cet objectif lorsque la quête est révélée dans le journal de quêtes.",
	["QE_OBJ_ID"] = "ID d'objectif",
	["QE_OBJ_ID_TT"] = "C'est l'identifiant de votre objectif. Vous ne pouvez avoir deux objectifs ayant le même ID dans la même quête.",
	["QE_OBJ_NO"] = "Pas d'objectif de quête",
	["QE_OBJ_REMOVE"] = "Supprimer cet objectif de quête ?",
	["QE_OBJ_SINGULAR"] = "Objectif de quête",
	["QE_OBJ_TEXT"] = "Texte d'objectif",
	["QE_OBJ_TT"] = [=[Les objectifs de quête sont des indices pour le joueur. Accomplir tous les objectifs ne cloture pas automatiquement la quête dans le journal. Vous décidez pleinement quand les objectifs sont révélés et il est dès lors possible d'avoir des objectifs cachés.
|cffff9900Les objectifs sont toujours ordonnés par ID dans le journal de quête, et non pas alphabétiquement.]=],
	["QE_OVERVIEW"] = "Aperçu de la quête",
	["QE_PREVIOUS_STEP"] = "Précédemment",
	["QE_PROGRESS"] = "Progression",
	["QE_PROGRESS_TT"] = [=[Ce paramètre indique que cette quête fait partie du calcul de progression de la campagne (même si la quête n'est pas révélée).

La progression de campagne est un indicateur en % placé dans le journal de quête et reflétant la progression globale des quêtes (en terme de % de quêtes accomplies par rapport au nombre total de quêtes).

|cff00ff00De manière générale cet indicateur sera toujours sélectionné, sauf pour les quêtes considérées comme annexe à votre campagne.]=],
	["QE_QUEST"] = "Quête",
	["QE_QUEST_LIST"] = "Quêtes pour cette campagne",
	["QE_QUEST_OBJ_AND_HIST"] = "Objectifs et historique",
	["QE_QUEST_OBJ_FINISHED"] = "|cffffff00Objectif accompli: |cff00ff00%s",
	["QE_QUEST_OBJ_REVEALED"] = "|cffffff00Nouvel objectif: |cff00ff00%s",
	["QE_QUEST_OBJ_UPDATED"] = "|cffffff00Objectif mis à jour: |cff00ff00%s",
	["QE_QUEST_START"] = "Début de la quête |cff00ff00[%s]|r.",
	["QE_QUEST_TT_STEP"] = [=[|cffffff00Actuellement:|r
"%s"]=],
	["QE_QUESTS"] = "Quêtes",
	["QE_QUESTS_HELP"] = [=[Vous pouvez ici ajouter des quêtes à votre campagne. Notez qu'une quête n'est pas automatiquement ajoutée au journal de quêtes du joueur lorsqu'il commence la campagne. Vous devez démarrer les quêtes à l'aide de processus.
|cffff9900Les quêtes sont ordonnées par ID dans le journal de quêtes et non pas alphabétiquement ou par ordre de révélation.|r]=],
	["QE_RESET_CONFIRM"] = [=[Réinitialiser cette campagne ?

Cela va annuler toute progression pour toutes les quêtes de la campagne.

Veuillez noter que vous ne perdrez pas les objets gagnés précédemment lors de la campagne.]=],
	["QE_ST_AUTO_REVEAL"] = "Étape initiale",
	["QE_ST_AUTO_REVEAL_TT"] = "Marque cette étape comme étant l'étape initiale de la quête lorsque celle-ci est révélée dans le journal de quête.",
	["QE_ST_END"] = "Étape finale",
	["QE_ST_END_TT"] = "Marque cette étape comme étant une étape finale de la quête. Lorsque cette étape sera atteinte, la quête sera automatiquement marquée comme terminée dans le journal de quêtes.",
	["QE_ST_LINKS_ON_LEAVE"] = "A la fin d'étape",
	["QE_ST_LINKS_ON_LEAVE_TT"] = "Déclenché |cff00ff00à chaque fois|r que le joueur quitte cette étape pour une autre. Cela sera déclenché avant que l’événement \"Au début d'étape\" de l'étape suivante ne soit déclenché.",
	["QE_ST_LINKS_ON_START"] = "Au début d'étape",
	["QE_ST_LINKS_ON_START_TT"] = "Déclanché |cff00ff00à chaque fois|r que le joueur atteint cette étape.",
	["QE_ST_POST"] = "Historique de la quête",
	["QE_ST_PRE"] = "Entrée du journal de quêtes",
	["QE_STEP"] = "Étapes de quête",
	["QE_STEP_ADD"] = "Ajouter étape de quête",
	["QE_STEP_CREATE"] = [=[Veuillez entrer l'ID d'étape. Vous ne pouvez avoir deux étapes ayant le même ID au sein de la même quête.

|cffff9900Veuillez noter que les étapes seront listées par ordre alphabétique d'ID ici et sur la base de données.

|cff00ff00C'est donc de bonne pratique de toujours commencer l'ID d'une étape par step_# où # est le numéro d'étape dans la quête.]=],
	["QE_STEP_DD_COPY"] = "Copier étape",
	["QE_STEP_DD_PASTE"] = "Coller étape",
	["QE_STEP_DD_REMOVE"] = "Supprimer étape",
	["QE_STEP_EXIST"] = "Il existe déjà une étape avec l'identifiant %s.",
	["QE_STEP_LIST"] = "Étapes pour cette quête",
	["QE_STEP_LIST_CURRENT"] = "Quêtes disponibles",
	["QE_STEP_LIST_FINISHED"] = "Quêtes terminées",
	["QE_STEP_MISSING"] = "Informations d'étape manquantes.",
	["QE_STEP_NAME_NEW"] = "Nouvelle étape de quête",
	["QE_STEP_NO"] = "Pas d'étape de quête",
	["QE_STEP_REMOVE"] = "Supprimer cette étape ?",
	["QE_STEP_TT"] = [=[Les quêtes sont découpées en une liste d'étapes.
Chaque étape possède un texte explicatif visible dans le journal et peut ajouter une entrée dans l'historique de la quête une fois une nouvelle étape atteinte.]=],
	["QE_STEPS"] = "Étapes de quête",
	["QUEST_ID"] = "Identifiant de quête",
	["QUEST_TU_1"] = [=[Les quêtes vont souvent nécessiter |cff00ff00des interactions avec des PNJs ou des éléments de l'environnement.|r

Il y a quatre types d'action: |cff00ff00Écouter, inspecter, parler et interagir|r.

Vous pouvez effectuer des actions en |cff00ff00cliquant-droit sur le bouton du journal de quête sur la barre TRP3.|r

Mais une manière plus simple est de |cff00ff00créer des macro.|r Pour cela, utilisez ce bouton de création de macro.]=],
	["QUEST_TU_2"] = [=[|cff00ff00Vous trouvez ici la liste de toutes les campagnes disponibles.|r

Une campagne est une collection de quêtes.

|cffff9900Vous ne pouvez progresser que dans une campagne à la fois|r. Il faut donc marquer cette campagne comme étant la campagne active. |cff00ff00Pour cela utilisez le bouton "Commencer ou continuer" situé sur le cadre de la campagne.|r

Vous ne perdrez pas votre progression dans vos campagnes quand vous passez d'une campagne à une autre.

|cffff9900Vous pouvez néanmoins réinitialiser votre progression dans une campagne en cliquant-droit sur son cadre et sélectionner Réinitialiser campagne. Veuillez noter que vous garderez tous vos objets gagnés lors de votre progression.]=],
	["QUEST_TU_3"] = [=[|cff00ff00Vous trouverez ici la liste de toutes les quêtes en cours et terminées.|r

Vous pouvez y voir pour chaque quête ses objectifs actuels ainsi que la dernière étape atteinte.]=],
	["QUEST_TU_4"] = [=[|cff00ff00Vous trouverez ici la progression actuelle de la quête et tous les objectifs à remplir.|r

Vous trouverez aussi un historique des étapes précédentes, au cas où vous auriez besoin de vous rafraîchir la mémoire.]=],
	["ROOT_CREATED"] = "Créé par %s le %s",
	["ROOT_CREATED_BY"] = "Créé par",
	["ROOT_CREATED_ON"] = "Créé le",
	["ROOT_GEN_ID"] = "ID généré",
	["ROOT_ID"] = "Identifiant de création",
	["ROOT_SAVED"] = "Dernière modif. par %s le %s",
	["ROOT_TITLE"] = "Création racine",
	["ROOT_VERSION"] = "Version",
	["SEC_EFFECT_BLOCKED"] = "Effet(s) bloqué(s)",
	["SEC_EFFECT_BLOCKED_TT"] = [=[En raison de vos paramètres de sécurité actuels, au moins un effet de cet objet (ou élément interne) est bloqué.

|cffff9900Cliquez pour visualiser la sécurité de cet objet.

Vous pourrez aussi Ctrl+Clic droit sur l'objet dans votre inventaire pour configurer la sécurité plus tard.]=],
	["SEC_HIGH"] = "Haut",
	["SEC_HIGH_TT"] = "Cette création et tous ses éléments liés sont sécurisés et n'utilisent pas d'effets gênants ou malveillants.",
	["SEC_LEVEL"] = "Niveau de sécurité",
	["SEC_LEVEL_DETAIL"] = "Cliquer pour voir le détail du script non-sécurisé.",
	["SEC_LEVEL_DETAIL2"] = "Cliquer pour voir le détail du script non-sécurisé et configurer ce qui peut être exécuté.",
	["SEC_LEVEL_DETAILS"] = "Détails de sécurité",
	["SEC_LEVEL_DETAILS_ACCEPTED"] = "Accepté",
	["SEC_LEVEL_DETAILS_ALL"] = "Change la sécurité pour tous les objets",
	["SEC_LEVEL_DETAILS_ALL_TT"] = "Accepte l'exécution de cet effet sur tous les éléments, maintenant et à l'avenir.",
	["SEC_LEVEL_DETAILS_BLOCKED"] = "Bloqué",
	["SEC_LEVEL_DETAILS_FROM"] = "Toujours accepter quand reçu de %s",
	["SEC_LEVEL_DETAILS_SECURED"] = "Cet élément et tous ses éléments internes sont sûrs !",
	["SEC_LEVEL_DETAILS_THIS"] = "Change la sécurité pour cet objet",
	["SEC_LEVEL_DETAILS_THIS_TT"] = "Accepte l'exécution de cet effet pour cet élément seulement.",
	["SEC_LEVEL_DETAILS_TT"] = [=[Pour %s et tous ses éléments internes.
|cffff9900Fait par : |cff00ff00%s
|cffff9900Reçu de : |cff00ff00%s]=],
	["SEC_LOW"] = "Bas",
	["SEC_LOW_TT"] = "Cet objet, ou un de ses éléments liés, utilise au moins un script non-sécurisé qui pourrait avoir des effets malveillants.",
	["SEC_MEDIUM"] = "Moyen",
	["SEC_MEDIUM_TT"] = "Cet objet, ou un de ses éléments liés, utilise au moins un script non-sécurisé qui pourrait avoir des effets gênants.",
	["SEC_MISSING_SCRIPT"] = "Processus \"%s\" introuvable",
	["SEC_REASON_DISMOUNT"] = "Désarçonner",
	["SEC_REASON_DISMOUNT_WHY"] = [=[Cet élément pourrait vous désarçonner de votre monture.

|cffff9900Ceci pourrait être indésirable... En particulier si vous êtes sur une monture volante !]=],
	["SEC_REASON_MACRO"] = "Exécute une macro",
	["SEC_REASON_MACRO_WHY"] = [=[Cette création pourrait exécuter n'importe quelle commande de macro.

|cffff0000Elle pourrait lancer un sort ou consommer un objet (hors combat). Elle pourrait aussi exécuter du code Lua disponible aux add-ons pour agir sur votre inventaire, or, guilde ou vous forcer à envoyer des messages aux autres joueurs pouvant conduire à une action de Blizzard sur votre compte.

|cff00ff00Lorsque cet effet est bloqué, les commandes qui devraient être exécutés par la macro sont à la place affichées dans la fenêtre de discussion.]=],
	["SEC_REASON_SCRIPT"] = "Script lua",
	["SEC_REASON_SCRIPT_WHY"] = [=[Cet objet peut appeler n'importe lequel des effets Extended.

|cffff0000Il peut être utilisé à mauvais escient pour vous forcer à énoncer des propos répréhensibles par les termes d'utilisation de Blizzard, passibles d'un ban du jeu.

|cff00ff00Si bloqué, le code sera exécuté dans un environnement plus sécurisé (par exemple, les effets de discussion ne seront affichés que pour vous et pas énoncés par votre personnage).]=],
	["SEC_REASON_SOUND"] = "Déclenche un son",
	["SEC_REASON_SOUND_WHY"] = [=[Cet élément pourrait jouer un son ou une musique qui serait entendu(e) par les utilisateurs de TRP3:E alentours.

|cffff9900Ceci pourrait être indésirable pour eux, si le son est spammé ou très agaçant. Et si c'est le cas, ils pourraient vous en blâmer et vous bloquer.

|cffff9900Si vous le bloquez, ce son ou cette musique ne sera joué(e) que pour vous.]=],
	["SEC_REASON_TALK"] = "Prise de parole du personnage",
	["SEC_REASON_TALK_WHY"] = [=[Cet élément pourrait forcer votre personnage à dire un texte (via /dire, /crier ou tout autre canal).

|cffff0000Ceci pourrait être utilisé d'une façon malveillante pour vous forcer à dire quelque-chose de répréhensible selon les termes de services de Blizzard, ce qui pourrait vous valoir un bannissement du jeu.

|cffff0000Si vous le bloquez, le texte sera affiché seulement pour vous (et non prononcé par votre personnage).]=],
	["SEC_RESOLUTION_ALL"] = "Pour tous les objets",
	["SEC_RESOLUTION_AUTHOR"] = "Pour ce créateur",
	["SEC_RESOLUTION_THIS_OBJECT"] = "Pour cet objet seulement",
	["SEC_RESOLUTION_WHITELISTED"] = "Créateur de confiance",
	["SEC_SCRIPT_ERROR"] = "Erreur dans le processus %s.",
	["SEC_TT_COMBO"] = "Alt + clic droit:|cffff9900 Configurer la sécurité",
	["SEC_TT_COMBO_2"] = "Paramétrer la sécurité",
	["SEC_UNSECURED_WHY"] = "Pourquoi n'est-ce pas sûr ?",
	["SET_TT_DETAILS_1"] = "Maintenez Alt pour afficher",
	["SET_TT_DETAILS_2"] = "%s alerte(s)",
	["SET_TT_OLD"] = [=[Cet objet a été créé avec une version antérieure de Extended (v %s).
Cela peut entraîner des incompatibilités.]=],
	["SET_TT_SECURED"] = [=[Certains effets potentiellement dérangeants ont été sécurisés.
|cff00ff00Alt + clic droit pour plus de détails.]=],
	["SET_TT_SECURED_2"] = "Des effets potentiellement malicieux ont été blockés pour votre sécurité.",
	["SET_TT_SECURED_2_1"] = "Voir plus d'informations.",
	["SPECIFIC"] = "Création spécifique",
	["SPECIFIC_INNER_ID"] = "ID interne",
	["SPECIFIC_MODE"] = "Mode",
	["SPECIFIC_PATH"] = "Chemin de la racine",
	["TB_TOOLS"] = "Base de données d'objets Extended",
	["TB_TOOLS_TT"] = "Créez vos propres objets et quêtes.",
	["TU_AC_1_TEXT"] = [=[Les |cff00ff00liens d'action|r vous permettent de lier un processus à une action de quête.

Il y a quatre types d'actions de quête que le joueur peut effectuer : |cff00ff00écouter, regarder, parler et interagir|r. 

Vous pouvez définir les liens d'action au niveau de la campagne, d'une quête, ou d'une étape de quête.]=],
	["TU_AC_2"] = "Évaluation d'actions",
	["TU_AC_2_TEXT"] = [=[Chaque action peut être conditionnée en effectuant un |cff00ff00Ctrl+click dessus|r.

Lorsqu'un joueur effectue une action, |cff00ff00tous les liens d'action seront testés dans l'ordre|r en commençant par les étapes de quêtes, suivies des quêtes, suivies enfin de la campagne.

Si un lien valide est trouvé (s'il s'agit du bon type d'action et que la condition, si existante, est remplie), le processus associé sera exécuté et |cffff9900l'addon cessera de chercher un autre lien|r.]=],
	["TU_CO_1_TEXT"] = [=[Un contenant est un object pouvant contenir d'autres objets.

Pour ouvrir un contenant vous pouvez |cff00ff00double-cliquer|r dessus dans l'inventaire.

Il est possible d'avoir des contenants qui sont également utilisables (par clic-droit). L'un n'empêche pas l'autre.

|cffff9900Please note that for now, you can only trade with players containers that are empty, or that contains only items that are inner objects of the container. Please see the inner object tab for more information.]=],
	["TU_CS_1_TEXT"] = [=[Avec les |cff00ff00cinématiques|r vous pouvez créer une expérience narrative plus immersive pour le joueur.

Les cinématiques suivent le même format utilisé dans l'addon Storyline.]=],
	["TU_CS_2_TEXT"] = [=[Une cinématique est une liste d'étapes qui seront jouées l'une après l'autre.

La cinématique prend place dans une scène avec deux personnages discutant entre eux.

A chaque étape, vous avez la possibilité de reconfigurer complètement la scène.]=],
	["TU_CS_3_TEXT"] = [=[Le texte d'étape sera découpé en plusieurs sous-étapes à chaque double saut de ligne. Ces sous-étapes suivent la même configuration d'étape.

Vous changerez typiquement d'étape lorsque vous souhaitez changer le personnage qui parle (avec l'attribut de "sens du dialogue").

Lorsque vous souhaitez changer l'attribut d'une étape, |cff00ff00assurez-vous d'avoir activé le paramètre en question.|r]=],
	["TU_CS_4"] = "Cinématiques et processus",
	["TU_CS_4_TEXT"] = [=[Vous pouvez lier un processus à une étape. Il sera exécuté au début de l'étape (ou à la première sous-étape).

Si ce processus contient un effet de Butin, vous pouvez cocher l'option "Attendre le butin" pour forcer le joueur à récupérer le butin avant de continuer la cinématique.]=],
	["TU_CS_5"] = "Aperçu",
	["TU_CS_5_TEXT"] = [=[Vous pouvez prévisualiser votre cinématique à tout moment.

|cffff9900Les processus liés ne seront pas exécutés durant la prévisualisation.|r]=],
	["TU_DB_1_TEXT"] = [=[|cff00ff00Bienvenue dans le tutoriel de la base de données.|r

Ceci est la base de données où toutes les créations sont rangées.

Une création contient toutes les informations sur un objet, un document, une campagne/quête/étape de quête ou une scène cinématique.]=],
	["TU_DB_2"] = "Types de base de données",
	["TU_DB_2_TEXT"] = [=[Il y a quatre onglets pour filtrer la base de données.

|cff00ff00Ma base de données :|r contient tous les objets que vous avez créé.

|cff00ff00Base de données des joueurs :|r contient tous les objets que vous avez reçu ou importé d'autres joueurs.

|cff00ff00 Base de données Backers :|r contient les objets créé par les backers ayant participé au Kickstarter et par l'équipe de TRP3.

|cff00ff00 Base de données complète :|r contient toutes les données.]=],
	["TU_DB_3_TEXT"] = [=[Vous pouvez filtrer chaque base de données plus précisément pour trouver une création spécifique en changeant les filtres de recherche et en sélectionnant |cff00ff00Rechercher|r. 

Sans filtres, la liste des créations suit une présentation hiérarchique.

En revanche, si vous filtrez la liste, les résultats seront affichés linéairement. Ici nous avons filtré la liste par type de création pour n'afficher que les |cffff9900objets|r.

Pour quitter la recherche, vous pouvez appuyer sur le bouton |cff00ff00Effacer|r dans la section des filtres.]=],
	["TU_DB_4"] = "Création racine et créations internes",
	["TU_DB_4_TEXT"] = [=[Il y a deux types de créations : |cff00ff00les créations racines et les créations internes|r. 

Les |cff00ff00créations internes|r sont toujours stockées dans une |cff00ff00création racine|r (même si elles peuvent être à l'intérieur d'une autre création interne stockée, ainsi de suite jusqu'à la racine).

Lorsque vous échangez un objet avec quelqu'un, toute l'information stockée dans l'objet racine est échangée, même si la création échangée est une création interne.

Pour le moment, souvenez-vous que les créations internes sont une bonne manière de lier des objets qui doivent toujours être échangés ensemble.

Exemples :
- Un objet affichant un document : le document doit être une création interne de l'objet racine.
- Une campagne avec 4 quêtes : chaque quête est une création interne de la campagne racine.
- Un objet fusil tirant des objets balles : l'objet balle doit être une création interne de l'objet fusil racine.

Ne vous inquiétez pas, cela viendra naturellement !]=],
	["TU_DB_5"] = "Créations racines",
	["TU_DB_5_TEXT"] = [=[Seuls les objets et les campagnes peuvent être des créations racines.

Vous pouvez utiliser ces deux boutons pour créer un nouvel objet ou campagne.]=],
	["TU_DB_6"] = "Créer un objet",
	["TU_DB_6_TEXT"] = [=[Lorsque vous créez un nouvel objet, vous pouvez sélectionner un patron ou utiliser le mode de création rapide.

Le mode de |cff00ff00création rapide|r vous permet de créer facilement un premier objet, mais les possibilités à votre disposition sont limitées. Notez que vous pouvez passer en mode normal à tout moment.

Utilisez le patron d'|cff00ff00objet vierge|r si vous souhaitez démarrer de zéro sans exemple.

Le patron d'|cff00ff00objet document|r crée deux créations : un objet ainsi qu'un document en création interne. Ceci configurera aussi l'objet pour afficher le document quand utilisé.

Le patron d'|cff00ff00objet contenant|r configure un objet pour être utilisé en tant que contenant.

Enfin, |cff00ff00créer à partir de...|r vous permet de dupliquer un objet existant.]=],
	["TU_DB_7"] = "Line d'une création",
	["TU_DB_7_TEXT"] = "Chaque ligne représente une création. Vous pouvez cliquer dessus pour l'éditer, ou faire un clic droit pour effectuer diverses actions.",
	["TU_EL_1_TEXT"] = [=[L'onglet de liens d'évènements est l'endroit où vous pouvez |cff00ff00lier vos processus à des évènements|r. 

|cffff9900En effet, les processus ne sont pas exécutés automatiquement par défaut !|r Vous devez les lier à un évènement afin qu'ils s'exécutent lorsqu'un évènement se produit.

Nous avons ici deux types d'évènements : |cff00ff00Les évènements de création, et les évènements du jeu|r.]=],
	["TU_EL_2_TEXT"] = [=[|cff00ff00Les évènements de création|r sont des évènements propres au fonctionnement de Total RP 3 Extended.

La liste des évènements possibles est fixée et dépend du type de création (objet, quête, etc).

Vous ne pouvez lier chaque évènement qu'à un seul processus, mais ce processus peut être lié à plusieurs évènements.]=],
	["TU_EL_3_TEXT"] = [=[|cff00ff00Les évènements du jeu|r sont des évènements lancés par le jeu lorsque quelque chose se produit.

Chaque lien que vous ajoutez liera un évènement du jeu à un processus. A chaque fois que l'évènement se produit, le processus sera exécuté.

|cff00ff00Vous pouvez ajouter une condition au lien en effectuant un Ctrl+clic dessus.|r La condition aura accès aux arguments de l'évènement à tester.
Par exemple, si vous surveillez l'évènement de lancement d'un sort, vous pourrez tester dans la condition le sort lancé.

|cffff9900Il existe une large liste d'évènements du jeu, il nous est impossible de tous les lister dans l'addon. Nous vous suggérons de consulter des sites tels que Wowwiki. http://wowwiki.wikia.com/wiki/Event_API|r]=],
	["TU_EL_3_TEXT_V2"] = [=[|cff00ff00Les évènements du jeu|r sont des évènements lancés par le jeu lorsque quelque chose se produit.

Chaque lien que vous ajoutez liera un évènement du jeu à un processus. A chaque fois que l'évènement se produit, le processus sera exécuté.

|cff00ff00Vous pouvez ajouter une condition au lien en effectuant un Ctrl+clic dessus.|r La condition aura accès aux arguments de l'évènement à tester.
Par exemple, si vous surveillez l'évènement de lancement d'un sort, vous pourrez tester dans la condition le sort lancé.

|cffff9900Il existe une large liste d'évènements du jeu, il nous est impossible de tous les lister dans l'addon. Nous vous suggérons de consulter des sites tels que Wowwiki. http://wowwiki.wikia.com/wiki/Event_API|r

|rEn plus des évènements du jeu, |cff00ff00Total RP 3: Extended met à disposition quelques évènements personnalisés|r détaillés dans le wiki de l'addon (en anglais).
|cff00ff00https://github.com/Ellypse/Total-RP-3-Extended/wiki|r]=],
	["TU_EL_4_TEXT"] = "|cff00ff00Les évènements du jeu|r ne sont disponibles que pour les campagnes, quêtes et étapes de quêtes.",
	["TU_IT_1_TEXT"] = [=[|cff00ff00Bienvenue dans le tutoriel de création d'objet.|r

Un objet est une création que vous pouvez stocker dans l'inventaire de votre personnage (ou déposer au sol).

Vous vous trouvez ici dans l'onglet Principal dans lequel vous pouvez définir tous les attributs basiques pour votre objet.]=],
	["TU_IT_2"] = "Paramètres d'affichage",
	["TU_IT_2_TEXT"] = [=[Les attributs d'affichage sont purement cosmétiques et n'ont aucun effet en jeu.

Il s'agit de tous les attributs requis pour le tooltip de l'objet ainsi que son icône.]=],
	["TU_IT_3"] = "Notes libres",
	["TU_IT_3_TEXT"] = [=[Vous pouvez rédiger des notes pour vous souvenir de ce que vous souhaitez réaliser avec votre objet.

Ces notes pourront aider d'autres joueurs qui souhaiteraient créer un objet basé sur le vôtre.]=],
	["TU_IT_4"] = "Paramètres de jouabilité",
	["TU_IT_4_TEXT"] = [=[Les attributs de jeu ont quelques effets sur le jeu.

Deux attributs sont importants: |cff00ff00Utilisable|r et |cff00ff00Contenant|r car cocher ceux-ci fera apparaître les onglets |cff00ff00Processus|r et |cff00ff00Contenant|r.]=],
	["TU_TITLE"] = "Tutoriel",
	["TU_WO_1_TEXT"] = [=[|cff00ff00Bienvenue dans ce tutoriel de création de processus.|r

Un processus est un mécanisme apportant du dynamisme à votre création. C'est ici que vous serez capable de jouer des sons, d'afficher un texte ou de proposer un loot au joueur, par exemple.]=],
	["TU_WO_2"] = "Liste de processus",
	["TU_WO_2_TEXT"] = [=[A gauche se trouve |cff00ff00la liste de vos processus|r.

Vous pouvez supprimer, renommer ou copier/coller un processus en cliquant-droit sur ce dernier.

|cffff9900Note: Si vous êtes en train de modifier un objet en "mode normal", vous ne verrez pas une liste de processus mais un seul et unique processus "A l'utilisation".

Si vous souhaitez pouvoir utiliser plusieurs processus pour un objet, vous pouvez le convertir en "mode Expert" en cliquant-droit sur l'objet dans la vue des bases de données.]=],
	["TU_WO_3_TEXT"] = [=[Ici se trouve la liste de tous les éléments du processus sélectionné.

Un élément peut être un effet, un délais ou une condition.

L'ordre des éléments est important car le processus sera exécuté de manière séquentielle.

Vous pouvez dès lors changer l'ordre des éléments en utilisant les flèches en haut à droite de chaque élément.]=],
	["TU_WO_4"] = "Ajouter un effet",
	["TU_WO_4_TEXT"] = [=[Les effets sont les éléments comme "jouer un son", "commencer une quête" ou encore "afficher une alerte".

Il y a BEAUCOUP d'effets, chacun étant décrit dans son infobulle !]=],
	["TU_WO_5"] = "Ajouter une condition",
	["TU_WO_5_TEXT"] = [=[Les conditions vous permettent |cff00ff00de tester des valeurs afin d'altérer l'exécution du processus.|r

|cffff9900Si la condition n'est pas respectée, l'exécution du processus s’interrompt.|r

Une condition est composée d'une série de tests liés entre eux par des opérateurs OU et ET.

Chaque test est une comparaison de valeurs. Par exemple: "Les points de vie de la cible sont inférieur à 500", "Le joueur n'est pas mort" ou encore "Le joueur possède au moins 3 unités de tel objet dans son inventaire".]=],
	["TU_WO_6"] = "Ajouter un délais",
	["TU_WO_6_TEXT"] = "Les délais peuvent mettre l'exécution du processus en pause pour une durée déterminée, mais ils peuvent aussi agir en tant qu'incantation et être interrompu lorsque le joueur se déplace.",
	["TU_WO_ERROR_1"] = "Veuillez créer un processus avant de continuer ce tutoriel.",
	["TYPE"] = "Type",
	["TYPE_CAMPAIGN"] = "Campagne",
	["TYPE_DIALOG"] = "Cinématique",
	["TYPE_DOCUMENT"] = "Document",
	["TYPE_ITEM"] = "Objet",
	["TYPE_ITEMS"] = "Objet(s)",
	["TYPE_LOOT"] = "Butin",
	["TYPE_QUEST"] = "Quête",
	["TYPE_QUEST_STEP"] = "Étape de quête",
	["UNIT_FRIES"] = "frites",
	["UNIT_POTATOES"] = "pommes de terre",
	["WO_ACTIONS_LINKS"] = "Liens d'action",
	["WO_ACTIONS_LINKS_TT"] = [=[Ici vous pouvez lier vos processus aux actions de quête des joueurs.
Ces actions sont : |cff00ff00Interagir, écouter, parler and inspecter.|r]=],
	["WO_ADD"] = "Créer processus",
	["WO_ADD_ID"] = [=[|cff00ff00Entrez l'ID du processus.|r

C'est un identifiant interne qui vous permet de gérer vos processus, et qui ne sera pas visible par le joueur.

Veuillez noter que vous ne pouvez pas avoir deux processus avec le même ID dans le même élément.]=],
	["WO_ADD_ID_NO_AVAILABLE"] = "Cette ID de processus n'est pas disponible.",
	["WO_COMMON_EFFECT"] = "Effets communs",
	["WO_CONDITION"] = "Condition",
	["WO_CONDITION_TT"] = [=[Évalue une condition.
Stoppe le processus si la condition échoue.]=],
	["WO_CONTEXT"] = "Contexte",
	["WO_CONTEXT_TT"] = "Le contexte de processus détermine quels effets peuvent être employés dans le processus.",
	["WO_COPY"] = "Copier le contenu de processus",
	["WO_DELAY"] = "Délai",
	["WO_DELAY_CAST"] = "Incanter pendant",
	["WO_DELAY_CAST_SOUND"] = "ID de son d'incantation",
	["WO_DELAY_CAST_SOUND_TT"] = [=[L'ID du son qui sera joué pendant l'incantation. Vous pouvez y indiquer un son qui est répétable et il sera correctement interrompu en cas d'interruption d'incantation.

|cff00ff00Exemples: 12273, 12361, ...etc.]=],
	["WO_DELAY_CAST_TEXT"] = "Texte d'incantation",
	["WO_DELAY_CAST_TEXT_TT"] = "Le texte affiché sur la barre d'incantation.",
	["WO_DELAY_DURATION"] = "Durée",
	["WO_DELAY_DURATION_TT"] = "La durée de ce délai, en secondes.",
	["WO_DELAY_INTERRUPT"] = "Interruption",
	["WO_DELAY_INTERRUPT_1"] = "Pas d'interruption",
	["WO_DELAY_INTERRUPT_2"] = "Interruption au mouvement",
	["WO_DELAY_SECONDS"] = "seconde(s)",
	["WO_DELAY_TT"] = [=[Met le processus en pause.
Peut aussi être utilisé comme incantation et peut être interrompu.]=],
	["WO_DELAY_TYPE"] = "Type de délai",
	["WO_DELAY_TYPE_1"] = "Délai normal",
	["WO_DELAY_TYPE_1_TT"] = "Met simplement le processus en pause, sans afficher d'information au joueur.",
	["WO_DELAY_TYPE_2"] = "Incantation",
	["WO_DELAY_TYPE_2_TT"] = "Affiche une barre d'incantation pendant la pause.",
	["WO_DELAY_WAIT"] = "Pause pendant",
	["WO_EFFECT"] = "Effet",
	["WO_EFFECT_CAT_COMMON"] = "Commun",
	["WO_EFFECT_NO_EDITOR"] = "Cet effet ne peut être configuré.",
	["WO_EFFECT_SELECT"] = "Sélectionnez un effet",
	["WO_EFFECT_TT"] = [=[Jouer un effet.
Il peut s'agir de jouer un son, afficher un texte ...etc.]=],
	["WO_ELEMENT"] = "Condition d'élément",
	["WO_ELEMENT_ADD"] = "Ajouter un élément au processus",
	["WO_ELEMENT_COND"] = "Modifier la condition de l'effet",
	["WO_ELEMENT_COND_NO"] = "Retirer la condition de l'effet",
	["WO_ELEMENT_COND_TT"] = "Ajouter une condition à l'exécution de cet effet.",
	["WO_ELEMENT_COPY"] = "Copier contenu de l'élément",
	["WO_ELEMENT_EDIT"] = "Cliquez pour modifier l'élément",
	["WO_ELEMENT_EDIT_CTRL"] = "Control-click pour conditionner cette instruction",
	["WO_ELEMENT_EDIT_RIGHT"] = "Click-droit pour plus d'opérations",
	["WO_ELEMENT_PASTE"] = "Coller contenu de l'élément",
	["WO_ELEMENT_TYPE"] = "Sélectionnez le type d'élément",
	["WO_EMPTY"] = [=[Commencez par ajouter un élément à votre processus.
Cela peut être un effet, une condition ou un délai.]=],
	["WO_END"] = "Fin de processus",
	["WO_EVENT_EX_ADD"] = "Ajouter un lien d'événement",
	["WO_EVENT_EX_BROWSER_COMBAT_LOG_ERROR"] = "Impossible d'afficher les arguments, reportez-vous à Wowpedia",
	["WO_EVENT_EX_BROWSER_NO_PAYLOAD"] = "Pas d'argument",
	["WO_EVENT_EX_BROWSER_OPEN"] = "Ouvrir le navigateur d'évènements",
	["WO_EVENT_EX_BROWSER_TITLE"] = "Navigateur d'évènements",
	["WO_EVENT_EX_CONDI"] = "Éditeur de condition de lien",
	["WO_EVENT_EX_EDITOR"] = "Éditeur de lien d'événement",
	["WO_EVENT_EX_LINK"] = "Lien d'événement du jeu",
	["WO_EVENT_EX_LINKS"] = "Liens d'événements du jeu",
	["WO_EVENT_EX_LINKS_TT"] = [=[Ici vous pouvez lier vos processus à des événements du jeu.
Chaque lien peut être conditionné.]=],
	["WO_EVENT_EX_NO"] = "Pas de lien",
	["WO_EVENT_EX_UNKNOWN_ERROR"] = "[Erreur] Evènement inconnu %s dans %s",
	["WO_EVENT_ID"] = "ID d'événement",
	["WO_EVENT_ID_TT"] = [=[L'ID d'événement.

Vous trouverez la liste complète des événements du jeu sur des sites comme wowwiki ou wowpedia.

Par exemple, PLAYER_REGEN_DISABLED est un événement déclenché dès que le joueur entre en combat.]=],
	["WO_EVENT_LINKS"] = "Liens d'événements de création",
	["WO_EXECUTION"] = "Exécution du processus",
	["WO_EXPERT"] = "Mode expert",
	["WO_EXPERT_DONE"] = "%s passé en mode expert. Déchaînez maintenant votre créativité !",
	["WO_EXPERT_EFFECT"] = "Effets experts",
	["WO_EXPERT_TT"] = [=[Un processus est un ensemble d'instructions pouvant rentre votre création dynamique.

Ici vous pouvez définir tous les processus de votre création et les lier à des actions ou des événements dans l'onglet de Liens d'événements.]=],
	["WO_LINKS"] = "Liens d'événements",
	["WO_LINKS_NO_LINKS"] = "Pas de lien",
	["WO_LINKS_NO_LINKS_TT"] = "Ne pas lier cette action/événement à un processus.",
	["WO_LINKS_SELECT"] = "Sélectionnez un processus à lier",
	["WO_LINKS_TO"] = "Lié au processus",
	["WO_LINKS_TRIGGERS"] = "Ici, vous pouvez lier vos processus à des événements spécifiques pour cette création.",
	["WO_NO"] = "Pas de processus",
	["WO_PASTE"] = "Coller le contenu du processus",
	["WO_PASTE_CONFIRM"] = "Remplacer le contenu de ce processus par celui copié précédemment ?",
	["WO_REMOVE_POPUP"] = "Supprimer le processus %s ?",
	["WO_SECURITY"] = "Niveau de sécurité",
	["WO_SECURITY_HIGH"] = "Haute",
	["WO_SECURITY_HIGH_DETAILS"] = "Cet effet est sécurisé et ne demandera aucune autorisation à l'utilisateur.",
	["WO_SECURITY_LOW"] = "Basse",
	["WO_SECURITY_LOW_DETAILS"] = "Cet effet n'est pas sécurisé et peut être utilisé de manière mal intentionnée. Une alerte sera affichée et une autorisation sera demandée à l'utilisateur, selon ses paramètres de sécurité.",
	["WO_SECURITY_NORMAL"] = "Moyenne",
	["WO_SECURITY_NORMAL_DETAILS"] = "Cet effet est sécurisé mais peut causer des inconveniences. Pour cette raison, il est possible qu'une autorisation soit demandée à l'utilisateur, en fonction de ses paramètres de sécurité.",
	["WO_WO_SECURITY"] = "Sécurité du processus",
	["WO_WORKFLOW"] = "Processus"
}

Localization:GetLocale("frFR"):AddTexts(localeContent);
localeContent = {
	["ALL"] = "Todo",
	["BINDING_NAME_TRP3_INVENTORY"] = "Abrir inventario del personaje",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "Abrir bolsa principal",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "Acción de misión: interactuar",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "Acción de misión: escuchar",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "Acción de misión: inspeccionar",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "Acción de misión: hablar",
	["BINDING_NAME_TRP3_QUESTLOG"] = "Abrir el diario de misiones de TRP3",
	["BINDING_NAME_TRP3_SEARCH_FOR_ITEMS"] = "Buscar objetos",
	["CA_ACTION_CONDI"] = "Editor de condiciones de la acción",
	["CA_ACTION_REMOVE"] = "¿Eliminar esta acción?",
	["CA_ACTIONS"] = "Acciones",
	["CA_ACTIONS_ADD"] = "Añadir acción",
	["CA_ACTIONS_COND"] = "Editar condición",
	["CA_ACTIONS_COND_OFF"] = "Esta acción no está condicionada.",
	["CA_ACTIONS_COND_ON"] = "Esta acción está condicionada.",
	["CA_ACTIONS_COND_REMOVE"] = "Eliminar condición",
	["CA_ACTIONS_EDITOR"] = "Editor de acción",
	["CA_ACTIONS_NO"] = "Sin acción",
	["CA_ACTIONS_SELECT"] = "Seleccionar tipo de acción",
	["CA_DESCRIPTION"] = "Resumen de campaña",
	["CA_DESCRIPTION_TT"] = "Este breve resumen será visible en la página de campaña, en el diario de misiones.",
	["CA_ICON"] = "Icono de campaña",
	["CA_ICON_TT"] = "Seleccionar icono de campaña",
	["CA_IMAGE"] = "Retrato de campaña",
	["CA_IMAGE_TT"] = "Seleccionar retrato de campaña",
	["CA_LINKS_ON_START"] = "Al inicio de la campaña",
	["CA_LINKS_ON_START_TT"] = [=[Activado |cff00ff00once|r cuando el jugador empiece tu campaña, ya sea por primera vez o reiniciándola en el diario de misiones.

|cff00ff00Este es un buen lugar para activar tu primera misión.]=],
	["CA_NAME"] = "Nombre de campaña",
	["CA_NAME_NEW"] = "Nueva campaña",
	["CA_NAME_TT"] = "Este es el nombre de tu campaña. Aparece en el diario de misiones.",
	["CA_NO_NPC"] = "PNJ no personalizado",
	["CA_NPC"] = "Lista de PNJs de la campaña",
	["CA_NPC_ADD"] = "Añadir PNJ personalizado",
	["CA_NPC_AS"] = "Duplicar",
	["CA_NPC_EDITOR"] = "Editor de PNJ",
	["CA_NPC_EDITOR_DESC"] = "Descripción de PNJ",
	["CA_NPC_EDITOR_NAME"] = "Nombre de PNJ",
	["CA_NPC_ID"] = "ID de PNJ",
	["CA_NPC_ID_TT"] = [=[Por favor, introduce la ID del PNJ a personalizar.

|cff00ff00Para obtener la ID del PNJ que tienes en objetivo, escribe este comando en el chat: /trp3 getID]=],
	["CA_NPC_NAME"] = "Nombre de PNJ por defecto",
	["CA_NPC_REMOVE"] = "¿Deseas eliminar la personalización para este NPC?",
	["CA_NPC_TT"] = "Puedes personalizar PNJs para darles un nombre, icono y descripción. Esta personalización será visible cuando el jugador tenga tu campaña activa.",
	["CA_NPC_UNIT"] = "PNJ personalizado",
	["CA_QE_ID"] = "Cambiar ID de misión",
	["CA_QE_ST_ID"] = "Cambiar ID del paso de misión",
	["CA_QUEST_ADD"] = "Añadir misión",
	["CA_QUEST_CREATE"] = [=[Por favor, introduce la ID de misión. No puedes tener dos misiones con la misma ID en la misma campaña.

|cffff9900Por favor, ten en cuenta que las misiones serán listadas en orden alfabético de ID en la lista de misiones.

|cff00ff00Es una buena práctica empezar tus ID por quest_#, donde # es el número de la misión en la campaña.]=],
	["CA_QUEST_EXIST"] = "Ya existe una misión con la ID %s.",
	["CA_QUEST_NO"] = "Sin misiones",
	["CA_QUEST_REMOVE"] = "¿Eliminar esta misión?",
	["CL_CAMPAIGN_PROGRESSION"] = "Progresión por %s",
	["CL_CREATION"] = "Creación extendida",
	["CL_EXTENDED_CAMPAIGN"] = "Campaña extendida",
	["CL_EXTENDED_ITEM"] = "Objeto extendido",
	["CL_IMPORT"] = "Importar en la base de datos",
	["CL_IMPORT_ITEM_BAG"] = "Añade el objeto a tu bolsa",
	["CL_TOOLTIP"] = "Crear link de chat",
	["COM_NPC_ID"] = "obtener id de pnj",
	["COND_COMPLETE"] = "Completar expresión lógica",
	["COND_CONDITIONED"] = "Condicionado",
	["COND_EDITOR"] = "Editor de condiciones",
	["COND_EDITOR_EFFECT"] = "Editor de Condición de efecto",
	["COND_LITT_COMP"] = "Todos los tipos de comparación",
	["COND_NUM_COMP"] = "Sólo comparación numérica",
	["COND_NUM_FAIL"] = "Debes tener dos operandos numéricos si usas el comparador numérico.",
	["COND_PREVIEW_TEST"] = "Prueba preliminar",
	["COND_PREVIEW_TEST_TT"] = "Muestra en el chat la evaluación de la prueba basada en la situación actual.",
	["COND_TEST_EDITOR"] = "Editor de prueba",
	["COND_TESTS"] = "Pruebas de condición",
	["CONF_MAIN"] = "Ajustes extendidos",
	["CONF_MUSIC_ACTIVE"] = "Reproducir música local",
	["CONF_MUSIC_ACTIVE_TT"] = [=[La música local es música reproducida por otros jugadores (por ejemplo, mediante un objeto) a cierto rango en metros.

Desactívalo si no quieres escuchar estas músicas.

|cff00ff00Ten en cuenta que no escucharás música de jugadores ignorados.

|cff00ff00Ten en cuenta que todas las músicas son interrumpibles mediante la opción Historial de sonido en la barra de atajos de TRP3.]=],
	["CONF_MUSIC_METHOD"] = "Método de reproducción local de musica",
	["CONF_MUSIC_METHOD_TT"] = "Determina cómo escucharás la música local cuando estés en rango.",
	["CONF_SOUNDS"] = "Música/sonido local",
	["CONF_SOUNDS_ACTIVE"] = "Reproducir sonidos locales",
	["CONF_SOUNDS_ACTIVE_TT"] = [=[Los sonidos locales son sonidos reproducidos por otros jugadores (por ejemplo, mediante un objeto) a cierto rango en metros.

Desactívalo si no quieres escuchar estos sonidos.

|cff00ff00Ten en cuenta que no escucharás sonidos de jugadores ignorados.

|cff00ff00Ten en cuenta que todos los sonidos son interrumpibles mediante la opción Historial de sonido en la barra de atajos de TRP3.]=],
	["CONF_SOUNDS_MAXRANGE"] = "Rango máximo de reproducción",
	["CONF_SOUNDS_MAXRANGE_TT"] = [=[Establece el rango máximo (en metros) en que escucharás sonido/música local.

|cff00ff00Útil para evitar a gente que use sonidos en todo el continente.

|cffff9900¡Cero significa sin límite!]=],
	["CONF_SOUNDS_METHOD"] = "Método de reproducción local de sonidos",
	["CONF_SOUNDS_METHOD_1"] = "Reproducir automáticamente",
	["CONF_SOUNDS_METHOD_1_TT"] = "Si estás en rango, se reproducirá el sonido/música sin pedirte permiso.",
	["CONF_SOUNDS_METHOD_2"] = "Pedir permiso",
	["CONF_SOUNDS_METHOD_2_TT"] = "Si estás en rango, aparecerá un link en el chat pidiéndote confirmación para reproducir el sonido/música.",
	["CONF_SOUNDS_METHOD_TT"] = "Determina cómo escucharás el sonido local cuando estés en rango.",
	["CONF_UNIT"] = "Unidades",
	["CONF_UNIT_WEIGHT"] = "Unidad de peso",
	["CONF_UNIT_WEIGHT_1"] = "Gramos",
	["CONF_UNIT_WEIGHT_2"] = "Libras",
	["CONF_UNIT_WEIGHT_3"] = "Patatas",
	["CONF_UNIT_WEIGHT_TT"] = "Define cómo se muestran los valores de peso.",
	["DB"] = "Base de datos",
	["DB_ACTIONS"] = "Acciones",
	["DB_ADD_COUNT"] = "¿Cuántas unidades de %s deseas añadir al inventario?",
	["DB_ADD_ITEM"] = "Añadir al inventario principal",
	["DB_ADD_ITEM_TT"] = "Añade unidades de este objeto en tu bolsa principal (o inventario principal si no tienes una bolsa principal con el personaje).",
	["DB_BACKERS"] = "Base de datos de backers (%s)",
	["DB_BACKERS_LIST"] = "Créditos",
	["DB_BROWSER"] = "Buscador de objetos",
	["DB_COPY_ID_TT"] = "Muestra la ID del objeto en un popup para copiar/pegar.",
	["DB_COPY_TT"] = "Copia toda la información de este objeto y sus hijos para poderse añadir como objeto interno de otro objeto",
	["DB_CREATE_CAMPAIGN"] = "Crear campaña",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "Campaña en blanco",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT"] = "Una plantilla en blanco. Para aquellos que les gusta comenzar desde cero.",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "Creado desde...",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "Copia creada de campaña existente",
	["DB_CREATE_CAMPAIGN_TT"] = "Iniciar la creación de una campaña",
	["DB_CREATE_ITEM"] = "Crear objeto",
	["DB_CREATE_ITEM_TEMPLATES"] = "O seleccionar una plantilla",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "Objeto en blanco",
	["DB_CREATE_ITEM_TEMPLATES_BLANK_TT"] = [=[Plantilla en blanco.
Para aquellos a quienes les gusta empezar de cero.]=],
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "Contenedor",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[Una plantilla para objetos de tipo contenedor.
Un contenedor puede almacenar otros objetos.]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "Documento",
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT"] = [=[Una plantilla con un objeto interno de tipo documento.
Útil para crear rápidamente un libro o un pergamino.]=],
	["DB_CREATE_ITEM_TEMPLATES_EXPERT"] = "Objeto experto",
	["DB_CREATE_ITEM_TEMPLATES_EXPERT_TT"] = "Una plantilla en blanco experta. Para usuarios con experiencia haciendo creaciones.",
	["DB_CREATE_ITEM_TEMPLATES_FROM"] = "Crear desde...",
	["DB_CREATE_ITEM_TEMPLATES_FROM_TT"] = "Crear una copia de un objeto existente.",
	["DB_CREATE_ITEM_TEMPLATES_QUICK"] = "Creación rápida",
	["DB_CREATE_ITEM_TEMPLATES_QUICK_TT"] = [=[Rápidamente crea un objeto sencillo sin efectos.
Añade una unidad de este objeto a tu bolsa principal.]=],
	["DB_CREATE_ITEM_TT"] = "Seleccionar plantilla para el nuevo objeto",
	["DB_DELETE_TT"] = "Elimina este objeto y sus hijos.",
	["DB_EXPERT_TT"] = "Cambia este objeto al modo experto, permitiendo personalizaciones más complejas.",
	["DB_EXPORT"] = "Exportación rápida",
	["DB_EXPORT_DONE"] = [=[Tu objeto ha sido exportado en un archivo llamado |cff00ff00totalRP3_Extended_ImpExport.lua|r localizado en:

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables

¡Puedes compartir este archivo con tus amigos!

Con él pueden seguir el proceso de importación situado en la |cff00ff00pestaña de Base de datos total|r.]=],
	["DB_EXPORT_HELP"] = "Código para el objeto %s (tamaño: %0.1f kB)",
	["DB_EXPORT_MODULE_NOT_ACTIVE"] = "Importación/exportación completa de objetos: Por favor, habilita el complemento \"totalRP3_Extended_ImpExport\" primero.",
	["DB_EXPORT_TOO_LARGE"] = [=[Este objeto es demasiado grande para ser exportado de este modo. Por favor, usa la opción "Exportación completa".

Tamaño: %0.1f kB.]=],
	["DB_EXPORT_TT"] = [=[Serializa el contenido del objeto para ser compartido fuera del juego.

Solo funciona con objetos pequeños (menos de 20 kB una vez serializados). Para objetos de mayor tamaño, usa la opción "exportación completa".]=],
	["DB_FILTERS"] = "Filtros de búsqueda",
	["DB_FILTERS_CLEAR"] = "Limpiar",
	["DB_FILTERS_NAME"] = "Nombre de objeto",
	["DB_FILTERS_OWNER"] = "Creado por",
	["DB_FULL"] = "Base de datos total (%s)",
	["DB_FULL_EXPORT"] = "Exportación completa",
	["DB_FULL_EXPORT_TT"] = [=[Realiza una exportación completa de este objeto sin importar su tamaño.

Esto provocará una recarga de la interfaz para forzar el guardado de los ficheros del add-on.]=],
	["DB_HARD_SAVE"] = "Forzar guardado",
	["DB_HARD_SAVE_TT"] = "Recarga la interfaz del juego para forzar que las variables guardadas se escriban en el disco.",
	["DB_IMPORT"] = "Importación rápida de objetos",
	["DB_IMPORT_CONFIRM"] = [=[Este objeto ha sido serializado en una versión diferente a la tuya de Total RP 3 Extended.

Versión TRP3E del objeto: %s
Tu versión de TRP3E: %s

|cffff9900Esto podría provocar incompatibilidades.
¿Continuar con la importación de todas formas?]=],
	["DB_IMPORT_DONE"] = "¡Objeto importado con éxito!",
	["DB_IMPORT_EMPTY"] = [=[No hay objetos para importar en el fichero |cff00ff00totalRP3_Extended_ImpExport.lua|r.

Este fichero debe colocarse en el siguiente directorio |cffff9900antes de lanzar el juego|r:

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables]=],
	["DB_IMPORT_ERROR1"] = "El objeto no pudo ser deserializado.",
	["DB_IMPORT_FULL"] = "Importación total",
	["DB_IMPORT_FULL_CONFIRM"] = [=[¿Quieres importar el siguiente objeto?

%s
%s
Por |cff00ff00%s|r
Versión %s]=],
	["DB_IMPORT_FULL_TT"] = "Importa el fichero |cff00ff00totalRP3_Extended_ImpExport.lua|r.",
	["DB_IMPORT_ITEM"] = "Importar objeto",
	["DB_IMPORT_TT"] = "Pega aquí un objeto previamente serializado.",
	["DB_IMPORT_VERSION"] = [=[Estás importando una versión anterior de un objeto ya existente.

Versión de importación: %s
Tu versión: %s

|cffff9900¿Confirmas los cambios?]=],
	["DB_IMPORT_WORD"] = "Importar",
	["DB_LIST"] = "Lista de creaciones",
	["DB_LOCALE"] = "Localización del objeto",
	["DB_MY"] = "Mi base de datos (%s)",
	["DB_MY_EMPTY"] = [=[No has creado ningún objeto todavía.
¡Usa los botones de abajo para dar rienda suelta a tu creatividad!]=],
	["DB_OTHERS"] = "Base de datos de jugadores (%s)",
	["DB_OTHERS_EMPTY"] = "Aquí se colocarán los objetos creados por otros jugadores.",
	["DB_REMOVE_OBJECT_POPUP"] = [=[Por favor, confirma la eliminación del objeto:
ID: |cff00ffff"%s"|r
|cff00ff00[%s]|r

|cffff9900Aviso: ¡Esta acción no puede revertirse!]=],
	["DB_RESULTS"] = "Buscar resultados",
	["DB_SECURITY_TT"] = "Muestra todos los parámetros de seguridad para este objeto. Desde aquí puedes permitir o prevenir ciertos efectos indeseados.",
	["DB_TO_EXPERT"] = "Convertir a modo experto",
	["DB_WARNING"] = [=[|cffff0000¡¡¡ Aviso !!!

|cffff9900¡No olvides guardar los cambios antes de volver a la lista de la base de datos!]=],
	["DEBUG_QUEST_START"] = "Iniciar misión",
	["DEBUG_QUEST_START_USAGE"] = "Uso: /trp3 debug_quest_start questID",
	["DEBUG_QUEST_STEP"] = "Ir al paso de la misión.",
	["DEBUG_QUEST_STEP_USAGE"] = "Uso: /trp3 debug_quest_step questID stepID",
	["DI_ATTR_TT"] = "Solo marca esta opción si quieres cambiar este atributo en relación al paso anterior de la escena.",
	["DI_ATTRIBUTE"] = "Cambiar atributos",
	["DI_BKG"] = "Imagen de fondo",
	["DI_BKG_TT"] = [=[Se usará como fondo para este paso de la escena. Por favor introduce la ruta completa de la textura.

Si cambias el fondo durante la escena habrá una transición entre los diferentes fondos.]=],
	["DI_CHOICE"] = "Opción",
	["DI_CHOICE_CONDI"] = "Condición de opción",
	["DI_CHOICE_STEP"] = "Ir al paso",
	["DI_CHOICE_STEP_TT"] = [=[Introduce el número del paso de la escena que quieres mostrar si el jugador selecciona esta opción.

|cff00ff00Si se deja vacío o con un valor inválido, seleccionar esta opción hará terminar la escena (y activar el evento "Al finalizar").]=],
	["DI_CHOICE_TT"] = [=[Introducir el texto para esta opción.

|cff00ff00Dejar en blanco para deshabilitar esta opción.]=],
	["DI_CHOICES"] = "Elecciones del jugador",
	["DI_CHOICES_TT"] = "Configurar las elecciones de jugador para este paso.",
	["DI_CONDI_TT"] = [=[Establece una condición para esta opción. Si la condición no se cumple cuando se muestren las opciones, la opción asociada a esta no será visible.

|cff00ff00Click: Configurar condición
Click-derecho: Eliminar condición]=],
	["DI_DIALOG"] = "Diálogo",
	["DI_DISTANCE"] = "Distancia máxima (metros)",
	["DI_DISTANCE_TT"] = [=[Define la distancia máxima (en yardas) en la que el jugador puede alejarse de la escena una vez comenzada. Pasado este límite se cerrará automáticamente (y activará el evento "Al cancelar").

|cff00ff00Cero implica que no hay límite.

|cffff9900No funciona en instancias/campos de batalla/arenas desde el parche 7.1.]=],
	["DI_END"] = "Paso final",
	["DI_END_TT"] = [=[Marca este paso como el último. Cuando se llegue a éste se finalizará la escena (y se activará el evento "Al terminar").

|cff00ff00Útil si has usado opciones de jugadores en esta escena.]=],
	["DI_FRAME"] = "Decoración",
	["DI_GET_ID"] = "ID del objetivo",
	["DI_GET_ID_TT"] = "Copia la ID del PNJ objetivo. Solo funciona si tu objetivo actual es un PNJ.",
	["DI_HISTORY"] = "Historial de escenas",
	["DI_HISTORY_TT"] = "Click para mostrar/ocultar el panel del historial, mostrando las líneas anteriores de la escena.",
	["DI_IMAGE"] = "Imagen",
	["DI_IMAGE_TT"] = [=[Muestra una imagen en el centro del marco de la escena. Esta imagen aparecerá lentamente.
Por favor, introduce la ruta completa de la textura.

Para ocultar la imagen más adelante simplemente no informes este atributo.]=],
	["DI_LEFT_UNIT"] = "Cambiar modelo de la izquierda",
	["DI_LINKS_ONEND"] = "Al finalizar la escena",
	["DI_LINKS_ONEND_TT"] = [=[Se activa cuando la escena actual finaliza.

|cff00ff00Esto puede ocurrir cuando se llega al último paso o permitiendo que el jugador elija una opción con un "ir al paso" sin informar o desconocido.

|cffff0000Esto NO se activará si el jugador cancela la escena manualmente cerrando el marco.]=],
	["DI_LINKS_ONSTART"] = "Al comenzar la escena",
	["DI_LINKS_ONSTART_TT"] = [=[Se activa cuando comienza la escena.

|cffff9900Ten en cuenta que este flujo de trabajo se activará ANTES de mostrar el primer paso de la escena.]=],
	["DI_LOOT"] = "Esperar a despojar objetos",
	["DI_LOOT_TT"] = "Si el flujo de trabajo seleccionado a la izquierda muestra una selección de objetos al jugador, puedes marcar este parámetro para prevenir que el jugador avance a la siguiente escena si éste no ha despojado todos los objetos.",
	["DI_MODELS"] = "Modelos",
	["DI_NAME"] = "Cambiar el nombre del portavoz",
	["DI_NAME_DIRECTION"] = "Dirección del diálogo",
	["DI_NAME_DIRECTION_TT"] = "Determina donde colocar la burbuja de diálogo y el nombre, y qué modelo animar. Selecciona \"Ninguno\" para ocultar completamente la burbuja de diálogo y el nombre.",
	["DI_NAME_TT"] = [=[El nombre del personaje hablando en este paso.

Solo es necesario si la dirección del diálogo seleccionada arriba es "Ninguno".]=],
	["DI_NEXT"] = "Índice del siguiente paso",
	["DI_NEXT_TT"] = [=[Puedes indicar qué paso será mostrado después de este.

|cff00ff00Dejarlo en blanco mostrará el siguiente paso en orden secuencial. Únicamente usa este campo si necesitas 'saltar' a otro paso. Útil cuando se usan "opciones".]=],
	["DI_RIGHT_UNIT"] = "Cambiar modelo de la derecha",
	["DI_STEP"] = "Paso de la escena",
	["DI_STEP_ADD"] = "Añadir paso",
	["DI_STEP_EDIT"] = "Editar paso",
	["DI_STEP_TEXT"] = "Texto del paso",
	["DI_STEPS"] = "Pasos de la escena",
	["DI_UNIT_TT"] = [=[Establece el modelo a mostrar:

- Dejar vacío para ocultar el modelo
- "player" para usar el modelo del jugador
- "target" para usar el modelo del objetivo
- Cualquier número para cargar un ID de PNJ]=],
	["DI_WAIT_LOOT"] = "Por favor, despoja todos los objetos",
	["DISCLAIMER"] = "{h1: c} Leer atentamente {/ h1} Crear elementos y misiones requiere tiempo y energía y siempre es terrible cuando pierde todo el trabajo duro que ha hecho. Todos los complementos en World of Warcraft pueden almacenar datos, pero existen limitaciones: • Existe un límite de tamaño de datos desconocido para los datos adicionales (dependiendo del hecho de que esté ejecutando un cliente de 32 o 64 bits, entre otras cosas). • Alcanzar este límite puede borrar todos los datos guardados del complemento. • Eliminar el proceso, forzar el cierre del cliente del juego (Alt + F4) o bloquearse puede dañar los datos guardados del complemento. • Incluso si sale del juego correctamente, siempre existe la posibilidad de que el juego no pueda guardar los datos adicionales y corromperlos. Con respecto a todo eso, recomendamos ENCARECIDAMENTE hacer una copia de seguridad regular de sus datos guardados de complementos. Puede encontrar aquí un tutorial sobre cómo encontrar todos los datos guardados: {link * https: //totalrp3.info/documentation/how_to/saved_variables* ¿Dónde se almacena mi información?} Puede encontrar aquí un tutorial sobre cómo sincronizar sus datos con un servicio en la nube : {link * https: //totalrp3.info/documentation/how_to/backup_and_sync_profiles* Cómo hacer una copia de seguridad y sincronizar la configuración de sus complementos usando un servicio en la nube} Por favor, comprenda que ya no responderemos a comentarios o tickets relacionados con borrados de datos. No es porque no queramos ayudar, sino porque no podemos hacer nada para restaurar los datos borrados. ¡Gracias y disfrute de Total RP 3 Extended! {p: r} El equipo TRP3 {/ p}",
	["DISCLAIMER_OK"] = "Por la presente firmo este contrato con mi sangre",
	["DO_EMPTY"] = "Documento vacío",
	["DO_LINKS_ONCLOSE"] = "Al cerrar",
	["DO_LINKS_ONCLOSE_TT"] = "Se activa cuando el documento se cierra por el jugador u otro evento (por ejemplo a través de un efecto del flujo de trabajo)",
	["DO_LINKS_ONOPEN"] = "Al abrir",
	["DO_LINKS_ONOPEN_TT"] = "Se activa cuando el documento se muestra al jugador.",
	["DO_NEW_DOC"] = "Documento",
	["DO_PAGE_ADD"] = "Añadir página",
	["DO_PAGE_BORDER"] = "Borde",
	["DO_PAGE_BORDER_1"] = "Pergamino",
	["DO_PAGE_COUNT"] = "Página %s / %s",
	["DO_PAGE_EDITOR"] = "Editor de página: página %s",
	["DO_PAGE_FIRST"] = "Primera página",
	["DO_PAGE_FONT"] = "%s fuente",
	["DO_PAGE_HEIGHT"] = "Altura de página",
	["DO_PAGE_HEIGHT_TT"] = "La altura de la página en píxeles. Por favor, ten en cuenta que algunos fondos sólo se verán bien a determinado ancho/alto y pueden deformarse.",
	["DO_PAGE_LAST"] = "Última página",
	["DO_PAGE_MANAGER"] = "Gestor de páginas",
	["DO_PAGE_NEXT"] = "Página siguiente",
	["DO_PAGE_PREVIOUS"] = "Página anterior",
	["DO_PAGE_REMOVE"] = "Eliminar página",
	["DO_PAGE_REMOVE_POPUP"] = "¿Eliminar la página %s ?",
	["DO_PAGE_RESIZE"] = "Redimensionable",
	["DO_PAGE_RESIZE_TT"] = [=[Permite al usuario cambiar el tamaño del marco.

|cffff9900Asegúrate que tu diseño pueda leerse y no dependa del alto/ancho.

|cff00ff00Ten en cuenta que el usuario no podrá reducir el tamaño del marco por debajo del ancho y alto por defecto.]=],
	["DO_PAGE_TILING"] = "Mosaico de fondo",
	["DO_PAGE_TILING_TT"] = "Determina si el fondo se repetirá vertical y horizontalmente. En caso contrario, la textura se expandirá hasta ocupar todo el marco.",
	["DO_PAGE_WIDTH"] = "Ancho de página",
	["DO_PAGE_WIDTH_TT"] = "El ancho de la página en píxeles. Por favor, ten en cuenta que algunos fondos sólo se verán bien a determinado ancho/alto y pueden deformarse.",
	["DO_PARAMS_CUSTOM"] = "Parámetros personalizados de página",
	["DO_PARAMS_GLOBAL"] = "Parámetros por defecto",
	["DO_PARAMS_GLOBAL_TT"] = "Cambia los parámetros por defecto del documento. Estos parámetros se usarán para todas las páginas que no usen parámetros de página propios.",
	["DO_PREVIEW"] = "Clic para vista previa",
	["DOC_UNKNOWN_ALERT"] = "No se puede abrir el documento. (Missing class)",
	["DR_DELETED"] = "Destruido: %s x%d",
	["DR_DROP_ERROR_INSTANCE"] = "No se pueden soltar objetos en una estancia",
	["DR_DROPED"] = "Soltado en el suelo: %s x%d",
	["DR_NOTHING"] = "No se hallaron objetos en este área.",
	["DR_POPUP"] = "Soltar aquí",
	["DR_POPUP_ASK"] = [=[Total RP 3

Selecciona qué quieres hacer con el objeto:
%s]=],
	["DR_POPUP_REMOVE"] = "Destruir",
	["DR_POPUP_REMOVE_TEXT"] = "¿Destruir este objeto?",
	["DR_RESULTS"] = "Objetos %s encontrados",
	["DR_SEARCH_BUTTON"] = "Buscar objetos | cff00ff00my | r",
	["DR_SEARCH_BUTTON_TT"] = "Buscar objetos en el área dentro de 15 yardas.",
	["DR_STASHED"] = "Esconder: %s x%d",
	["DR_STASHES"] = "Escondites",
	["DR_STASHES_CREATE"] = "Crear un escondite aquí",
	["DR_STASHES_CREATE_TT"] = "Crea un escondite donde estás parado.",
	["DR_STASHES_DROP"] = "No se puedes colocar un objeto en el escondite de otra persona.",
	["DR_STASHES_EDIT"] = "Editar escondite",
	["DR_STASHES_ERROR_INSTANCE"] = "No puedes crear un escondite en esta instancia",
	["DR_STASHES_ERROR_OUT_SYNC"] = "Escondite fuera de sincronización, por favor intentalo de nuevo",
	["DR_STASHES_ERROR_SYNC"] = "El escondite no está sincronizado",
	["DR_STASHES_FOUND"] = "Escondites encontrados: %s",
	["DR_STASHES_FULL"] = "Este escondite está lleno.",
	["DR_STASHES_HIDE"] = "Ocultar del escaneo",
	["DR_STASHES_HIDE_TT"] = "Este escondite no aparecerá en el escaneo de mapas de otros jugadores. Ten en cuenta que siempre podrán acceder si saben dónde está.",
	["DR_STASHES_MAX"] = "máx 50 caracteres",
	["DR_STASHES_NAME"] = "Escondite",
	["DR_STASHES_NOTHING"] = "No se han encontrado escondites en esta zona.",
	["DR_STASHES_OWNER"] = "Dueño",
	["DR_STASHES_OWNERSHIP"] = "Reclamar propiedad",
	["DR_STASHES_OWNERSHIP_PP"] = "Tomar posesión de este escondite? Este personaje se mostrará como propietario de este escondite cuando otros jugadores lo busquen.",
	["DR_STASHES_REMOVE"] = "Eliminar escondite",
	["DR_STASHES_REMOVE_PP"] = [=[¿Eliminar este escondite?
|cffff9900¡Todos los objetos que están dentro se perderán!]=],
	["DR_STASHES_REMOVED"] = "Escondite eliminado.",
	["DR_STASHES_RESYNC"] = "Resincronizar",
	["DR_STASHES_SCAN"] = "Rastrear escondites de los jugadores",
	["DR_STASHES_SCAN_MY"] = "Rastrear mis escondites",
	["DR_STASHES_SEARCH"] = "Buscar escondites de | cff00ff00players | r ",
	["DR_STASHES_SYNC"] = "Sincronizando...",
	["EDITOR_CONFIRM"] = "Confirmar",
	["EDITOR_HEIGHT"] = "Altura",
	["EDITOR_ICON"] = "Seleccionar icono",
	["EDITOR_ICON_SELECT"] = "Haz clic para seleccionar un icono.",
	["EDITOR_ID_COPY"] = "Copiar ID",
	["EDITOR_MAIN"] = "Principal",
	["EDITOR_MORE"] = "Más",
	["EDITOR_PREVIEW"] = "Previsualizar",
	["EDITOR_WARNINGS"] = [=[Hay %s avisos.

|cffff9900%s|r

¿Guardar de todos modos?]=],
	["EDITOR_WIDTH"] = "Ancho",
	["EFFECT_CAT_CAMERA"] = "Cámara",
	["EFFECT_CAT_CAMERA_LOAD"] = "Cargar cámara",
	["EFFECT_CAT_CAMERA_ZOOM_IN"] = "Acercar cámara",
	["EFFECT_CAT_CAMERA_ZOOM_OUT"] = "Alejar cámara",
	["EFFECT_CAT_CAMPAIGN"] = "Campaña y misión",
	["EFFECT_CAT_SOUND"] = "Sonido y música",
	["EFFECT_CAT_SPEECH"] = "Diálogos y emociones",
	["EFFECT_DIALOG_ID"] = "ID de escena",
	["EFFECT_DIALOG_START"] = "Iniciar escena",
	["EFFECT_DIALOG_START_PREVIEW"] = "Iniciar escena %s.",
	["EFFECT_DOC_CLOSE"] = "Cerrar documento",
	["EFFECT_DOC_CLOSE_TT"] = "Cierra el documento actualmente abierto. No hace nada si no hay ningún documento abierto.",
	["EFFECT_DOC_DISPLAY"] = "Mostrar documento",
	["EFFECT_DOC_DISPLAY_TT"] = "Muestra un documento al jugador. Si ya hay un documento abierto, este será reemplazado.",
	["EFFECT_DOC_ID"] = "ID del documento",
	["EFFECT_ITEM_ADD"] = "Añadir objeto",
	["EFFECT_ITEM_ADD_CRAFTED"] = "Creado",
	["EFFECT_ITEM_ADD_ID"] = "ID de objeto",
	["EFFECT_ITEM_ADD_PREVIEW"] = "Añadir %sx %s",
	["EFFECT_ITEM_ADD_QT"] = "Cantidad",
	["EFFECT_ITEM_ADD_TT"] = "Añade objetos a tu bolsa.",
	["EFFECT_ITEM_BAG_DURABILITY"] = "Dañar/reparar Contenedor",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD"] = "Tipo",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE"] = "Daño",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL"] = "Reparar",
	["EFFECT_ITEM_BAG_DURABILITY_VALUE"] = "Punto de durabilidad",
	["EFFECT_ITEM_CONSUME"] = "Consumir objeto",
	["EFFECT_ITEM_CONSUME_TT"] = "Consume el objeto usado y lo destruye.",
	["EFFECT_ITEM_COOLDOWN"] = "Iniciar cuenta atras",
	["EFFECT_ITEM_COOLDOWN_PREVIEW"] = "Duración: %s segundo(s)",
	["EFFECT_ITEM_COOLDOWN_TT"] = "Iniciar cuenta atrás para este objeto",
	["EFFECT_ITEM_DICE"] = "Tirar dados",
	["EFFECT_ITEM_DICE_PREVIEW"] = "Tirando dado/s %",
	["EFFECT_ITEM_DICE_ROLL"] = "Lanzar dados",
	["EFFECT_ITEM_DICE_ROLL_VAR"] = "Nombre de la variable (opcional)",
	["EFFECT_ITEM_REMOVE"] = "Destruir objeto",
	["EFFECT_ITEM_REMOVE_PREVIEW"] = "Destruye %sx %s",
	["EFFECT_ITEM_REMOVE_TT"] = "Destruye objetos de tu inventario.",
	["EFFECT_ITEM_SOURCE"] = "Buscar en",
	["EFFECT_ITEM_SOURCE_1"] = "Todo el inventario",
	["EFFECT_ITEM_SOURCE_3"] = "Este objeto",
	["EFFECT_OPERATION"] = "Operación",
	["EFFECT_OPERATION_TYPE"] = "Tipo de operación",
	["EFFECT_OPERATION_TYPE_ADD"] = "Sumar",
	["EFFECT_OPERATION_TYPE_DIV"] = "Dividir",
	["EFFECT_OPERATION_TYPE_MULTIPLY"] = "Multiplicar",
	["EFFECT_OPERATION_TYPE_SUB"] = "Restar",
	["EFFECT_OPERATION_VALUE"] = "Valor de la operación",
	["EFFECT_PROMPT_DEFAULT"] = "Valor por defecto",
	["EFFECT_QUEST_GOTOSTEP_PREVIEW"] = "Ir al paso %s.",
	["EFFECT_QUEST_OBJ_ID"] = "ID del objetivo",
	["EFFECT_QUEST_REVEAL_OBJ_DONE"] = "Completar objetivo",
	["EFFECT_QUEST_START_ID"] = "ID de misión",
	["EFFECT_RANDSUM"] = "Invocar mascota de batalla aleatoria",
	["EFFECT_SCRIPT_I_EFFECT"] = "Insertar efecto",
	["EFFECT_SCRIPT_SCRIPT"] = "Código Lua",
	["EFFECT_SECURE_MACRO_ACTION_NAME"] = "Ejecutar macro",
	["EFFECT_SECURE_MACRO_BLOCKED"] = "Efecto de macro bloqueado:",
	["EFFECT_SECURE_MACRO_HELP_TITLE"] = "Comandos de macro",
	["EFFECT_SIGNAL"] = "Enviar señal",
	["EFFECT_SIGNAL_ID"] = "ID de señal",
	["EFFECT_SIGNAL_VALUE"] = "Valor de la señal",
	["EFFECT_SOUND_ID_LOCAL"] = "Reproducir sonido local",
	["EFFECT_SOUND_ID_SELF_CHANNEL"] = "Canal",
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX"] = "SFX",
	["EFFECT_SOUND_ID_SELF_ID"] = "ID del sonido",
	["EFFECT_SOUND_MUSIC_LOCAL"] = "Reproducir música local",
	["EFFECT_SOUND_MUSIC_SELF"] = "Reproducir música",
	["EFFECT_SOUND_MUSIC_SELF_PREVIEW"] = "Reproducir música: %s",
	["EFFECT_SOUND_MUSIC_STOP"] = "Detener música",
	["EFFECT_SOUND_PLAY"] = "Reproducir",
	["EFFECT_SOURCE"] = "Fuente",
	["EFFECT_SOURCE_CAMPAIGN"] = "Activar campaña",
	["EFFECT_SOURCE_OBJECT"] = "Objeto",
	["EFFECT_SPEECH_NPC"] = "Diálogo: PNJ",
	["EFFECT_SPEECH_NPC_DEFAULT"] = "¿Quieres hacer un muñeco de nieve?",
	["EFFECT_SPEECH_NPC_NAME"] = "Nombre del PNJ",
	["EFFECT_SPEECH_NPC_NAME_TT"] = "El nombre del PNJ.",
	["EFFECT_SPEECH_PLAYER"] = "Diálogo: Jugador",
	["EFFECT_SPEECH_PLAYER_DEFAULT"] = "¡Deja que el fuego te consuma!",
	["EFFECT_SPEECH_PLAYER_TT"] = "Hace que el jugador hable, grite o haga un /e emote.",
	["EFFECT_SPEECH_TYPE"] = "Tipo de diálogo",
	["EFFECT_SUMMOUNT"] = "Invocar montura",
	["EFFECT_SUMMOUNT_ACTION_TT"] = "Seleccionar una montura específica",
	["EFFECT_SUMMOUNT_NOMOUNT"] = "No hay montura seleccionada todavía.",
	["EFFECT_SUMMOUNT_TT"] = "Invoca una montura específica si está disponible.",
	["EFFECT_TEXT"] = "Mostrar texto",
	["EFFECT_TEXT_PREVIEW"] = "Texto mostrado",
	["EFFECT_TEXT_TEXT"] = "Texto",
	["EFFECT_TEXT_TEXT_DEFAULT"] = "Tu texto",
	["EFFECT_TEXT_TEXT_TT"] = "Texto para mostrar.",
	["EFFECT_TEXT_TYPE"] = "Tipo de texto",
	["EFFECT_TEXT_TYPE_3"] = "Texto de alerta de banda",
	["EFFECT_TEXT_TYPE_4"] = "Mensaje de alerta",
	["EFFECT_VAR_OPERAND_CONFIG"] = "Configuración del valor",
	["EFFECT_VAR_OPERAND_CONFIG_NO"] = "No hay configuración para este valor",
	["EX_SOUND_HISTORY"] = "Historial de sonido",
	["EX_SOUND_HISTORY_CLEAR"] = "Limpiar",
	["EX_SOUND_HISTORY_EMPTY"] = "No se ha reproducido ningún sonido.",
	["EX_SOUND_HISTORY_REPLAY"] = "Reproducir de nuevo",
	["EX_SOUND_HISTORY_STOP"] = "Detener",
	["EX_SOUND_HISTORY_STOP_ALL"] = "Detener todo",
	["IN_INNER"] = "Objetos internos",
	["IN_INNER_ADD"] = "Añadir objeto interno",
	["IN_INNER_ADD_COPY"] = "Añadir copia de objeto existente",
	["IN_INNER_ADD_NEW"] = "Crear nuevo objeto",
	["IN_INNER_COPY_ACTION"] = "Copiar contenido del objeto",
	["IN_INNER_DELETE_TT"] = "Eliminar este objeto interno del objeto principal.",
	["IN_INNER_EMPTY"] = [=[No hay objetos internos

Puedes añadir uno usando el botón de añadir que hay más abajo.]=],
	["IN_INNER_ENTER_ID"] = "Introduce la ID del nuevo objeto interno",
	["IN_INNER_HELP"] = [=[Los objetos internos son objetos almacenados en un objeto principal.
Empecemos con algunos ejemplos:
|cffff9900
- Quieres crear un objeto que sea un rifle con objetos que hagan de balas para cargarlo. El rifle sería el objeto principal, mientras que las balas serían los objetos internos para el rifle.
- Un objeto de correo que abra un documento. El documento sería el objeto interno y el correo el principal.
- Creando misiones: cualquier objeto/documento/excena que uses en una misión podrían ser objetos internos de la misión.
|rLas ventajas de usar objetos internos son múltiples:
|cff00ff00
- La información de los objetos internos se almacena dentro de la información del objeto principal. Eso significa que comparten el mismo número de versión y que su información se intercambia a la vez que la información del objeto principal.
- Puedes determinar libremente la ID del objeto interno dado que usará la ID del objeto principal como prefijo, ya que no puedes tener dos objetos internos con la misma ID dentro del mismo objeto principal.
- Usar un objeto interno mejora el rendimiento.
- Es más fácil administrar y navegar a través de objetos si están guardados en objetos principales. Puedes ver un objeto principal como si fuera una carpeta en la que guardaras archivos.
|rAsí que es fácil: cuando quieras crear un objeto, pregúntate si no sería mejor tenerlo como objeto interno para otro objeto o misión.
|cff00ff00Además: ¡los documentos y las escenas solo pueden ser objetos internos!]=],
	["IN_INNER_HELP_TITLE"] = "¿Qué son los objetos internos?",
	["IN_INNER_ID"] = [=[Por favor, introduce una nueva ID para el objeto interno |cff00ff00[%s]|r.

ID anterior: |cff00ffff"%s"|r]=],
	["IN_INNER_ID_ACTION"] = "Cambiar ID",
	["IN_INNER_ID_COPY"] = "Copiar",
	["IN_INNER_ID_COPY_TT"] = "Puedes copiar tu objeto interno y pegarlo en otro objeto principal.",
	["IN_INNER_LIST"] = "Lista de objetos internos",
	["IN_INNER_NO_AVAILABLE"] = "¡Esta ID interna no está disponible!",
	["IN_INNER_PASTE_ACTION"] = "Pegar el contenido del objeto",
	["IN_INNER_PASTE_CONFIRM"] = "¿Reemplazar el contenido de este objeto interno con el copiado anteriormente?",
	["IN_INNER_S"] = "Objeto interno",
	["INV_PAGE_CAMERA_CONFIG"] = [=[Parámetros de cámara:
  Rotación: %.2f]=],
	["INV_PAGE_CHARACTER_INSPECTION"] = "Inspección de personaje",
	["INV_PAGE_CHARACTER_INSPECTION_TT"] = "Inspeccionar el inventario del personaje.",
	["INV_PAGE_CHARACTER_INV"] = "Inventario",
	["INV_PAGE_EDIT_ERROR1"] = "Debes ser el autor de este objeto para editarlo.",
	["INV_PAGE_INV_OPEN"] = "Abrir inventario",
	["INV_PAGE_LOOT_ALL"] = "Despojar todo",
	["INV_PAGE_MARKER"] = [=[Marcar posición:
   x: %.2f
   y: %.2f]=],
	["INV_PAGE_PLAYER_INV"] = "Inventario de %s",
	["INV_PAGE_QUICK_SLOT_TT"] = "Este espacio se usará como contenedor primario.",
	["INV_PAGE_SEQUENCE"] = "ID de secuencia",
	["INV_PAGE_TOTAL_VALUE"] = "Valor total de los objetos",
	["INV_PAGE_TOTAL_VALUE_TT"] = [=[Este es el valor de tu inventario.

No es la cantidad de "monedas", sino el valor total estimado de todos los objetos en tu inventario.]=],
	["INV_PAGE_WAIT"] = "Esperando respuesta",
	["INV_PAGE_WEAR_ACTION_RESET"] = "Reiniciar configuración",
	["INV_PAGE_WEAR_TT"] = [=[Puedes ponerte este objeto.
La zona verde indica el lugar del objeto en el personaje.]=],
	["IT_CO_DURABILITY"] = "Durabilidad",
	["IT_CO_DURABILITY_TT"] = [=[Determina la vida máxima de tu contenedor. Un contenedor puede perder vida con el tiempo o ser dañado, pero también puede ser reparado con los objetos adecuados.

|cff00ff00Cero significa invulnerable.]=],
	["IT_CO_MAX"] = "Peso máximo (en gramos)",
	["IT_CO_SIZE"] = "Tamaño del contenedor",
	["IT_CO_SIZE_COLROW"] = "%s | 1fila;filas; por %s columnas",
	["IT_CON"] = "Contenedor",
	["IT_CON_CAN_INNER"] = "¡No puedes colocar un contenedor dentro de sí mismo!",
	["IT_CON_ERROR_TRADE"] = "No puedes soltar este contenedor si no está vacío.",
	["IT_CON_ERROR_TYPE"] = "Este contenedor no puede guardar ese tipo de objeto.",
	["IT_CON_OPEN"] = "Abrir/Cerrar contenedor",
	["IT_CON_TT"] = "Contenedor (%d/%d huecos usados)",
	["IT_CONTAINER_TT"] = [=[Fija este objeto como contenedor. Los contenedores pueden guardar otros objetos.

|cff00ff00El contendor puede ser configurado en la pestaña 'Contenedor' de este editor.]=],
	["IT_CONVERT_TO_NORMAL"] = "Pasar al modo normal",
	["IT_CRAFTED"] = "Creado",
	["IT_DISPLAY_ATT"] = "Mostrar atributos",
	["IT_DOC_ACTION"] = "Leer documento",
	["IT_DR_SOUND"] = "Sonido al soltarlo",
	["IT_EX_DOWNLOAD"] = "Descargar",
	["IT_EX_DOWNLOADING"] = "Descargando: %0.1f %%",
	["IT_EX_EMPTY"] = "Nada que intercambiar",
	["IT_EX_EMPTY_DRAG"] = "Puedes arrastrar y soltar objetos aquí.",
	["IT_EX_TRADE_BUTTON"] = "Abrir intercambio",
	["IT_EX_TRADE_BUTTON_TT"] = "Abre la ventana de intercambio para iniciar el comercio de objetos con este jugador.",
	["IT_FIELD_NAME"] = "Nombre del objeto",
	["IT_FIELD_QUALITY"] = "Calidad de objeto",
	["IT_INV_ERROR_CANT_HERE"] = "No puedes poner objetos aquí.",
	["IT_INV_ERROR_FULL"] = "%s está lleno.",
	["IT_INV_ERROR_MAX"] = "No puedes llevar más %s.",
	["IT_INV_GOT"] = "Recibido: %s x%d",
	["IT_INV_SCAN_MY_ITEMS"] = "Rastrear mis objetos",
	["IT_NEW_NAME"] = "Nuevo objeto",
	["IT_NEW_NAME_CO"] = "Nuevo contenedor",
	["IT_ON_USE"] = "En uso",
	["IT_PU_SOUND"] = "Sonido al cogerlo",
	["IT_PU_SOUND_1183"] = "Bolsa",
	["IT_PU_SOUND_1184"] = "Libro",
	["IT_PU_SOUND_1185"] = "Tela",
	["IT_PU_SOUND_1186"] = "Comida",
	["IT_PU_SOUND_1187"] = "Hierba",
	["IT_PU_SOUND_1188"] = "Cadena",
	["IT_PU_SOUND_1189"] = "Carne",
	["IT_PU_SOUND_1190"] = "Metal grande",
	["IT_PU_SOUND_1191"] = "Metal pequeño",
	["IT_PU_SOUND_1192"] = "Papel",
	["IT_PU_SOUND_1193"] = "Anillo",
	["IT_PU_SOUND_1194"] = "Roca",
	["IT_PU_SOUND_1195"] = "Cadena pequeña",
	["IT_PU_SOUND_1196"] = "Varita",
	["IT_PU_SOUND_1197"] = "Líquido",
	["IT_PU_SOUND_1198"] = "Palo pequeño",
	["IT_PU_SOUND_1199"] = "Palo grande",
	["IT_PU_SOUND_1221"] = "Gemas",
	["IT_SOULBOUND_TT"] = "Este objeto se ligará al jugador cuando se coloque en su inventario y no podrá ser intercambiado o dejado en el suelo.",
	["IT_STACK"] = "Apilable",
	["IT_TRIGGER_ON_USE"] = "En uso",
	["IT_TT_VALUE"] = "Valor del objeto",
	["IT_TT_VALUE_FORMAT"] = "Valor del objeto (en %s)",
	["IT_TT_WEIGHT"] = "Peso del objeto",
	["IT_TT_WEIGHT_FORMAT"] = "Peso del objeto (en gramos)",
	["IT_UNIQUE_COUNT"] = "Unidades máximas",
	["IT_UNIQUE_COUNT_TT"] = "Fija el máximo de unidades que un personaje puede poseer. Debe ser mayor que 0.",
	["IT_USE"] = "Usable",
	["IT_WEARABLE"] = "Usable",
	["ITEM_ID"] = "ID del objeto",
	["MODE_EXPERT"] = "Experto",
	["MODE_NORMAL"] = "Normal",
	["MODE_QUICK"] = "Rápido",
	["NEW_EXTENDED_VERSION"] = "|cffff9900Hay disponible una nueva versión de TRP3:Extended (%s). |cff00ff00¡Revísalo en Curse!",
	["NPC_EMOTES"] = "emotea",
	["NPC_SAYS"] = "dice",
	["NPC_WHISPERS"] = "susurra",
	["NPC_YELLS"] = "grita",
	["OP_COMP_EQUALS"] = "es igual a",
	["OP_COMP_GREATER"] = "es mayor a",
	["OP_COMP_GREATER_OR_EQUALS"] = "es mayor o igual a",
	["OP_COMP_LESSER"] = "es menor a",
	["OP_COMP_LESSER_OR_EQUALS"] = "es menor o igual a",
	["OP_COMP_NEQUALS"] = "no es igual a",
	["OP_CONFIGURE"] = "Configurar",
	["OP_CURRENT"] = "Valor actual",
	["OP_DIRECT_VALUE"] = "Valor directo",
	["OP_EVAL_VALUE"] = "Valor evaluado",
	["OP_NUMERIC"] = "Valor numérico",
	["OP_OP_CHAR_ACHIEVEMENT"] = "Logro",
	["OP_OP_CHAR_ACHIEVEMENT_ACC"] = "Cuenta",
	["OP_OP_CHAR_ACHIEVEMENT_ACC_TT"] = "Revisa si el personaje de esta cuenta ha completado el logro",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR"] = "Personaje",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR_TT"] = "Revisa si el personaje actual ha completado el logro",
	["OP_OP_CHAR_ACHIEVEMENT_ID"] = "ID de logro",
	["OP_OP_CHAR_ACHIEVEMENT_ID_TT"] = "La ID numérica del logro que quieres revisar.",
	["OP_OP_CHAR_ACHIEVEMENT_PREVIEW"] = "%s completado por |cffff9900%s",
	["OP_OP_CHAR_ACHIEVEMENT_TT"] = "Revisa si la cuenta ha completado el logro especificado.",
	["OP_OP_CHAR_ACHIEVEMENT_WHO"] = "Completado por",
	["OP_OP_CHAR_CAM_DISTANCE"] = "Distancia de cámara",
	["OP_OP_CHAR_CAM_DISTANCE_TT"] = "La distancia de cámara del jugador. 0 si la vista es en primera persona.",
	["OP_OP_CHAR_FLYING"] = "El personaje está volando.",
	["OP_OP_CHAR_FLYING_TT"] = "Revisa si el personaje está volando.",
	["OP_OP_CHAR_MINIMAP"] = "Texto del minimapa",
	["OP_OP_CHAR_MOUNTED"] = "El personaje está montado",
	["OP_OP_CHAR_MOUNTED_TT"] = "Revisa si el personaje está montado.",
	["OP_OP_CHAR_RESTING"] = "El personaje está descansando",
	["OP_OP_CHAR_RESTING_TT"] = "Revisa si el personaje está descansando. Estás descansando si estás en una posada o en una capital como Forjaz u Orgrimmar.",
	["OP_OP_CHAR_STEALTH"] = "El personaje está en sigilo",
	["OP_OP_CHAR_STEALTH_TT"] = "Revisa si el personaje está en sigilo.",
	["OP_OP_CHAR_SUBZONE"] = "Nombre de la sub-zona",
	["OP_OP_CHAR_SUBZONE_TT"] = [=[El nombre de la sub-zona donde se encuentra actualmente el personaje.

|cffff9900Aviso: El texto depende de la localización del cliente.]=],
	["OP_OP_CHAR_SWIMMING"] = "El personaje está nadando",
	["OP_OP_CHAR_SWIMMING_TT"] = "Revisa si el personaje está nadando. No necesitan estar bajo el agua.",
	["OP_OP_CHAR_ZONE"] = "Nombre de la zona",
	["OP_OP_CHAR_ZONE_TT"] = [=[El nombre de la zona donde se encuentra actualmente el personaje.

|cffff9900Aviso: El texto depende de la localización del cliente.]=],
	["OP_OP_CHECK_VAR_N"] = "Valor numérico variable",
	["OP_OP_CHECK_VAR_N_PREVIEW"] = "|cff00ffff%s: |cffff9900(n)|r %s",
	["OP_OP_CHECK_VAR_PREVIEW"] = "|cff00ffff%s:|r %s",
	["OP_OP_DISTANCE_CURRENT"] = "Usar posición actual",
	["OP_OP_DISTANCE_X"] = "Coordenada X",
	["OP_OP_DISTANCE_Y"] = "Coordenada Y",
	["OP_OP_INV_COUNT_ANY"] = "Cualquier objeto",
	["OP_OP_INV_WEIGHT"] = "Peso total del contenedor",
	["OP_OP_INV_WEIGHT_TT"] = "|cff00ff00El peso actual del contenedor (su propio peso además del contenido).",
	["OP_OP_QUEST_NPC"] = "La unidad es un PNJ de campaña",
	["OP_OP_QUEST_OBJ"] = "Objetivo de misión",
	["OP_OP_QUEST_OBJ_CURRENT"] = "Objetivos actuales de misión",
	["OP_OP_QUEST_OBJ_PREVIEW"] = "Objetivo %s de %s",
	["OP_OP_QUEST_STEP"] = "Paso actual de la misión",
	["OP_OP_QUEST_STEP_PREVIEW"] = "%s paso actual",
	["OP_OP_RANDOM"] = "Aleatorio",
	["OP_OP_RANDOM_FROM"] = "De",
	["OP_OP_RANDOM_TO"] = "Para",
	["OP_OP_TIME_HOUR"] = "Tiempo: Hora",
	["OP_OP_TIME_HOUR_TT"] = "La hora actual del día, hora del servidor.",
	["OP_OP_TIME_MINUTE"] = "Tiempo: Minuto",
	["OP_OP_TIME_MINUTE_TT"] = "El minuto actual de la hora, hora del servidor.",
	["OP_OP_UNIT_CLASS"] = "Clase de la unidad",
	["OP_OP_UNIT_CLASSIFICATION"] = "Clasificación de la unidad",
	["OP_OP_UNIT_DEAD"] = "La unidad está muerta",
	["OP_OP_UNIT_DISTANCE_INSPECT"] = "La unidad está cerca (inspeccionar)",
	["OP_OP_UNIT_DISTANCE_TRADE"] = "La unidad está cerca (comerciar)",
	["OP_OP_UNIT_EXISTS"] = "La unidad existe",
	["OP_OP_UNIT_FACTION"] = "Facción de la unidad",
	["OP_OP_UNIT_GUILD"] = "Nombre de hermandad de la unidad",
	["OP_OP_UNIT_GUILD_RANK"] = "Rango de hermandad de la unidad",
	["OP_OP_UNIT_GUILD_RANK_TT"] = "|cff00ff00El rango de hermandad de la unidad (de pertenecer a una hermandad).",
	["OP_OP_UNIT_GUILD_TT"] = "|cff00ff00El nombre de hermandad de la unidad (si tuviera).",
	["OP_OP_UNIT_HEALTH"] = "Salud de la unidad",
	["OP_OP_UNIT_ID"] = "ID de la unidad",
	["OP_OP_UNIT_ISPLAYER"] = "La unidad es un jugador",
	["OP_OP_UNIT_LEVEL"] = "Nivel de la unidad",
	["OP_OP_UNIT_LEVEL_TT"] = "|cff00ff00Nivel de la unidad.",
	["OP_OP_UNIT_NAME"] = "Nombre de la unidad",
	["OP_OP_UNIT_POSITION_X"] = "Posición x de la unidad",
	["OP_OP_UNIT_POSITION_X_TT"] = [=[Devuelve la coordenada X de una unidad.

Solo funciona con juagdores.

|cffff9900No funciona en mazmorras/campos de batalla/arenas desde el parche 7.1.]=],
	["OP_OP_UNIT_POSITION_Y"] = "Posición y de la unidad",
	["OP_OP_UNIT_POSITION_Y_TT"] = [=[Devuelve la coordenada Y de una unidad.

Solo funciona con juagdores.

|cffff9900No funciona en mazmorras/campos de batalla/arenas desde el parche 7.1.]=],
	["OP_OP_UNIT_RACE"] = "Raza de la unidad",
	["OP_OP_UNIT_SPEED"] = "Velocidad de la unidad",
	["OP_PREVIEW"] = "Previsualizar valor",
	["OP_UNIT"] = "Tipo de unidad",
	["OP_UNIT_NPC"] = "PNJ",
	["OP_UNIT_PLAYER"] = "Jugador",
	["OP_UNIT_TARGET"] = "Objetivo",
	["QE_ACTION"] = "Acción de misión",
	["QE_ACTION_NO_CURRENT"] = "No tienes ninguna campaña activa. Deberías activar una antes de intentar realizar una acción.",
	["QE_ACTIONS_TYPE_INTERRACT"] = "Interactuar",
	["QE_ACTIONS_TYPE_LISTEN"] = "Escuchar",
	["QE_ACTIONS_TYPE_LOOK"] = "Inspeccionar",
	["QE_ACTIONS_TYPE_TALK"] = "Hablar",
	["QE_BUTTON"] = "Abrir historial de misiones",
	["QE_CAMPAIGN"] = "Campaña",
	["QE_CAMPAIGN_CURRENT"] = "Campaña actual",
	["QE_CAMPAIGN_CURRENT_NO"] = "Sin campañas activas.",
	["QE_CAMPAIGN_EMPTY"] = "Esta campaña no tiene misiones.",
	["QE_CAMPAIGN_LIST"] = "%s campañas disponibles",
	["QE_CAMPAIGN_PAUSE"] = "Pausar campaña actual.",
	["QE_CAMPAIGN_RESET"] = "Reiniciar campaña",
	["QE_CAMPAIGN_START"] = "Iniciando campaña |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_UNSTARTED"] = [=[Aún no has iniciado esta campaña.
Haz clic en el botón superior derecho "Iniciar" para iniciarla.]=],
	["QE_CAMPAIGNS"] = "Campañas",
	["QE_COMPLETED"] = "Completado",
	["QE_DESCRIPTION"] = "Resumen de la misión",
	["QE_DESCRIPTION_TT"] = "Este breve resumen será visible en la página de la misión, en el historial de misiones.",
	["QE_LINKS_ON_START"] = "Al inicio de la misión",
	["QE_MACRO"] = "Crear macro",
	["QE_MACRO_MAX"] = "No puedes tener más macros. Libera un hueco de macro antes de intentarlo de nuevo, por favor.",
	["QE_MACRO_TT"] = "Crea una macro para este tipo de acción y la pone en tu ratón para que la coloques en cualquier barra de acción.",
	["QE_NAME"] = "Nombre de misión",
	["QE_NAME_NEW"] = "Nueva misión",
	["QE_NAME_TT"] = "El nombre de tu misión, tal y como aparecerá en el historial de misiones.",
	["QE_NEW"] = "Nueva misión revelada",
	["QE_NOACTION_ACTION"] = "No hay nada para hacer.",
	["QE_NOACTION_LISTEN"] = "No oyes nada especial.",
	["QE_NOACTION_LOOK"] = "No ves nada especial.",
	["QE_NOACTION_TALK"] = "No hay nada que decir.",
	["QE_NPC"] = "PNJ de campaña",
	["QE_OBJ"] = "Objetivos de misión",
	["QE_OBJ_ADD"] = "Añadir objetivo",
	["QE_OBJ_AUTO_TT"] = "Automáticamente revela este objetivo cuando se desbloquea la misión en el historial de misiones.",
	["QE_OBJ_ID"] = "ID de objetivo",
	["QE_OBJ_ID_TT"] = "Esta es la ID de tu objetivo. No puedes tener dos objetivos con la misma ID en la misma misión.",
	["QE_OBJ_NO"] = "Sin objetivo de misión",
	["QE_OBJ_REMOVE"] = "¿Eliminar este objetivo de misión?",
	["QE_OBJ_SINGULAR"] = "Objetivo de misión",
	["QE_PROGRESS"] = "Progresión",
	["QE_QUEST"] = "Misión",
	["QE_QUEST_LIST"] = "Misiones para esta campaña",
	["QE_QUEST_OBJ_AND_HIST"] = "Objetivos e historial",
	["QE_QUEST_OBJ_FINISHED"] = "|cffffff00Objetivo completado: |cff00ff00%s",
	["QE_QUEST_OBJ_REVEALED"] = "|cffffff00Nuevo objetivo: |cff00ff00%s",
	["QE_QUEST_OBJ_UPDATED"] = "|cffffff00Objetivo actualizado: |cff00ff00%s",
	["QE_QUEST_START"] = "Iniciando misión |cff00ff00[%s]|r.",
	["QE_QUEST_TT_STEP"] = [=[|cffffff00Actualmente:|r
"%s"]=],
	["QE_QUESTS"] = "Misiones",
	["QE_RESET_CONFIRM"] = [=[¿Quieres reiniciar esta campaña?

Perderás el progreso de TODAS las misiones de esta campaña.

Recuerda que guardarás los objetos que hayas ganado durante esta campaña.]=],
	["QE_ST_AUTO_REVEAL"] = "Paso inicial",
	["QE_ST_AUTO_REVEAL_TT"] = "Marca este paso como el paso inicial cuando se desbloquea la misión en el historial de misiones.",
	["QE_ST_END"] = "Paso final",
	["QE_ST_END_TT"] = "Marcar este paso como el paso final de esta misión. Cuando se alcanza este paso, la misión se marcará automáticamente como completada en el historial de misiones.",
	["QE_STEP"] = "Pasos de misión",
	["QE_STEP_ADD"] = "Añadir paso de misión",
	["QE_STEP_EXIST"] = "Ya hay un paso con la ID %s.",
	["QE_STEP_LIST"] = "Pasos para esta misión",
	["QE_STEP_LIST_CURRENT"] = "Misiones disponibles",
	["QE_STEP_LIST_FINISHED"] = "Misiones completadas",
	["QE_STEP_NAME_NEW"] = "Nuevo paso de misión",
	["QE_STEP_NO"] = "Sin paso de misión",
	["QE_STEP_REMOVE"] = "¿Eliminar este paso?",
	["QUEST_ID"] = "ID de misión",
	["ROOT_CREATED"] = "Creado por %s en %s",
	["ROOT_CREATED_BY"] = "Creado por",
	["ROOT_CREATED_ON"] = "Creado el",
	["ROOT_GEN_ID"] = "ID generada",
	["ROOT_ID"] = "ID del objeto",
	["ROOT_SAVED"] = "Última edición por %s el %s",
	["ROOT_VERSION"] = "Versión",
	["SEC_EFFECT_BLOCKED"] = "Efecto(s) bloqueado(s)",
	["SEC_HIGH"] = "Alto",
	["SEC_LEVEL"] = "Nivel de seguridad",
	["SEC_LEVEL_DETAILS"] = "Detalles de seguridad",
	["SEC_LEVEL_DETAILS_ACCEPTED"] = "Aceptado",
	["SEC_LEVEL_DETAILS_ALL"] = "Cambiar seguridad para todos los objetos",
	["SEC_LEVEL_DETAILS_ALL_TT"] = "Aceptar la ejecución de este efecto para todos los objetos, ahora y en el futuro.",
	["SEC_LEVEL_DETAILS_BLOCKED"] = "Bloqueado",
	["SEC_LEVEL_DETAILS_FROM"] = "Aceptar siempre al recibir de %s.",
	["SEC_LEVEL_DETAILS_THIS"] = "Cambiar seguridad para estos objetos",
	["SEC_LEVEL_DETAILS_THIS_TT"] = "Aceptar la ejecución de este efecto sólo para este objeto.",
	["SEC_LOW"] = "Bajo",
	["SEC_MEDIUM"] = "Medio",
	["SEC_REASON_DISMOUNT"] = "Desmontar",
	["SEC_REASON_DISMOUNT_WHY"] = [=[Este objeto podría obligarte a desmontar.

|cffff9900Puede que no quieras eso... ¡sobre todo si vas en montura voladora!]=],
	["SEC_REASON_MACRO"] = "Ejecutar una macro",
	["SEC_REASON_SOUND"] = "Reproducir un sonido",
	["SEC_REASON_SOUND_WHY"] = [=[Este objeto podría hacer sonar un sonido o música que se oirá por los usuarios de TRP3:E cerca de ti.


|cffff9900Puede que el sonido sea indeseable si es particularmente molesto o repetitivo. Si ese es el caso, podrían bloquearte.

|cff00ff00Si te bloquean, solo tú oirás el sonido o la música.]=],
	["SEC_RESOLUTION_ALL"] = "Para todos los objetos",
	["SEC_RESOLUTION_AUTHOR"] = "Eres el autor",
	["SEC_RESOLUTION_THIS_OBJECT"] = "Solo para este objeto",
	["SEC_TT_COMBO"] = "Alt + Clic derecho:|cffff9900 Configurar seguridad.",
	["SEC_TT_COMBO_2"] = "Configurar seguridad",
	["SET_TT_DETAILS_1"] = "Mantén pulsado Alt para mostrar más",
	["SET_TT_DETAILS_2"] = "%s aviso(s)",
	["SET_TT_OLD"] = [=[Este objeto ha sido creado con una versión antigua de Extended (v %s).
Puede que haya incompatibilidades.]=],
	["SET_TT_SECURED_2_1"] = "Ver más detalles.",
	["SPECIFIC"] = "Objeto específico",
	["SPECIFIC_MODE"] = "Modo",
	["TB_TOOLS_TT"] = "Crea tus propios items y misiones.",
	["TU_AC_2"] = "Evaluación de acciones",
	["TU_CS_4"] = "Escenas y flujos de trabajo",
	["TU_CS_5"] = "Previsualizar",
	["TU_DB_1_TEXT"] = [=[|cff00ff00Bienvenido al tutorial de la base de datos.|r

Esta es la base de datos, donde se almacenan todos los objetos.

Un objeto contiene toda la información de un item, documento, campaña/misión/paso o escena.]=],
	["TU_DB_2"] = "Tipos de base de datos",
	["TU_DB_6"] = "Crear objeto",
	["TU_DB_7"] = "Línea de objeto",
	["TU_DB_7_TEXT"] = "Cada línea representa un objeto. Puedes hacer clic para editarlo o clic derecho para realizar varias acciones.",
	["TU_EL_4_TEXT"] = "Los |cff00ff00eventos de juego|r solo están disponibles para campañas, misiones y pasos de misiones.",
	["TU_IT_1_TEXT"] = [=[|cff00ff00Bienvenido al tutorial de creación de objetos.|r

Un objeto es aquel que puedes almacenar en el inventario de tu personaje (o dejarlo en el suelo).

Aquí, en la ventana principal, puedes definir todos los atributos básicos para tu objeto.]=],
	["TU_IT_2"] = "Mostrar atributos",
	["TU_IT_3_TEXT"] = [=[Puedes escribir notas que te ayuden a recordar qué quieres hacer con el objeto.

Estas notas pueden ayudar también a otros que quieran crear un objeto basado en el tuyo.]=],
	["TU_IT_4"] = "Atributos de juego",
	["TU_TITLE"] = "Tutorial",
	["TU_WO_4"] = "Añadir un efecto",
	["TU_WO_4_TEXT"] = [=[Efectos como "reproducir un sonido", "mostrar un texto" o "iniciar una escena".

Hay MUCHOS efectos, ¡todos explicados en su propia herramienta!]=],
	["TU_WO_5"] = "Añadir una condición",
	["TU_WO_6"] = "Añadir retraso",
	["TYPE"] = "Tipo",
	["TYPE_CAMPAIGN"] = "Campaña",
	["TYPE_DIALOG"] = "Cinemática",
	["TYPE_DOCUMENT"] = "Documento",
	["TYPE_ITEM"] = "Objeto",
	["TYPE_ITEMS"] = "Objeto(s)",
	["TYPE_LOOT"] = "Botín",
	["TYPE_QUEST"] = "Misión",
	["UNIT_POTATOES"] = "patatas",
	["WO_ACTIONS_LINKS"] = "Enlaces de acción",
	["WO_ADD"] = "Crear flujo de trabajo",
	["WO_COMMON_EFFECT"] = "Efectos comunes",
	["WO_CONDITION"] = "Condición",
	["WO_CONDITION_TT"] = [=[Evalúa una condición.
Detiene el flujo de trabajo si la condición falla.]=],
	["WO_CONTEXT"] = "Contexto",
	["WO_CONTEXT_TT"] = "El contexto del flujo de trabajo determina qué efectos pueden usarse en el flujo de trabajo.",
	["WO_COPY"] = "Copiar contenido del flujo de trabajo",
	["WO_DELAY"] = "Retraso",
	["WO_DELAY_CAST_TEXT"] = "Texto de casteo",
	["WO_DELAY_CAST_TEXT_TT"] = "El texto situado en la barra de casteo.",
	["WO_DELAY_DURATION"] = "Duración",
	["WO_DELAY_DURATION_TT"] = "La duración del retraso, en segundos.",
	["WO_DELAY_INTERRUPT"] = "Interrupción",
	["WO_DELAY_INTERRUPT_1"] = "Sin interrupción",
	["WO_DELAY_INTERRUPT_2"] = "Interrumpir en movimiento",
	["WO_DELAY_SECONDS"] = "segundo(s)",
	["WO_DELAY_TYPE"] = "Tipo de retraso",
	["WO_DELAY_TYPE_1_TT"] = "Pausa el flujo de trabajo sin mostrar ninguna información al jugador.",
	["WO_EFFECT"] = "Efecto",
	["WO_EFFECT_CAT_COMMON"] = "Común",
	["WO_EFFECT_NO_EDITOR"] = "No se puede configurar este efecto.",
	["WO_EFFECT_SELECT"] = "Selecciona un efecto",
	["WO_EFFECT_TT"] = [=[Reproduce un efecto.
Ya sea sonidos, texto, etc.]=],
	["WO_ELEMENT"] = "Edición del elemento",
	["WO_ELEMENT_ADD"] = "Añadir elemento al flujo de trabajo",
	["WO_ELEMENT_COND"] = "Editar efecto de condición",
	["WO_ELEMENT_COND_NO"] = "Eliminar efecto de condición",
	["WO_ELEMENT_COND_TT"] = "Añade una condición a este efecto.",
	["WO_ELEMENT_COPY"] = "Copiar el contenido del elemento",
	["WO_ELEMENT_EDIT"] = "Haz clic para editar un elemento",
	["WO_ELEMENT_EDIT_CTRL"] = "Control+clic para condicionar esta instrucción",
	["WO_ELEMENT_EDIT_RIGHT"] = "Haz clic derecho para más operaciones",
	["WO_ELEMENT_PASTE"] = "Pega el contenido del elemento",
	["WO_ELEMENT_TYPE"] = "Selecciona el tipo de elemento",
	["WO_EMPTY"] = [=[Puedes comenzar añadiendo un elemento a tu flujo de trabajo.
Puede ser un efecto, condición o retraso.]=],
	["WO_END"] = "Fin de flujo de trabajo",
	["WO_EVENT_EX_ADD"] = "Añadir enlace de evento",
	["WO_EVENT_EX_BROWSER_COMBAT_LOG_ERROR"] = "No se pueden mostrar argumentos, dirígete a Wowpedia",
	["WO_EVENT_EX_BROWSER_NO_PAYLOAD"] = "Sin argumentos",
	["WO_EVENT_EX_BROWSER_OPEN"] = "Abrir buscador de eventos",
	["WO_EVENT_EX_BROWSER_TITLE"] = "Buscador de eventos",
	["WO_EVENT_EX_CONDI"] = "Editor de condición de enlace de evento",
	["WO_EVENT_EX_EDITOR"] = "Editor de enlace de evento",
	["WO_EVENT_EX_LINK"] = "Enlace de evento de juego",
	["WO_EVENT_EX_LINKS"] = "Enlaces de evento de juego",
	["WO_EVENT_EX_LINKS_TT"] = [=[Aquí puedes enlazar tus flujos de trabajo a eventos del juego.
Cada enlace puede ser condicionado.]=],
	["WO_EVENT_EX_NO"] = "Sin enlace de evento",
	["WO_EVENT_EX_UNKNOWN_ERROR"] = "[Error] Evento desconocido %s en %s",
	["WO_EVENT_ID"] = "ID de evento",
	["WO_EVENT_ID_TT"] = [=[La ID del evento.

Puedes ver la lista completa de eventos en páginas web como wowwiki o wowpedia.

He aquí un ejemplo, PLAYER_REGEN_DISABLED se activa cuando entras en combate.]=],
	["WO_EXPERT"] = "Modo experto",
	["WO_EXPERT_DONE"] = "Cambiado %s a modo experto. ¡Desata tu creatividad!",
	["WO_EXPERT_TT"] = [=[Un flujo de trabajo es un conjunto de instrucciones para hacer tu objeto dinámico.

Aquí puedes definir todos los flujos de trabajo para este objeto, para después enlazarlos a una acción en la ventana de enlaces de eventos.]=],
	["WO_LINKS"] = "Enlaces de evento",
	["WO_LINKS_NO_LINKS"] = "Sin enlace",
	["WO_NO"] = "Sin flujos de trabajo",
	["WO_SECURITY"] = "Nivel de seguridad",
	["WO_SECURITY_HIGH"] = "Alto",
	["WO_SECURITY_LOW"] = "Bajo",
	["WO_SECURITY_NORMAL"] = "Medio",
	["WO_WO_SECURITY"] = "Seguridad de los flujos de trabajo",
	["WO_WORKFLOW"] = "Flujos de trabajo"
}

Localization:GetLocale("esES"):AddTexts(localeContent);

--[[ Removed while CurseForge is malfunctioning
localeContent = 
}

Localization:GetLocale("esMX"):AddTexts(localeContent);
]]

--[[ Removed while CurseForge is malfunctioning
localeContent = 
}

Localization:GetLocale("itIT"):AddTexts(localeContent);
]]

localeContent = {
	["ALL"] = "모든",
	["CA_ACTIONS"] = "행위",
	["CONF_UNIT"] = "단위",
	["DB"] = "데이터 베이스"
}

Localization:GetLocale("koKR"):AddTexts(localeContent);

--[[ Removed while CurseForge is malfunctioning
localeContent = {
	["ALL"] = "Tudo",
	["BINDING_NAME_TRP3_INVENTORY"] = "Abrir o inventário do personagem",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "Abrir bolsa principal",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "Ação da missão: Interação",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "Ação da missão: Escutar",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "Ação da missão: Inspecionar",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "Ação da missão: Falar",
	["BINDING_NAME_TRP3_QUESTLOG"] = "Abrir registro de missões do TRP3",
	["BINDING_NAME_TRP3_SEARCH_FOR_ITEMS"] = "Procurar por itens",
	["CA_ACTION_CONDI"] = "Editor de condição para ação",
	["CA_ACTION_REMOVE"] = "Remover essa ação?",
	["CA_ACTIONS"] = "Ações",
	["CA_ACTIONS_ADD"] = "Adicionar ação",
	["CA_ACTIONS_COND"] = "Mudar condição",
	["CA_ACTIONS_COND_OFF"] = "Esse ação não é condicionado",
	["CA_ACTIONS_COND_ON"] = "Esse ação é condicionado",
	["CA_ACTIONS_COND_REMOVE"] = "Remover condição",
	["CA_ACTIONS_EDITOR"] = "Editor de ação",
	["CA_ACTIONS_NO"] = "Sem ação",
	["CA_ACTIONS_SELECT"] = "Seleciona o tipo de ação",
	["CA_DESCRIPTION"] = "Sumário de campanha",
	["CA_DESCRIPTION_TT"] = [=[
Este breve resumo estará visível na página da campanha, no registro de missões.]=],
	["CA_ICON"] = "Ícone da campanha",
	["CA_ICON_TT"] = "Selecione ícone de campanha",
	["CA_IMAGE"] = "Imagem da campanha",
	["CA_IMAGE_TT"] = "Seleciona o “retrato” da campanha",
	["CA_LINKS_ON_START"] = "No começo da campanha",
	["CA_LINKS_ON_START_TT"] = [=[Dispara |cff00ff00 uma vez |r quando o jogador começa a campanha, como ativando-a pela primeira vez, ou reiniciando o registro de missões.

|cff00ff00Esse é uma bom local para ativar a sua primeira missão.]=],
	["CA_NAME"] = "Nome da campanha",
	["CA_NAME_NEW"] = "Nova campanha",
	["CA_NAME_TT"] = "Esse é o nome da sua campanha. Isso aparecerá no seu registro de missões.",
	["CA_NO_NPC"] = "Sem NPC personalizado",
	["CA_NPC"] = "Lista de NPC da campanha",
	["CA_NPC_ADD"] = "Adicionar NPC personalizado",
	["CA_NPC_AS"] = "Duplicado",
	["CA_NPC_EDITOR"] = "Editor de NPC",
	["CA_NPC_EDITOR_DESC"] = "Descrição do NPC",
	["CA_NPC_EDITOR_NAME"] = "Nome do NPC",
	["CA_NPC_ID"] = "ID do NPC",
	["CA_NPC_ID_TT"] = [=[Por favor, coloque o ID do NPC para personalizar.

|cff00ff00Para obter o ID do NPC que você marcou como alvo, ditite no chat: /trp3 GetID]=],
	["CA_NPC_NAME"] = "Nome padrão do NPC",
	["CA_NPC_REMOVE"] = "Remover a perssonalização deste NPC.",
	["CA_NPC_TT"] = "Você pode personalizar NPCs para dar para eles um nome, um ícone e uma descrição. Essa personalização vai ser visível quando o jogador estar com a sua campanha ativa.",
	["CA_NPC_UNIT"] = "NPC pesonalizado",
	["CA_QE_ID"] = "Mudar o ID da missão",
	["CA_QE_ST_ID"] = "Mudar o ID do passo da missão.",
	["CA_QUEST_ADD"] = "Adicionar missão",
	["CA_QUEST_CREATE"] = [=[Por favor, coloque o ID da missão. Você não pode ter duas missões com o mesmo ID na mesma campanha.

|cffff9900Por favor, note que a missão vais ser listada em ordem alfabética dos IDs no registro de missões

|cff00ff00É uma boa pratica sempre começar seu ID com "quest_", com o numero da missão da campanha.]=],
	["CA_QUEST_EXIST"] = "Já existe uma missão com o ID %s",
	["CA_QUEST_NO"] = "Sem missões",
	["CA_QUEST_REMOVE"] = "Remover essa missão?",
	["CL_CAMPAIGN_PROGRESSION"] = "Progressão do %s:",
	["CL_CREATION"] = "Criação estendida",
	["CL_EXTENDED_CAMPAIGN"] = "Campanha estendida",
	["CL_EXTENDED_ITEM"] = "Item estendido",
	["CL_IMPORT"] = "Importar para o banco de dados.",
	["CL_IMPORT_ITEM_BAG"] = "Adicionar item na sua bolsa",
	["CL_TOOLTIP"] = "Criar link no chat",
	["COM_NPC_ID"] = "obter o ID do NPC que foi selecionado como alvo",
	["COND_COMPLETE"] = "Completar a expressão logica",
	["COND_CONDITIONED"] = "Condicionado",
	["COND_EDITOR"] = "Editor de condição",
	["COND_EDITOR_EFFECT"] = "Editor de condição para efeito",
	["COND_LITT_COMP"] = "Todos os tipos de comparação",
	["COND_NUM_COMP"] = "Somente comparação numerica",
	["COND_NUM_FAIL"] = "Você deve ter dois operadores numéricos, se você usa um comparador numérico",
	["COND_PREVIEW_TEST"] = "Teste anterior",
	["COND_PREVIEW_TEST_TT"] = "Imprimir no chat frame a avaliação desse teste baseada na situação atual",
	["COND_TEST_EDITOR"] = "Editor de teste",
	["COND_TESTS"] = "Condição para testes",
	["CONF_MAIN"] = "Configurações estendidas",
	["CONF_MUSIC_ACTIVE"] = "Tocar musica local",
	["CONF_MUSIC_ACTIVE_TT"] = [=[Musicas locais são musicas tocadas por outrem (por exemplo: através de um item) em um certo raio em jardas.

Desligue isso, se você não quer ouvir aquelas musicas.

|cff00ff00Note que você nunca escuta musica de jogadores ignorados
|cff00ff00Note que todas as musicas são interruptivos via "Sound History" na barra de tarefa do TRP3]=],
	["CONF_MUSIC_METHOD"] = "Método de tocar a musica local",
	["CONF_MUSIC_METHOD_TT"] = "Determine como você vai escutar a musica local, quando você estiver dentro do raio.",
	["CONF_SOUNDS"] = "Sons/musicas locais",
	["CONF_SOUNDS_ACTIVE"] = "Tocar sons locais",
	["CONF_SOUNDS_ACTIVE_TT"] = [=[Sons locais são tocados por outrem (por exemplo: através um item), quando estiver dentro de um certo raio em jardas.

Desligue isso se você não quer escutar esse som.

|cff00ff00Note que você não vai escutar sons de jogadores ignorados.

|cff00ff00Note que todos os sons são ininterruptíveis via "Sound History" na barra de tarefa do TRP3 ]=],
	["CONF_SOUNDS_MAXRANGE"] = "Raio máximo do \"playback\"",
	["CONF_SOUNDS_MAXRANGE_TT"] = [=[Configura o raio máximo (em jardas), para escutar sons/musicas locais.

|cff00ff00Útil para evitar pessoas tocar sons através todo o continente.

 |cffff9900Zero significa sem limite!]=],
	["CONF_SOUNDS_METHOD"] = "Método para tocar sons locais",
	["CONF_SOUNDS_METHOD_1"] = "Tocar automaticamente.",
	["CONF_SOUNDS_METHOD_1_TT"] = "Se dentro do raio, isso vai tocar o som/musica sem perguntar sua permissão.",
	["CONF_SOUNDS_METHOD_2"] = "Perguntar por permissão",
	["CONF_SOUNDS_METHOD_2_TT"] = "Se você estiver dentro do raio, um link vai ser colocado no seu chat, perguntando sua confirmação para tocar o som/musica.",
	["CONF_SOUNDS_METHOD_TT"] = "Determina como você vai escutar um som local, quando você estiver dentro do raio.",
	["CONF_UNIT"] = "Unidades",
	["CONF_UNIT_WEIGHT"] = "Peso da unidade",
	["CONF_UNIT_WEIGHT_1"] = "Gramas",
	["CONF_UNIT_WEIGHT_2"] = "Libras",
	["CONF_UNIT_WEIGHT_3"] = "Batatas",
	["CONF_UNIT_WEIGHT_TT"] = "Defina como o valor do peso é mostrado",
	["DB"] = "Banco de dados",
	["DB_ACTIONS"] = "Ações",
	["DB_ADD_COUNT"] = "Quantas unidades de %s você quer adicionar em seu inventario?",
	["DB_ADD_ITEM"] = "Adicionar para o inventário principal",
	["DB_ADD_ITEM_TT"] = "Adicionar unidades desse item na sua bolsa primaria (ou inventário principal, se você não tem uma bolsa primaria no seu personagem)",
	["DB_BACKERS"] = "Banco de dados dos apoiadores (%s)",
	["DB_BACKERS_LIST"] = "Creditos",
	["DB_BROWSER"] = "Navegador de objetos",
	["DB_COPY_ID_TT"] = "Mostrar o ID do objeto no popup para copiar/colar",
	["DB_COPY_TT"] = "Copiar informações sobre esse objeto (e objetos \"filhos\") para ser colável como uma ligação em outro objeto.",
	["DB_CREATE_CAMPAIGN"] = "Criar campanha",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "Campanha vazia",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "Criar de...",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "Criar uma copiar de uma campanha existente",
	["DB_CREATE_CAMPAIGN_TT"] = "Começar a criar uma campanha",
	["DB_CREATE_ITEM"] = "Criar item",
	["DB_CREATE_ITEM_TEMPLATES"] = "Ou selecionar um modelo",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "Item vazio",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "Bolsa",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[Um modelo de bolso
Bolsas podem segurar outros itens]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "Um documento",
	["DB_EXPORT"] = "Exportação rápida de objeto"
}

Localization:GetLocale("ptBR"):AddTexts(localeContent);
]]

localeContent = {
	["ALL"] = "Все",
	["BINDING_NAME_TRP3_INVENTORY"] = "Открыть инвентарь персонажа",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "Открыть главную сумку",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "Действие квеста: взаимодействовать",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "Действие квеста: слушать",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "Действие квеста: исследовать",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "Действие квеста: говорить",
	["BINDING_NAME_TRP3_QUESTLOG"] = "Открыть журнал квестов TRP3",
	["BINDING_NAME_TRP3_SEARCH_FOR_ITEMS"] = "Поиск предметов",
	["CA_ACTION_CONDI"] = "Редактор условий действия",
	["CA_ACTION_REMOVE"] = "Удалить это действие?",
	["CA_ACTIONS"] = "Действия",
	["CA_ACTIONS_ADD"] = "Добавить действие",
	["CA_ACTIONS_COND"] = "Изменить условие",
	["CA_ACTIONS_COND_OFF"] = "Это действие не обусловлено.",
	["CA_ACTIONS_COND_ON"] = "Это действие обусловлено.",
	["CA_ACTIONS_COND_REMOVE"] = "Удалить условиe",
	["CA_ACTIONS_EDITOR"] = "Редактор действий",
	["CA_ACTIONS_NO"] = "Нет действий",
	["CA_ACTIONS_SELECT"] = "Выберите тип действия",
	["CA_DESCRIPTION"] = "Сводка по кампании",
	["CA_DESCRIPTION_TT"] = "Эта краткая сводка будет видна на странице кампании в журнале заданий.",
	["CA_ICON"] = "Значок кампании",
	["CA_ICON_TT"] = "Выберите значок кампании",
	["CA_IMAGE"] = "Портрет кампании",
	["CA_IMAGE_TT"] = "Выберите значок кампании",
	["CA_LINKS_ON_START"] = "На старте кампании",
	["CA_LINKS_ON_START_TT"] = [=[Срабатывает |cff00ff00один|r раз, когда игрок начал кампанию, так что активация кампании в первый раз, или сбросить его в журнале квестов.

|cff00ff00Это хорошее место, чтобы активировать ваш первый квест.]=],
	["CA_NAME"] = "Название кампании",
	["CA_NAME_NEW"] = "Новая кампания",
	["CA_NAME_TT"] = "Это название Вашей кампании. Он появляется в журнале квестов.",
	["CA_NO_NPC"] = "Нет кастомных НПС",
	["CA_NPC"] = "Список НПС в кампании",
	["CA_NPC_ADD"] = "Добавить кастомизированного НПС",
	["CA_NPC_AS"] = "Дубликат",
	["CA_NPC_EDITOR"] = "НПС редактор",
	["CA_NPC_EDITOR_DESC"] = "Описание НПС",
	["CA_NPC_EDITOR_NAME"] = "Имя НПС",
	["CA_NPC_ID"] = "ID НПС",
	["CA_NPC_ID_TT"] = [=[Пожалуйста, введите ID НПС, чтобы настроить.

|cff00ff00Чтобы получить ID НПС, введите эту команду в чате:/trp3 getID]=],
	["CA_NPC_NAME"] = "Стандартное имя НИП",
	["CA_NPC_REMOVE"] = "Удалить изменения для этого НИП?",
	["CA_NPC_TT"] = [=[Вы можете настраивать НИПов давая им имя, иконку и описание.
Эта кастомизация будет видна когда ваша кампания активна у игрока.]=],
	["CA_NPC_UNIT"] = "Настренный НИП",
	["CA_QE_ID"] = "Изменить ID задания",
	["CA_QE_ST_ID"] = "Изменить ID этапа задания",
	["CA_QUEST_ADD"] = "Добавить задание",
	["CA_QUEST_CREATE"] = [=[Пожалуйста, введите ID задания. У Вас может быть два задания с одинаковым ID в рамках одной кампании.

|cffff9900Обратите внимание: задания будут сортированы в алфавитном порядке их ID в логах заданий.

|cff00ff00Совет: старайтесь всегда записывать ID  в виде "Задание_#",где # - это номер задания в кампании.]=],
	["CA_QUEST_EXIST"] = "Задание с ID %s уже существует.",
	["CA_QUEST_NO"] = "Нет задания",
	["CA_QUEST_REMOVE"] = "Убрать это задание?",
	["CL_CAMPAIGN_PROGRESSION"] = "Прогресс для %s:",
	["CL_CREATION"] = "Расширенное создание",
	["CL_EXTENDED_CAMPAIGN"] = "Расширенная кампания",
	["CL_EXTENDED_ITEM"] = "Расширенный предмет",
	["CL_IMPORT"] = "Импортировать в базу данных",
	["CL_IMPORT_ITEM_BAG"] = "Добавить предмет в вашу сумку",
	["CL_TOOLTIP"] = "Создать ссылку в чат",
	["COM_NPC_ID"] = "получить id выбранного нип",
	["COND_COMPLETE"] = "Полное логическое выражение",
	["COND_CONDITIONED"] = "С условием",
	["COND_EDITOR"] = "Редактор условий",
	["COND_EDITOR_EFFECT"] = "Редактор эффектов условий",
	["COND_LITT_COMP"] = "Все виды уравнений",
	["COND_NUM_COMP"] = "Только численные уравнения",
	["COND_NUM_FAIL"] = "Вы должны иметь два численных значения если вы хотите использовать численное уравнение.",
	["COND_PREVIEW_TEST"] = "Проврека условия",
	["COND_PREVIEW_TEST_TT"] = "Печатает в чат результат данного теста основываясь на текущей ситуации.",
	["COND_TEST_EDITOR"] = "Редактор тестов",
	["COND_TESTS"] = "Тесты условий",
	["CONF_MAIN"] = "Расширенные настройки",
	["CONF_MUSIC_ACTIVE"] = "Играть локальную музыку",
	["CONF_MUSIC_ACTIVE_TT"] = [=[Локальная музыка это музыка играемая другими игроками (например через предмет) в определённом радиусе.

Отключите данную опцию если вы не хотите слышать эту музыку вовсе.

|cff00ff00Учтите что вы никогда не услышите музыку от игнорируемых игроков.

|cff00ff00Учтите что вся музыка прерываема через Историю Звуков в панели быстрого доступа TRP3.]=],
	["CONF_MUSIC_METHOD"] = "Образ воспроизведения локальной музыки",
	["CONF_MUSIC_METHOD_TT"] = "Выберите как вы будете слышать локальную музыку когда вы в радиусе.",
	["CONF_SOUNDS"] = "Локальные звуки / музыка",
	["CONF_SOUNDS_ACTIVE"] = "Играть локальные звуки",
	["CONF_SOUNDS_ACTIVE_TT"] = [=[Локальны звуки это звуки играемые другими игроками (например через предмет) в определённом радиусе.

Отключите данную опцию если вы не хотите слышать эти звуки вовсе.

|cff00ff00Учтите что вы никогда не услышите звуки от игнорируемых игроков.

|cff00ff00Учтите что все звуки прерываемы через Историю Звуков в панели быстрого доступа TRP3.]=],
	["CONF_SOUNDS_MAXRANGE"] = "Максимальный радиус воспроизведения",
	["CONF_SOUNDS_MAXRANGE_TT"] = [=[Выберите максимальный радиус (в мать их ярдах, чёртовы американцы) в которым вы будете слышать локальные звуки/музыку.

|cff00ff00Полезно чтобы избегать людей играющих звуки через весь континент.

|cffff9900Ноль означает без ограничения!]=],
	["CONF_SOUNDS_METHOD"] = "Способ воспроизведения локальных звуков",
	["CONF_SOUNDS_METHOD_1"] = "Воспроизводить автоматически",
	["CONF_SOUNDS_METHOD_1_TT"] = "Если вы в радиусе, оно воспроизведёт звук/музыку без запроса вашего разрешения.",
	["CONF_SOUNDS_METHOD_2"] = "Запросить разрешение",
	["CONF_SOUNDS_METHOD_2_TT"] = "Если вы в радиусе, в окне чате будет размещена ссылка для запроса вашего подтверждения чтобы воспроизвести музыку/звук.",
	["CONF_SOUNDS_METHOD_TT"] = "Выберите как вы будете слышать локальный звук когда вы в радиусе.",
	["CONF_UNIT"] = "Единицы",
	["CONF_UNIT_WEIGHT"] = "Вес единицы",
	["CONF_UNIT_WEIGHT_1"] = "Граммы",
	["CONF_UNIT_WEIGHT_2"] = "Фунты",
	["CONF_UNIT_WEIGHT_3"] = "Картошки",
	["CONF_UNIT_WEIGHT_TT"] = "Определяет как весовые значения будут отображаться",
	["DB"] = "База Данных",
	["DB_ACTIONS"] = "Действия",
	["DB_ADD_COUNT"] = "Сколько единиц %s вы хотите добавить в ваш инвентарь?",
	["DB_ADD_ITEM"] = "Добавить в главный инвентарь",
	["DB_ADD_ITEM_TT"] = "Добавляет единицы этого предмета в ваш основной контейнер (или главный инвентарь если у вашего персонажа не выбран основной контейнер).",
	["DB_BACKERS"] = "Заготовленная база данных (%s)",
	["DB_BACKERS_LIST"] = "Создатели",
	["DB_BROWSER"] = "Открыть браузер",
	["DB_COPY_ID_TT"] = "Отобразить ID объекта во всплывающем окне для копирования.",
	["DB_COPY_TT"] = "Скопировать информацию об этом объекте (и дочерних объектах) чтобы вставить его как внутренние объекты в другом объекте.",
	["DB_CREATE_CAMPAIGN"] = "Создать кампанию",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "Пустая кампания",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT"] = [=[Пустой шаблон.
Для тех кто желает начинать с нуля.]=],
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "Создать из ...",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "Создать копию существующей кампании.",
	["DB_CREATE_CAMPAIGN_TT"] = "Начать создание кампании",
	["DB_CREATE_ITEM"] = "Создать предмет",
	["DB_CREATE_ITEM_TEMPLATES"] = "Или выбрать шаблон",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "Пустой предмет",
	["DB_CREATE_ITEM_TEMPLATES_BLANK_TT"] = [=[Пустой шаблон.
Для тех кто желает начинать с нуля.]=],
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "Предмет-контейнер",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[Шаблон контейнера.
Контейнеры могут держать в себе другие предметы.]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "Предмет-документ",
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT"] = [=[Шаблон предмета с внутренним объектом доукментом.
Полезно для быстрого создания книги или свитка.]=],
	["DB_CREATE_ITEM_TEMPLATES_EXPERT"] = "Экспертный предмет",
	["DB_CREATE_ITEM_TEMPLATES_EXPERT_TT"] = [=[Пустой шаблон для экспертов.
Для пользователей с опытом творения.]=],
	["DB_CREATE_ITEM_TEMPLATES_FROM"] = "Создать из ...",
	["DB_CREATE_ITEM_TEMPLATES_FROM_TT"] = "Создать копию существующего предмета.",
	["DB_CREATE_ITEM_TEMPLATES_QUICK"] = "Быстрое создание",
	["DB_CREATE_ITEM_TEMPLATES_QUICK_TT"] = [=[Быстро создаёт простой предмет без какого-либо эффекта.
Потом добавляет одну единицу этого предмета в вашу основную сумку.]=],
	["DB_CREATE_ITEM_TT"] = "Выбрать шаблон для нового предмета",
	["DB_DELETE_TT"] = "Удаляет этот объект и все его дочерние объекты.",
	["DB_EXPERT_TT"] = "Переводит этот объект в экспертный режим, позволяя более сложные настройки.",
	["DB_EXPORT"] = "Быстрое экспортирование объекта",
	["DB_EXPORT_DONE"] = [=[Ваш объект был экспортирован в файл под названием
|cff00ff00totalRP3_Extended_ImpExport.lua|r в эту игровую папку:

World of Warcraft\WTF\
account\ВАШ_АККАУНТ\SavedVariables

Вы можете поделиться этим файлом со своими друзьями!

Они могут выполнить процесс импортирования в |cff00ff00Полную Вкладку Базы Данных|r.]=],
	["DB_EXPORT_HELP"] = "Код для объекта %s (размер: %0.1f кБ)",
	["DB_EXPORT_MODULE_NOT_ACTIVE"] = "Полное экспортирование/импортирование объекта: Пожалуйста сперва включите аддон  totalRP3_Extended_ImpExport.",
	["DB_EXPORT_TOO_LARGE"] = [=[Этот объект слишком большой при сериализации чтобы быть экспортирован данным способом. Пожалуйста используйте опцию полного экспортирования.

Размер: %0.1f кБ.]=],
	["DB_EXPORT_TT"] = [=[Сериализует содержание объекта для обмена вне игры.

Работает лишь на малых объектах (меньше 20-ти кБ после сериализации). Для более крупных объектов, используйте опцию полного экспортирования.]=],
	["DB_FILTERS"] = "Поисковые фильтры",
	["DB_FILTERS_CLEAR"] = "Очистить",
	["DB_FILTERS_NAME"] = "Название объекта",
	["DB_FILTERS_OWNER"] = "Автор",
	["DB_FULL"] = "Полная база данных (%s)",
	["DB_FULL_EXPORT"] = "Полное экспортирование",
	["DB_FULL_EXPORT_TT"] = [=[Совершить полное экспортирование этого объекта вне зависимости от его размера.

Применение этой функции запустит перезагрушку игрового интерфейса ради записи файла сохранения аддона. ]=],
	["DB_HARD_SAVE"] = "Сохранить на диске",
	["DB_HARD_SAVE_TT"] = "Перезапустить интерфейс игры дабы запустить сохранение переменных на диск.",
	["DB_IMPORT"] = "Быстрый импорт базы данных",
	["DB_IMPORT_CONFIRM"] = [=[Этот объект был сериализован в отличной от вашей версии Total RP 3 Extended.

Версия импортированного TRP3E: %s
Ваша версия TRP3E: %s

|cffff9900Это может привести к несовместимостям.
Продолжить импортирование в любом случае?]=],
	["DB_IMPORT_DONE"] = "Объект успешно импортирован!",
	["DB_IMPORT_EMPTY"] = [=[Не существует объекта в вашем файле
|cff00ff00totalRP3_Extended_ImpExport.lua|r.

Этот файл должен быть помещён в эту директорию игры |cffff9900до запуска игры|r:

World of Warcraft\WTF\
account\ВАШ_АККАУНТ\SavedVariables]=],
	["DB_IMPORT_ERROR1"] = "Объект не может быть десериализован.",
	["DB_IMPORT_FULL"] = "Полное импортирование объектов",
	["DB_IMPORT_FULL_CONFIRM"] = [=[Вы хотите импортировать следующий объект?

%s
%s
От |cff00ff00%s|r
Версия %s]=],
	["DB_IMPORT_FULL_TT"] = "Импортировать файл |cff00ff00totalRP3_Extended_ImpExport.lua|r.",
	["DB_IMPORT_ITEM"] = "Импортировать предмет",
	["DB_IMPORT_TT"] = "Вставьте прежде сериализованный объект сюда",
	["DB_IMPORT_VERSION"] = [=[Вы импортируете более старую версию этого объекта чем версия которую вы уже имеете.

Импортированная версия: %s
Ваша версия: %s

|cffff9900Вы желаете подтвердить что вы хотите откатить?]=],
	["DB_IMPORT_WORD"] = "Импортировать",
	["DB_LIST"] = "Список творений",
	["DB_LOCALE"] = "Локация объекта",
	["DB_MY"] = "Моя база данных (%s)",
	["DB_MY_EMPTY"] = [=[Вы ещё не создавали никаких объектов.
Используйте одну из кнопок внизу чтобы высвободить свою креативность!]=],
	["DB_OTHERS"] = "База данных игроков (%s)",
	["DB_OTHERS_EMPTY"] = "Здесь будут помещены все объекты созданные другими игроками.",
	["DB_REMOVE_OBJECT_POPUP"] = [=[Пожалуйста подтвердите удаление объекта:
ID: |cff00ffff"%s"|r
|cff00ff00[%s]|r

|cffff9900Предупреждение: Данное действие необратимо!.]=],
	["DB_RESULTS"] = "Результаты поиска",
	["DB_SECURITY_TT"] = "Показывает все параметры безопасности для этого объекта. Отсюда вы можете позволить или предотвратить некоторые нежелаемые эффекты.",
	["DB_TO_EXPERT"] = "Перевести в экспертный режим",
	["DB_WARNING"] = [=[
|cffff0000!!! Предупреждение !!!

|cffff9900Не забывайте сохранять ваши изменения прежде чем вернуться к списку базы данных!]=],
	["DEBUG_QUEST_START"] = "Начать задание",
	["DEBUG_QUEST_START_USAGE"] = "Использование: /trp3 debug_quest_start questID",
	["DEBUG_QUEST_STEP"] = "Перейти к этапу задания.",
	["DEBUG_QUEST_STEP_USAGE"] = "Использование: /trp3 debug_quest_step questID stepID",
	["DI_ATTR_TT"] = "Используйте это, если желаете сменить атрибут относительно фазы прошлой катсцены",
	["DI_ATTRIBUTE"] = "Модификация этапа",
	["DI_BKG"] = "Изменить фоновую картинку",
	["DI_BKG_TT"] = [=[Будет использоваться как фоновое изображение кат-сцены. Пожалуйста, введите полный путь к изображению.

Если изменить фон во время кат-сцены, между двумя изображениями произойдет затухание.]=],
	["DI_CHOICE"] = "Вариант",
	["DI_CHOICE_CONDI"] = "Условие варианта",
	["DI_CHOICE_STEP"] = "Перейти к фазе",
	["DI_DIALOG"] = "Диалог",
	["DI_HISTORY"] = "История катсцен",
	["DI_STEPS"] = "Этапы катсцены",
	["DO_PAGE_FIRST"] = "Первая страница",
	["DO_PAGE_FONT"] = "%s фонт",
	["DO_PAGE_HEIGHT"] = "Высота страницы",
	["DO_PAGE_LAST"] = "Последняя страница",
	["DO_PAGE_MANAGER"] = "Менеджер страниц",
	["DO_PAGE_NEXT"] = "Следующая страница",
	["DO_PAGE_PREVIOUS"] = "Предыдущая страница",
	["DO_PAGE_REMOVE"] = "Удалить страницу",
	["DO_PAGE_REMOVE_POPUP"] = "Удалить страницу %s ?",
	["DR_DROP_ERROR_INSTANCE"] = "Невозможно бросить предметы в подземелье",
	["DR_DROPED"] = "Брошено на землю: %s x%d",
	["DR_NOTHING"] = "Предметы в этой области не найдены.",
	["DR_POPUP"] = "Бросить здесь",
	["DR_SEARCH_BUTTON"] = "Искать |cff00ff00мои|r предметы",
	["DR_STASHES"] = "Тайники",
	["DR_STASHES_CREATE"] = "Создать тайник здесь",
	["DR_STASHES_DROP"] = "Вы не можете бросить предмет в чужой тайник",
	["DR_STASHES_SCAN"] = "Поиск тайников игроков",
	["DR_STASHES_SCAN_MY"] = "Поиск моих тайников",
	["DR_STASHES_SEARCH"] = "Искать тайники |cff00ff00игроков|r",
	["DR_SYSTEM"] = "Система добычи",
	["DR_SYSTEM_TT"] = "Ронять / искать предметы и создавать / обращаться к вашим тайникам. Система добычи не работает в подземельях/аренах/полях боя.",
	["EFFECT_CAT_SOUND"] = "Звук и музыка",
	["EFFECT_DIALOG_QUICK"] = "Быстрая кат-сцена",
	["EFFECT_DIALOG_START"] = "Начать кат-сцену",
	["EFFECT_DIALOG_START_PREVIEW"] = "Начать катсцену %s.",
	["EFFECT_ITEM_ADD"] = "Добавить предмет",
	["EFFECT_ITEM_ADD_ID"] = "ID предмета",
	["EFFECT_ITEM_ADD_QT"] = "Количество",
	["EFFECT_ITEM_ADD_TT"] = "Добавляет предметы в вашу сумку.",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD"] = "Тип",
	["EFFECT_ITEM_COOLDOWN"] = "Начать восстановление",
	["EFFECT_ITEM_LOOT_DROP"] = "Бросить предметы",
	["EFFECT_ITEM_SOURCE_SEARCH"] = "Искать в",
	["EFFECT_OPERATION_TYPE_ADD"] = "Прибавление",
	["EFFECT_OPERATION_TYPE_DIV"] = "Деление",
	["EFFECT_OPERATION_TYPE_MULTIPLY"] = "Умножение",
	["EFFECT_OPERATION_TYPE_SUB"] = "Вычитание",
	["EFFECT_SOUND_ID_LOCAL"] = "Проиграть локальный звук",
	["EFFECT_SOUND_ID_LOCAL_STOP"] = "Остановить локальный звук",
	["EFFECT_SOUND_ID_LOCAL_TT"] = "Проигрывает звук для игроков вокруг вас.",
	["EFFECT_SOUND_ID_SELF_CHANNEL"] = "Канал",
	["EFFECT_SOUND_PLAY"] = "Воспроизвести",
	["EFFECT_SOURCE"] = "Источник",
	["EFFECT_SOURCE_CAMPAIGN"] = "Активная кампания",
	["EFFECT_SOURCE_OBJECT"] = "Объект",
	["EFFECT_SPEECH_NPC"] = "Речь: НИП",
	["EFFECT_VAR"] = "Название переменной",
	["EFFECT_VAR_VALUE"] = "Значение переменной",
	["EX_SOUND_HISTORY"] = "История звуков",
	["EX_SOUND_HISTORY_CLEAR"] = "Очистить",
	["EX_SOUND_HISTORY_EMPTY"] = "Не было проиграно никаких звуков.",
	["EX_SOUND_HISTORY_STOP"] = "Остановить",
	["EX_SOUND_HISTORY_STOP_ALL"] = "Остановить все",
	["EX_SOUND_HISTORY_TT"] = "Узнайте какие звуки были проиграны, посмотрите откуда они и остановите их если они до сих пор играют. |cffffff00ЛКМ:|r Открыть историю звуков |cffffff00ПКМ:|r Остановить все звуки/музыку",
	["INV_PAGE_CHARACTER_INSPECTION"] = "Осмотр персонажа",
	["INV_PAGE_CHARACTER_INSPECTION_TT"] = "Осмотрите инвентарь этого персонажа.",
	["INV_PAGE_CHARACTER_INV"] = "Инвентарь",
	["INV_PAGE_INV_OPEN"] = "Открыть инвентарь",
	["INV_PAGE_ITEM_LOCATION"] = "Расположение предмета на персонаже",
	["INV_PAGE_PLAYER_INV"] = "Инвентарь %s",
	["INV_PAGE_QUICK_SLOT"] = "Быстрый слот",
	["INV_PAGE_TOTAL_VALUE"] = "Общая стоимость предметов",
	["IT_CRAFTED"] = "Создан",
	["IT_DOC_ACTION"] = "Прочитать документ",
	["IT_DR_SOUND"] = "Звук падения",
	["IT_EX_DOWNLOAD"] = "Скачать",
	["IT_EX_EMPTY"] = "Нечего обменивать",
	["IT_EX_EMPTY_DRAG"] = "Вы можете перетаскивать и отпускать предметы сюда.",
	["IT_EX_TRADE_BUTTON"] = "Открыть обмен",
	["IT_EX_TRADE_BUTTON_TT"] = "Открыть окно обмена чтобы начать торговаться предметами с этим игроком.",
	["IT_FIELD_NAME"] = "Название предмета",
	["IT_FIELD_QUALITY"] = "Качество предмета",
	["IT_INV_SCAN_MY_ITEMS"] = "Поиск моих предметов",
	["IT_INV_SHOW_ALL"] = "Показать весь инвентарь",
	["IT_INV_SHOW_CONTENT"] = "|cffffff00ЛКМ:|r Открыть главный контейнер (если существует) |cffffff00ПКМ:|r Открыть инвентарь",
	["IT_NEW_NAME"] = "Новый предмет",
	["IT_NEW_NAME_CO"] = "Новый контейнер",
	["IT_ON_USE"] = "При использовании",
	["IT_PU_SOUND"] = "Звук подбора",
	["IT_PU_SOUND_1183"] = "Рюкзак",
	["IT_PU_SOUND_1184"] = "Книга",
	["IT_PU_SOUND_1185"] = "Ткань",
	["IT_PU_SOUND_1186"] = "Еда",
	["IT_PU_SOUND_1187"] = "Трава",
	["IT_PU_SOUND_1188"] = "Цепь",
	["IT_PU_SOUND_1189"] = "Мясо",
	["IT_PU_SOUND_1190"] = "Большой металлический",
	["IT_PU_SOUND_1191"] = "Малый металлический",
	["IT_PU_SOUND_1192"] = "Бумага",
	["IT_PU_SOUND_1193"] = "Кольцо",
	["IT_PU_SOUND_1194"] = "Камень",
	["IT_PU_SOUND_1195"] = "Малая цепь",
	["IT_PU_SOUND_1196"] = "Жезл",
	["IT_PU_SOUND_1197"] = "Жидкость",
	["IT_PU_SOUND_1198"] = "Малый древесный",
	["IT_PU_SOUND_1199"] = "Большой древесный",
	["IT_PU_SOUND_1221"] = "Драгоценные камни",
	["IT_QUEST"] = "Флажок задания",
	["IT_QUICK_EDITOR"] = "Быстрое создание предмета",
	["IT_TT_REAGENT"] = "Флажок реагента",
	["IT_TT_VALUE"] = "Значение предмета",
	["IT_TT_VALUE_FORMAT"] = "Стоимость предмета (в %s)",
	["IT_TT_WEIGHT"] = "Вес предмета",
	["IT_TT_WEIGHT_FORMAT"] = "Вес предмета (в граммах)",
	["IT_UNIQUE_COUNT"] = "Максимальное количество единиц",
	["IT_USE"] = "Используемый",
	["IT_USE_TEXT"] = "Текст использования",
	["IT_WEARABLE"] = "Надеваемый",
	["ITEM_ID"] = "ID предмета",
	["LOOT"] = "Добыть",
	["MODE_EXPERT"] = "Экспертный",
	["MODE_NORMAL"] = "Нормальный",
	["MODE_QUICK"] = "Быстрый",
	["NPC_SAYS"] = "говорит",
	["NPC_WHISPERS"] = "шепчет",
	["NPC_YELLS"] = "кричит",
	["OP_ADD_TEST"] = "Добавить проверку",
	["OP_AND"] = "AND",
	["OP_AND_SWITCH"] = "Изменить на AND",
	["OP_BOOL"] = "Булеанское значение",
	["OP_BOOL_FALSE"] = "FALSE",
	["OP_BOOL_TRUE"] = "TRUE",
	["OP_COMP_EQUALS"] = "равняется",
	["OP_COMP_GREATER"] = "больше чем",
	["OP_COMP_GREATER_OR_EQUALS"] = "больше чем или равняется",
	["OP_COMP_LESSER"] = "меньше чем",
	["OP_COMP_LESSER_OR_EQUALS"] = "меньше чем или равняется",
	["OP_COMP_NEQUALS"] = "не равняется",
	["OP_CONFIGURE"] = "Настроить",
	["OP_CURRENT"] = "Текущее значение",
	["OP_OP_INV_COUNT_ANY"] = "Любой предмет",
	["OP_OP_UNIT_CLASS"] = "Класс единицы",
	["OP_OP_UNIT_CLASSIFICATION"] = "Классификация единицы",
	["OP_OP_UNIT_CREATURE_TYPE"] = "Тип существа единицы",
	["OP_OP_UNIT_DEAD"] = "Единица мертва",
	["OP_OP_UNIT_EXISTS"] = "Единица существует",
	["OP_OP_UNIT_FACTION"] = "Фракция единицы",
	["OP_OP_UNIT_FACTION_TT"] = "|cff00ff00Фракция единицы АНГЛИЙСКИМИ ПРОПИСНЫМИ БУКВАМИ.",
	["OP_OP_UNIT_GUILD"] = "Название гильдии единицы",
	["OP_OP_UNIT_HEALTH"] = "Здоровье единицы",
	["OP_OP_UNIT_ID"] = "ID единицы",
	["OP_OP_UNIT_ISPLAYER"] = "Единица игрок",
	["OP_OP_UNIT_LEVEL"] = "Уровень единицы",
	["OP_OP_UNIT_NAME"] = "Имя единицы",
	["OP_OP_UNIT_RACE"] = "Раса единицы",
	["OP_OP_UNIT_SEX"] = "Пол единицы",
	["OP_OP_UNIT_SPEED"] = "Скорость единицы",
	["OP_UNIT"] = "Тип единицы",
	["OP_UNIT_NPC"] = "НИП",
	["OP_UNIT_PLAYER"] = "Игрок",
	["OP_UNIT_TARGET"] = "Цель",
	["OP_UNIT_VALUE"] = "Значение единицы",
	["QE_BUTTON"] = "Открыть журнал заданий",
	["TB_TOOLS"] = "База данных расширенных объектов",
	["TB_TOOLS_TT"] = "Создавайте свои собственные предметы и задания",
	["TYPE_DIALOG"] = "Кат-сцена",
	["TYPE_ITEM"] = "Предмет",
	["TYPE_ITEMS"] = "Предмет(ы)"
}

Localization:GetLocale("ruRU"):AddTexts(localeContent);


localeContent = {
	["ALL"] = "全部",
	["BINDING_NAME_TRP3_INVENTORY"] = "打开角色目录",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "打开主容器",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "探索行动: 互动",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "探索行动: 倾听",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "探索行动: 检查",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "探索行动: 交谈",
	["BINDING_NAME_TRP3_QUESTLOG"] = "打开 TRP3 任务日志",
	["BINDING_NAME_TRP3_SEARCH_FOR_ITEMS"] = "搜索一个物品",
	["CA_ACTION_CONDI"] = "动作条件编辑",
	["CA_ACTION_REMOVE"] = "删除这个动作?",
	["CA_ACTIONS"] = "动作",
	["CA_ACTIONS_ADD"] = "添加动作",
	["CA_ACTIONS_COND"] = "编辑状态",
	["CA_ACTIONS_COND_OFF"] = "这个动作是没有条件的。",
	["CA_ACTIONS_COND_ON"] = "这个动作是有条件的。",
	["CA_ACTIONS_COND_REMOVE"] = "删除条件",
	["CA_ACTIONS_EDITOR"] = "动作编辑",
	["CA_ACTIONS_NO"] = "没有动作",
	["CA_ACTIONS_SELECT"] = "选择动作种类",
	["CA_DESCRIPTION"] = "剧本概要",
	["CA_DESCRIPTION_TT"] = "在这里写一些简明扼要的内容, 内容将在任务日志中显示.",
	["CA_ICON"] = "剧本图标",
	["CA_ICON_TT"] = "选择剧本图标",
	["CA_IMAGE"] = "剧本人物",
	["CA_IMAGE_TT"] = "选择剧本人物",
	["CA_LINKS_ON_START"] = "触发剧本",
	["CA_LINKS_ON_START_TT"] = [=[触发 |cff00ff00once|r 当玩家第一次激活你的剧本，或者在任务日志中重置剧本时触发

|cff00ff00这是激活你第一个任务的地方.]=],
	["CA_NAME"] = "剧本名字",
	["CA_NAME_NEW"] = "新的剧本",
	["CA_NAME_TT"] = "这是你剧本的名字。它出现在任务日志中.",
	["CA_NO_NPC"] = "没有自定义 NPC",
	["CA_NPC"] = "剧本 NPC 列表",
	["CA_NPC_ADD"] = "添加自定义 NPC",
	["CA_NPC_AS"] = "复制品",
	["CA_NPC_EDITOR"] = "NPC 编辑",
	["CA_NPC_EDITOR_DESC"] = "NPC 描述",
	["CA_NPC_EDITOR_NAME"] = "NPC 名称",
	["CA_NPC_ID"] = "NPC ID",
	["CA_NPC_ID_TT"] = [=[请输入NPC的ID进行自定义。

|cff00ff00在聊天中输入这个命令 /trp3 getID]=],
	["CA_NPC_NAME"] = "默认 NPC 名",
	["CA_NPC_REMOVE"] = "取消对NPC的定制?",
	["CA_NPC_TT"] = [=[您可以自定义NPCs 给它们一个名称、一个图标和一个描述。
当玩家将您的剧本设置为激活状态时，可以看到这个定制。]=],
	["CA_NPC_UNIT"] = "自定义 NPC",
	["CA_QE_ID"] = "变更任务 ID",
	["CA_QE_ST_ID"] = "改变 任务步骤 ID",
	["CA_QUEST_ADD"] = "添加任务",
	["CA_QUEST_CREATE"] = [=[请输入任务ID。在同一剧本中不能有两个相同的任务ID。

|cffff9900请注意任务在任务日志中将以id的字母顺序列出。

|cff00ff00f00所以最好总是以 quest_# 开始你的ID， #是剧本中的任务号。]=],
	["CA_QUEST_EXIST"] = "我们已经对 ID %s进行了搜索.",
	["CA_QUEST_NO"] = "没有任务",
	["CA_QUEST_REMOVE"] = "删除这个任务?",
	["CL_CAMPAIGN_PROGRESSION"] = "% s的进展：",
	["CL_CREATION"] = "扩展创建",
	["CL_EXTENDED_CAMPAIGN"] = "扩展剧本",
	["CL_EXTENDED_ITEM"] = "扩展物品",
	["CL_IMPORT"] = "导入到数据库",
	["CL_IMPORT_ITEM_BAG"] = "把物品添加到包里",
	["CL_TOOLTIP"] = "创建一个聊天链接",
	["COM_NPC_ID"] = "获取目标NPC ID",
	["COND_COMPLETE"] = "完整的逻辑表达式",
	["COND_CONDITIONED"] = "条件",
	["COND_EDITOR"] = "条件编辑器",
	["COND_EDITOR_EFFECT"] = "影响条件编辑器",
	["COND_LITT_COMP"] = "所有比较类型",
	["COND_NUM_COMP"] = "数值比较",
	["COND_NUM_FAIL"] = "如果使用数值比较器，则必须使用两个数字进行操作。",
	["COND_PREVIEW_TEST"] = "测试预览",
	["COND_PREVIEW_TEST_TT"] = "基于当前的情况，在聊天框中打印这个测试的评估。",
	["COND_TEST_EDITOR"] = "测试编辑器",
	["COND_TESTS"] = "条件测试",
	["CONF_MAIN"] = "扩展设置",
	["CONF_MUSIC_ACTIVE"] = "播放本地音乐",
	["CONF_MUSIC_ACTIVE_TT"] = [=[本地音乐是指由其他玩家(例如通过物品)演奏到一定范围(码)的音乐。

如果你不想听这些音乐就把它关掉。

|cff00ff00注意，你永远不会听到被忽视的玩家的音乐。

|cff00ff00注意，所有的音乐都可以通过TRP3快捷方式栏中的声音历史记录进行中断。]=],
	["CONF_MUSIC_METHOD"] = "本地音乐回放模式",
	["CONF_MUSIC_METHOD_TT"] = "确定你在范围内如何听到本地的音乐。",
	["CONF_SOUNDS"] = "本地声音 / 音乐",
	["CONF_SOUNDS_ACTIVE"] = "播放本地声音",
	["CONF_SOUNDS_ACTIVE_TT"] = [=[本地声音是其他玩家(例如通过一个项目)在码数范围内播放的声音。

如果你根本不想听到这些声音，就把它关掉。

|cff00ff00你永远不会听到那些被忽视的玩家的声音。

|cff00ff00在TRP3快捷键栏中，所有的声音都是可中断的]=],
	["CONF_SOUNDS_MAXRANGE"] = "播放音量",
	["CONF_SOUNDS_MAXRANGE_TT"] = [=[设置播放范围（在数码中）.你将听到本地声音/音乐。

|cff00ff00 在整个过程中使用

|cffff9900 没有限制的话设置为0!]=],
	["CONF_SOUNDS_METHOD"] = "本地声音回放模式",
	["CONF_SOUNDS_METHOD_1"] = "自动播放",
	["CONF_SOUNDS_METHOD_1_TT"] = "如果您在范围内，它将播放声音/音乐，而无需请求您的许可。",
	["CONF_SOUNDS_METHOD_2"] = "播放前询问",
	["CONF_SOUNDS_METHOD_2_TT"] = "如果您在范围内，将在聊天框中放置一个链接，请求您确认播放声音/音乐。",
	["CONF_SOUNDS_METHOD_TT"] = "确定您在范围内将如何听到本地声音。",
	["CONF_UNIT"] = "单位",
	["CONF_UNIT_WEIGHT"] = "重量单位",
	["CONF_UNIT_WEIGHT_1"] = "g/克",
	["CONF_UNIT_WEIGHT_2"] = "Pounds/磅",
	["CONF_UNIT_WEIGHT_3"] = "[俚语]一元钱",
	["CONF_UNIT_WEIGHT_TT"] = "定义显示重量单位.",
	["DB"] = "数据库",
	["DB_ACTIONS"] = "动作",
	["DB_ADD_COUNT"] = "你想要在你的库中添加 %s 数量单位的对象 ?",
	["DB_ADD_ITEM"] = "添加物品到主背包",
	["DB_ADD_ITEM_TT"] = "在主容器中添加该项目的单元(如果您的字符没有任何主容器，则将其添加到主目录中)。",
	["DB_BACKERS"] = "后台数据库 (%s)",
	["DB_BACKERS_LIST"] = "关于作者",
	["DB_BROWSER"] = "浏览器",
	["DB_COPY_ID_TT"] = "在弹出窗口中显示对象ID，以便复制/粘贴。",
	["DB_COPY_TT"] = "将所有这些对象信息和子对象复制到另一个对象中作为内部对象。",
	["DB_CREATE_CAMPAIGN"] = "创建剧本",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "空白的剧本",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT"] = [=[一个空白的模板。
给予那些喜欢从零开始的人。]=],
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "创建从…",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "创建一个现有剧本的副本。",
	["DB_CREATE_CAMPAIGN_TT"] = "开始创建剧本",
	["DB_CREATE_ITEM"] = "创建物品",
	["DB_CREATE_ITEM_TEMPLATES"] = "或者选择一个模板",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "空白项",
	["DB_CREATE_ITEM_TEMPLATES_BLANK_TT"] = [=[一个空白的模板.
对于那些喜欢从头开始的人来说.]=],
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "容器包包",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[一个容器模板.
容器可以存放其他物品.]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "文档项目",
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT"] = [=[一个带有内部文档对象的物品模板.
有助于快速创建一本书或一卷书.]=],
	["DB_CREATE_ITEM_TEMPLATES_EXPERT"] = "专家物品",
	["DB_CREATE_ITEM_TEMPLATES_EXPERT_TT"] = [=[一个专家空白模板。
给于有创作经验的用户。]=],
	["DB_CREATE_ITEM_TEMPLATES_FROM"] = "从 ...创建",
	["DB_CREATE_ITEM_TEMPLATES_FROM_TT"] = "创建一个现有项目的副本.",
	["DB_CREATE_ITEM_TEMPLATES_QUICK"] = "快速创建物品",
	["DB_CREATE_ITEM_TEMPLATES_QUICK_TT"] = [=[快速创建一个没有任何效果的简单物品.
然后在你的主包包中添加这个物品.]=],
	["DB_CREATE_ITEM_TT"] = "为新物品选择一个模板",
	["DB_DELETE_TT"] = "删除该对象及其所有子对象.",
	["DB_EXPERT_TT"] = "将该对象转换为专家模式，允许更复杂的自定义.",
	["DB_EXPORT"] = "快速导出对象",
	["DB_EXPORT_DONE"] = [=[您的对象已导出到名为 |cff00ff00totalRP3_Extended_ImpExport.lua 文件中|r 在这个游戏目录下:

World of Warcraft\\WTF\\\naccount\\YOUR_ACCOUNT\\SavedVariables

你可以和你的朋友共享这个文件!

他们可以在 |cff00ff00完整的数据标签中追踪过程|r.]=],
	["DB_EXPORT_HELP"] = "对象的代码 %s (大小: %0.1f kB)",
	["DB_EXPORT_MODULE_NOT_ACTIVE"] = "对象完全导出/导入:请先启用 totalRP3_Extended_ImpExport 附加组件",
	["DB_EXPORT_TOO_LARGE"] = [=[这个对象太大了，一旦序列化，就会以这种方式导出。请使用完整的导出功能。

大小: %0.1f kB.]=],
	["DB_EXPORT_TT"] = [=[序列化对象内容，以便在游戏之外交换。

仅在小对象上使用(少于 20 kB ). 对于较大的对象, 使用完整的导出功能。]=],
	["DB_FILTERS"] = "搜索过滤",
	["DB_FILTERS_CLEAR"] = "清除",
	["DB_FILTERS_NAME"] = "对象名称",
	["DB_FILTERS_OWNER"] = "创建者",
	["DB_FULL"] = "全部数据库 (%s)",
	["DB_FULL_EXPORT"] = "刷新全部（会RL重置）",
	["DB_FULL_EXPORT_TT"] = [=[不管它的大小，都要对这个对象进行完整的导出。

这将触发一个UI重载，以强制加载附加文件。]=],
	["DB_HARD_SAVE"] = "本地保存",
	["DB_HARD_SAVE_TT"] = "重载游戏UI，以强制将保存的变量写入磁盘。",
	["DB_IMPORT"] = "快速对象导入",
	["DB_IMPORT_CONFIRM"] = [=[该对象被序列化与您的 Total RP 3 Extended 不同.

输入 TRP3E 版本: %s
你的 TRP3E 版本: %s

|cffff9900这会导致不兼容.
要继续输入嘛?]=],
	["DB_IMPORT_DONE"] = "对象成功导入!",
	["DB_IMPORT_EMPTY"] = [=[这里没有对象在您的 |cff00ff00totalRP3_Extended_ImpExport.lua|r 文件中.

这个文件放在游戏目录|cffff9900确保放在游戏目录|r:

World of Warcraft\\WTF\\\naccount\\YOUR_ACCOUNT\\SavedVariables]=],
	["DB_IMPORT_ERROR1"] = "这个对象不能被反序列化。",
	["DB_IMPORT_FULL"] = "完整对象导入",
	["DB_IMPORT_FULL_CONFIRM"] = [=[你想要导入以下对象吗?

%s
%s
由 |cff00ff00%s|r
版本 %s]=],
	["DB_IMPORT_FULL_TT"] = "导入 |cff00ff00totalRP3_Extended_ImpExport.lua|r 文件。",
	["DB_IMPORT_ITEM"] = "导入物品",
	["DB_IMPORT_TT"] = "在这里粘贴一个先前序列化的对象。",
	["DB_IMPORT_VERSION"] = [=[您正在导入这个对象的旧版本，而不是您已经拥有的版本。

输入版本: %s
你的版本: %s

|cffff9900你确认要降级?]=],
	["DB_IMPORT_WORD"] = "导入",
	["DB_LIST"] = "创建列表",
	["DB_LOCALE"] = "目标文件",
	["DB_MY"] = "我的数据库 (%s)",
	["DB_MY_EMPTY"] = [=[您还没有创建任何对象。
下面的一个按钮可以释放你的创造力!]=],
	["DB_OTHERS"] = "RP玩家的数据库 (%s)",
	["DB_OTHERS_EMPTY"] = "这里将放置其他玩家创建的所有对象。",
	["DB_REMOVE_OBJECT_POPUP"] = [=[请确认删除对象:
ID: |cff00ffff\"%s\"|r
|cff00ff00[%s]|r

|cffff9900警告：此操作不能恢复!.]=],
	["DB_RESULTS"] = "搜索结果",
	["DB_SECURITY_TT"] = "显示该对象的所有安全参数. From there you can allow or prevent certain undesirable effects.",
	["DB_TO_EXPERT"] = "专家模式",
	["DB_WARNING"] = [=[
|cffff0000!!! 警告 !!!

|cffff9900不要忘记保存之前的内容!]=],
	["DEBUG_QUEST_START"] = "开始任务",
	["DEBUG_QUEST_START_USAGE"] = "使用: /trp3 debug_quest_start questID",
	["DEBUG_QUEST_STEP"] = "转到任务步骤.",
	["DEBUG_QUEST_STEP_USAGE"] = "使用: /trp3 debug_quest_step questID stepID",
	["DI_ATTR_TT"] = "如果您想要更改此属性相对于先前的动画的步骤，则只需检查此属性。",
	["DI_ATTRIBUTE"] = "阶段修改",
	["DI_BKG"] = "改变背景图片",
	["DI_BKG_TT"] = [=[将用作动画步骤的背景。请输入完整的路径。

如果你在动画中改变背景，两种不同的背景之间会有淡出。]=],
	["DI_CHOICE"] = "选项",
	["DI_CHOICE_CONDI"] = "选择条件",
	["DI_CHOICE_STEP"] = "到下一步",
	["DI_CHOICE_STEP_TT"] = [=[如果玩家选择此选项，请输入动画的步骤号。

|cff00ff00如果是空的或无效的步骤索引，它将在选中时结束动画(并触发On finish object 对象完成事件)。]=],
	["DI_CHOICE_TT"] = [=[输入此选项的文本。

|cff00ff00如果为空，将禁用此选项。]=],
	["DI_CHOICES"] = "玩家选择",
	["DI_CHOICES_TT"] = "为这一步配置玩家选项。",
	["DI_CONDI_TT"] = [=[设置此选项的条件。如果在显示选项时没有检查条件，则关联选项将不可见。

|cff00ff00左键:配置条件
右键:清除条件]=],
	["DI_DIALOG"] = "对话框",
	["DI_DISTANCE"] = "距离 最大(码)",
	["DI_DISTANCE_TT"] = [=[定义最大距离(单位码)，玩家可以在自动关闭动画效果之前移动的距离(超出将触发“On Cancel 取消”对象事件)。

|cff00ff00 零意味着没有限制。

|cff9900 自7.1补丁以来，不再在副本/战场/竞技场中工作。]=],
	["DI_END"] = "终点",
	["DI_END_TT"] = [=[将此步骤标记为结束点。当到达时，它将完成动画(并触发On finish object 完成对象 事件)。

|cff00ff00你可以方便的在这动画里选择播放 。]=],
	["DI_FRAME"] = "装饰",
	["DI_GET_ID"] = "目标 ID",
	["DI_GET_ID_TT"] = "复制目标的NPC ID。只有当你当前的目标是NPC时才有效。",
	["DI_HISTORY"] = "过场动画历史",
	["DI_HISTORY_TT"] = "单击以查看/隐藏历史面板，显示先前的动画。",
	["DI_IMAGE"] = "改变图片",
	["DI_IMAGE_TT"] = [=[在动画帧的中心显示一个图像。图像会逐渐消失。请输入完整的加载路径。

之后要隐藏图像，只需将这栏空着。]=],
	["DI_LEFT_UNIT"] = "改变左边的模型",
	["DI_LINKS_ONEND"] = "在动画结束",
	["DI_LINKS_ONEND_TT"] = [=[当场景动画结束时触发。

|cff00ff00这可以通过到达最后一步或者允许玩家选择一个空的或未知的“go to step 到下一步”来实现。

|cffff0000如果玩家通过手动关闭帧来取消动画效果，则不会触发。]=],
	["DI_LINKS_ONSTART"] = "在动画开始",
	["DI_LINKS_ONSTART_TT"] = [=[在播放动画时触发。

|cffff9900请注意，在开始第一步动画之前将播放此工作流。]=],
	["DI_LOOT"] = "等待战利品",
	["DI_LOOT_TT"] = "如果工作流将在左边选择显示一个战利品给玩家，你可以检查这个参数，以防止玩家进入下一个动画步骤，直到他拿走了所有的物品。",
	["DI_MODELS"] = "模型",
	["DI_NAME"] = "改变说话人的名字",
	["DI_NAME_DIRECTION"] = "改变对话框的方向",
	["DI_NAME_DIRECTION_TT"] = [=[确定将聊天气泡/名称放置在何处，以及将哪个模型激活。
选择none以完全隐藏聊天气泡和名称。]=],
	["DI_NAME_TT"] = [=[说话角色的名字。

只有当上面的对话方向不是NONE时才需要。]=],
	["DI_NEXT"] = "下一步索引",
	["DI_NEXT_TT"] = [=[您可以指示在此步骤之后将执行哪个步骤。

|cff00ff00留空按顺序播放下一个索引，只有在需要“跳转”到另一个索引时才使用此字段。
在做选择时候很有用。]=],
	["DI_RIGHT_UNIT"] = "改变右边的模型",
	["DI_STEP"] = "剧本步骤",
	["DI_STEP_ADD"] = "添加步骤",
	["DI_STEP_EDIT"] = "剧本步骤编辑",
	["DI_STEP_TEXT"] = "步骤文本",
	["DI_STEPS"] = "剧本步骤",
	["DI_UNIT_TT"] = [=[设置模型显示:

-留出空以隐藏模型。
-玩家“player”使用玩家模型
-目标“target”使用目标的模型。
-作为NPC ID加载的任何数字]=],
	["DI_WAIT_LOOT"] = "请拾取所有物品",
	["DISCLAIMER"] = [=[{h1:c}请一定要阅读{/h1}

创造物品和任务非常消耗精力的一件事，所以存储丢失是非常悲剧的。

这里可以存储所有你在wow里创造的东西，当然它是有限制的：
*所有附加数据都有一个未知的数据大小限制（取决于运行32或64位客户端，还有其他杂七杂八）
*达到或者超过这个限制会删除所有数据
*杀死进程，强制关闭客户端（alt+f4）会损坏已经保存的附加数据
*即使你正确退出游戏，总有一个机会，游戏不能成功保存附加数据并造成破坏
*顺便说下这玩意和MyRolePlay（另一个人物卡RP插件）冲突 
*顺便说下存储机制是一个账号下所有角色存一个地方，所以分身太多可能容易崩溃，目前不清楚wow lua memory存储限制

正因如此，我们强烈建议你备份保存所有数据。
数据保存位置参见:
{link*https://totalrp3.info/documentation/how_to/saved_variables*我信息存在哪里?}
{h2:c}直接备份“WTF\Account\你的角色名\SavedVariables” 下所有内容就行了{/h2}
主要是totalRP3.lua 配置存档/totalrp3_data.lua数据存档/totalrp3_storyline.lua

你可以在这里找到关于同步您的数据到云服务教程:
{link*https://totalrp3.info/documentation/how_to/backup_and_sync_profiles*如何云同步数据？}
需要一些满足版本迭代的云同步如Google Driver你们上不去我就不管了 O(∩_∩)O~

反正你数据没了我们不能恢复。
特此 感谢︿(￣︶￣)︿。

{p:r} TRP3 小组{/p}]=],
	["DISCLAIMER_OK"] = "鲜血为引灵魂为代价我签订这份契约。",
	["DO_EMPTY"] = "空的文件",
	["DO_LINKS_ONCLOSE"] = "关闭中",
	["DO_LINKS_ONCLOSE_TT"] = "当文件被播放器或其他事件关闭时触发(例如，通过工作流效果)",
	["DO_LINKS_ONOPEN"] = "打开中",
	["DO_LINKS_ONOPEN_TT"] = "当文件显示给玩家时触发。",
	["DO_NEW_DOC"] = "文档",
	["DO_PAGE_ADD"] = "添加页面",
	["DO_PAGE_BORDER"] = "边界",
	["DO_PAGE_BORDER_1"] = "羊皮纸",
	["DO_PAGE_COUNT"] = "页 %s / %s",
	["DO_PAGE_EDITOR"] = "页面编辑: 页 %s",
	["DO_PAGE_FIRST"] = "第一页",
	["DO_PAGE_FONT"] = "%s 字体",
	["DO_PAGE_HEIGHT"] = "页面高度",
	["DO_PAGE_HEIGHT_TT"] = "页面高度，以像素为单位。请注意，某些背景只支持一定的高度/宽度比，并且可以变形。",
	["DO_PAGE_LAST"] = "最后一页",
	["DO_PAGE_MANAGER"] = "页面管理",
	["DO_PAGE_NEXT"] = "下一页",
	["DO_PAGE_PREVIOUS"] = "上一页",
	["DO_PAGE_REMOVE"] = "删除页",
	["DO_PAGE_REMOVE_POPUP"] = "删除页 %s ?",
	["DO_PAGE_RESIZE"] = "调整尺寸",
	["DO_PAGE_RESIZE_TT"] = [=[允许使用者调整框架大小.

|cffff9900确保您的布局是可读的，并且不依赖于高/宽比。

|cff00ff00注意，用户永远无法减少默认宽度和高度下的帧大小。]=],
	["DO_PAGE_TILING"] = "高亮背景",
	["DO_PAGE_TILING_TT"] = "如果背景是垂直的和水平的。如果没有，纹理将被拉伸。",
	["DO_PAGE_WIDTH"] = "页面宽度",
	["DO_PAGE_WIDTH_TT"] = "页面宽度，以像素为单位。请注意，某些背景只支持一定的高度/宽度比，并且可以变形。",
	["DO_PARAMS_CUSTOM"] = "页面自定义参数",
	["DO_PARAMS_GLOBAL"] = "默认参数",
	["DO_PARAMS_GLOBAL_TT"] = "改变文档的默认参数. 这些参数将用于所有页面,不使用自定义页面的参数.",
	["DO_PREVIEW"] = "单击预览",
	["DOC_UNKNOWN_ALERT"] = "无法打开文档。(缺少类)",
	["DR_DELETED"] = "损坏的: %s x%d",
	["DR_DROP_ERROR_INSTANCE"] = "不能在实例中删除项",
	["DR_DROPED"] = "扔掉在地上: %s x%d",
	["DR_NOTHING"] = "在这个地区没有发现任何物品.",
	["DR_POPUP"] = "搜这里",
	["DR_POPUP_ASK"] = [=[Total RP 3
 
选择如何处理该物品:
%s]=],
	["DR_POPUP_REMOVE"] = "毁掉",
	["DR_POPUP_REMOVE_TEXT"] = "要销毁吗?",
	["DR_RESULTS"] = "找到 %s 物品",
	["DR_SEARCH_BUTTON"] = "搜索 |cff00ff00我的|r 物品",
	["DR_SEARCH_BUTTON_TT"] = "搜索附近15码内你的物品.",
	["DR_STASHED"] = "藏了: %s x%d",
	["DR_STASHES"] = "藏匿",
	["DR_STASHES_CREATE"] = "创建一个藏宝箱在这里",
	["DR_STASHES_CREATE_TT"] = "在你站的地方创建一个藏宝箱.",
	["DR_STASHES_DROP"] = "你不能把物品丢在别人的藏物里.",
	["DR_STASHES_EDIT"] = "编辑宝藏",
	["DR_STASHES_ERROR_INSTANCE"] = "无法在实例中创建隐藏",
	["DR_STASHES_ERROR_OUT_SYNC"] = "宝藏同步失败，重试.",
	["DR_STASHES_ERROR_SYNC"] = "宝藏没有同步.",
	["DR_STASHES_FOUND"] = "发现宝藏: %s",
	["DR_STASHES_FULL"] = "这地方藏满了.",
	["DR_STASHES_HIDE"] = "躲避搜索",
	["DR_STASHES_HIDE_TT"] = [=[这些宝箱不会出现在其他玩家的地图扫描上.

请注意，如果他们知道它在哪里，他们将始终能够访问它。]=],
	["DR_STASHES_MAX"] = "最多 50 个字符",
	["DR_STASHES_NAME"] = "宝藏",
	["DR_STASHES_NOTHING"] = "这地方没发现宝藏.",
	["DR_STASHES_OWNERSHIP"] = "获得所有权",
	["DR_STASHES_OWNERSHIP_PP"] = [=[拥有这些东西?
当其他玩家扫描时，这个角色将显示为这个隐藏的拥有者。]=],
	["DR_STASHES_REMOVE"] = "删除宝藏",
	["DR_STASHES_REMOVE_PP"] = [=[删除宝藏?
|cffff9900All 存放在里面的东西会丢失!]=],
	["DR_STASHES_REMOVED"] = "宝藏被搬走了.",
	["DR_STASHES_RESYNC"] = "再同步",
	["DR_STASHES_SCAN"] = "搜索玩家的宝藏",
	["DR_STASHES_SCAN_MY"] = "搜索我的宝藏",
	["DR_STASHES_SEARCH"] = "搜索 |cff00ff00玩家|r 宝藏",
	["DR_STASHES_SEARCH_TT"] = [=[搜索15码内其他玩家的宝藏.

搜索需要3秒，别动!]=],
	["DR_STASHES_SYNC"] = "正在同步...",
	["DR_STASHES_TOO_FAR"] = "你离宝藏太远了.",
	["DR_STASHES_WITHIN"] = "|cff00ff00Your|r 15码内有宝藏",
	["DR_SYSTEM"] = "寻宝系统",
	["DR_SYSTEM_TT"] = [=[ 开始寻宝 /创建搜索 /查看自己藏匿点 .

这系统不能在地下城/竞技场/战场使用.]=],
	["EDITOR_BOTTOM"] = "下",
	["EDITOR_CANCEL_TT"] = [=[取消对整个对象 %s (根对象和所有内部对象).

|cffff9900没有保存的更改将丢失!]=],
	["EDITOR_CONFIRM"] = "确认",
	["EDITOR_HEIGHT"] = "高",
	["EDITOR_ICON"] = "选择图标",
	["EDITOR_ICON_SELECT"] = "选择一个图标.",
	["EDITOR_ID_COPY"] = "复制 ID",
	["EDITOR_ID_COPY_POPUP"] = "你可以复制下面的对象 ID 如果你需要在某个地方粘贴.",
	["EDITOR_MAIN"] = "主要",
	["EDITOR_MORE"] = "更多",
	["EDITOR_NOTES"] = "说明（不显示）",
	["EDITOR_PREVIEW"] = "预览",
	["EDITOR_SAVE_TT"] = "保存对整个对象 %s (根对象和所有内部对象) 的所有更改，并自动递增版本号。",
	["EDITOR_TOP"] = "上",
	["EDITOR_WARNINGS"] = [=[这里有 %s 警告.

|cffff9900%s|r

无论如何都要保存吗?]=],
	["EDITOR_WIDTH"] = "宽",
	["EFFECT_CAT_CAMERA"] = "照相机",
	["EFFECT_CAT_CAMERA_LOAD"] = "加载摄像头",
	["EFFECT_CAT_CAMERA_LOAD_TT"] = "根据先前保存的位置设置玩家的相机位置。",
	["EFFECT_CAT_CAMERA_SAVE"] = "保存相机",
	["EFFECT_CAT_CAMERA_SAVE_TT"] = "将玩家当前的相机位置保存在5个可用的保存槽中。",
	["EFFECT_CAT_CAMERA_SLOT"] = "槽数",
	["EFFECT_CAT_CAMERA_SLOT_TT"] = "指向一个可用插槽，1到5。",
	["EFFECT_CAT_CAMERA_ZOOM_DISTANCE"] = "变焦距离",
	["EFFECT_CAT_CAMERA_ZOOM_IN"] = "相机放大",
	["EFFECT_CAT_CAMERA_ZOOM_IN_TT"] = "把照相机调到规定的距离。",
	["EFFECT_CAT_CAMERA_ZOOM_OUT"] = "相机缩小",
	["EFFECT_CAT_CAMERA_ZOOM_OUT_TT"] = "把照相机调到规定的距离。",
	["EFFECT_CAT_CAMPAIGN"] = "剧本和任务",
	["EFFECT_CAT_SOUND"] = "声音和音乐",
	["EFFECT_CAT_SPEECH"] = "语言和表情",
	["EFFECT_COOLDOWN_DURATION"] = "冷却时间",
	["EFFECT_COOLDOWN_DURATION_TT"] = "冷却时间，以秒为单位。",
	["EFFECT_DIALOG_ID"] = "动画ID",
	["EFFECT_DIALOG_QUICK"] = "快速的动画",
	["EFFECT_DIALOG_QUICK_TT"] = "只需要一步就能生成一个快速的过场动画。它会自动将玩家的目标作为扬声器。",
	["EFFECT_DIALOG_START"] = "开始 动画",
	["EFFECT_DIALOG_START_PREVIEW"] = "开始动画% s。",
	["EFFECT_DIALOG_START_TT"] = "开始的动画。如果一个过场动画已经播放了，它将被中断，并被替换为这个过场动画。",
	["EFFECT_DISMOUNT"] = "下坐骑",
	["EFFECT_DISMOUNT_TT"] = "让玩家从当前坐骑下来。",
	["EFFECT_DISPET"] = "解散战斗宠物",
	["EFFECT_DISPET_TT"] = "解散当前调用的战斗宠物。",
	["EFFECT_DOC_CLOSE"] = "关闭文档",
	["EFFECT_DOC_CLOSE_TT"] = "关闭当前打开的文档。如果没有显示文档，什么也不做。",
	["EFFECT_DOC_DISPLAY"] = "显示文档",
	["EFFECT_DOC_DISPLAY_TT"] = "向玩家显示文档。如果已经显示了一个文档，那么它将被替换。",
	["EFFECT_DOC_ID"] = "文档 ID",
	["EFFECT_DOC_ID_TT"] = [=[文档显示。

|cffffff00请输入完整的文档ID(父ID和内部ID)。

|cffffff00提示:复制/粘贴完整的ID以确保避免输入错误。]=],
	["EFFECT_ITEM_ADD"] = "添加物品",
	["EFFECT_ITEM_ADD_CRAFTED"] = "精心制作",
	["EFFECT_ITEM_ADD_CRAFTED_TT"] = "将添加的项目标记为“由xxx制作的”，其中xxx将是玩家的名字。",
	["EFFECT_ITEM_ADD_ID"] = "物品 ID",
	["EFFECT_ITEM_ADD_ID_TT"] = [=[物品添加，

|cffffff00请输入完整的项ID(父ID和内ID)。

|cff00ff00提示:复制/粘贴完整的ID以确保避免拼写错误。]=],
	["EFFECT_ITEM_ADD_PREVIEW"] = "增加了 %s 到 %s",
	["EFFECT_ITEM_ADD_QT"] = "数量",
	["EFFECT_ITEM_ADD_QT_TT"] = [=[添加物品数量.

|cff00ff00请注意，插件将尽最大努力达到这个数量，但可能并不是所有的项目都将被添加:例如，如果包已经满了，或者如果这个项目有一个最大的单元，这个字符可以有('Unique独特的'属性)。]=],
	["EFFECT_ITEM_ADD_TT"] = "将物品添加到您的包中。",
	["EFFECT_ITEM_BAG_DURABILITY"] = "毁坏/修复容器",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD"] = "类型",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE"] = "毁坏",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_DAMAGE_TT"] = "父容器损坏。父容器的耐久值不能低于0。",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL"] = "修复",
	["EFFECT_ITEM_BAG_DURABILITY_METHOD_HEAL_TT"] = "修复父容器。父容器的健康状态不能超过容器的最大耐久性。",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_1"] = "|cff00ff00修复 |cffff00父容器%s耐久点。",
	["EFFECT_ITEM_BAG_DURABILITY_PREVIEW_2"] = "|cff00ff00毁坏 |cffff00父容器%s耐久点。",
	["EFFECT_ITEM_BAG_DURABILITY_TT"] = [=[修理或损坏物品父容器的耐久性。

|cff00ff00只适用于具有耐久性的容器。]=],
	["EFFECT_ITEM_BAG_DURABILITY_VALUE"] = "耐久点",
	["EFFECT_ITEM_BAG_DURABILITY_VALUE_TT"] = "从父容器健康状态中添加/减去耐久性的数量。",
	["EFFECT_ITEM_CONSUME"] = "消费物品",
	["EFFECT_ITEM_CONSUME_TT"] = "消耗用过的物品并销毁它。",
	["EFFECT_ITEM_COOLDOWN"] = "开始冷却时间",
	["EFFECT_ITEM_COOLDOWN_PREVIEW"] = "持续时间:%s 秒",
	["EFFECT_ITEM_COOLDOWN_TT"] = "为这个物品启动一个冷却时间。",
	["EFFECT_ITEM_DICE"] = "ROLL点",
	["EFFECT_ITEM_DICE_PREVIEW"] = "Roll出了%s",
	["EFFECT_ITEM_DICE_PREVIEW_STORED"] = "Roll到了%s并把结果保存到%s",
	["EFFECT_ITEM_DICE_ROLL"] = "Roll",
	["EFFECT_ITEM_DICE_ROLL_TT"] = [=[输入一个类似于/trp3 roll command配置命令
|cff00ff00比如：1d20，3d6..etc]=],
	["EFFECT_ITEM_DICE_ROLL_VAR"] = "变量名(可选)",
	["EFFECT_ITEM_DICE_ROLL_VAR_TT"] = [=[要存储掷骰子结果的变量。
如果不想存储结果，则保留空。]=],
	["EFFECT_ITEM_DICE_TT"] = "他们看到我在roll到了，他们嫉妒我。",
	["EFFECT_ITEM_LOOT"] = "显示/丢弃战利品",
	["EFFECT_ITEM_LOOT_DROP"] = "掉落物品",
	["EFFECT_ITEM_LOOT_DROP_TT"] = "将物品掉落在地上而不是呈现给玩家战利品。然后，玩家可以通过“搜索”功能掠夺他想要的物品",
	["EFFECT_ITEM_LOOT_NAME"] = "源名称",
	["EFFECT_ITEM_LOOT_NAME_TT"] = "这将是战利品容器的名称。",
	["EFFECT_ITEM_LOOT_PREVIEW_1"] = "将物品%s掉落在地上。",
	["EFFECT_ITEM_LOOT_PREVIEW_2"] = "用%s物品显示战利品。",
	["EFFECT_ITEM_LOOT_SLOT"] = "单击一个槽来配置它。",
	["EFFECT_ITEM_LOOT_TT"] = "向玩家显示战利品容器或将战利品放在玩家所在的地面上。",
	["EFFECT_ITEM_REMOVE"] = "销毁物品",
	["EFFECT_ITEM_REMOVE_ID_TT"] = [=[移除物品

|cffffff00请输入完整的项目ID(父ID和内ID).

|cff00ff00提示:复制/粘贴完整的ID以确保避免拼写错误。]=],
	["EFFECT_ITEM_REMOVE_PREVIEW"] = "销毁 %sx %s",
	["EFFECT_ITEM_REMOVE_QT_TT"] = "要删除的物品的数目。",
	["EFFECT_ITEM_REMOVE_TT"] = "从库存中销毁物品。",
	["EFFECT_ITEM_SOURCE"] = "搜索",
	["EFFECT_ITEM_SOURCE_1"] = "所有目录",
	["EFFECT_ITEM_SOURCE_1_ADD_TT"] = "将物品添加到整个字符目录中，从主容器开始。",
	["EFFECT_ITEM_SOURCE_1_SEARCH_TT"] = "搜索整个字符目录中的物品。",
	["EFFECT_ITEM_SOURCE_1_TT"] = "搜索整个字符目录中的物品。",
	["EFFECT_ITEM_SOURCE_2"] = "所有容器",
	["EFFECT_ITEM_SOURCE_2_ADD_TT"] = [=[仅在此物品父容器(以及任何子容器)中添加项。

只有当该脚本位于物品的文本中时，| cff9900才有效。]=],
	["EFFECT_ITEM_SOURCE_2_SEARCH_TT"] = [=[仅在此物品父容器(以及任何子容器)中搜索项。

只有当该脚本位于物品的文档中时，| cff9900才有效。]=],
	["EFFECT_ITEM_SOURCE_2_TT"] = [=[只在该项目父容器(以及任何子容器)中搜索该物品。

|cffff9900只在一个实列化脚本的物品文件中搜索.]=],
	["EFFECT_ITEM_SOURCE_3"] = "所有物品",
	["EFFECT_ITEM_SOURCE_3_ADD_TT"] = [=[仅添加此物品(和任何子容器)内添加物品。

| cffff9900只在此脚本位于物品文本的上下文中且该物品是容器时才有效。]=],
	["EFFECT_ITEM_SOURCE_3_SEARCH_TT"] = [=[仅在此物品(和任何子容器)内搜物品。

|cffff9900只在这个脚本是在一个物品上下文和这个物品是一个容器的情况下工作。]=],
	["EFFECT_ITEM_SOURCE_3_TT"] = [=[只在本项目(以及任何子容器)内搜索该物品。

|cffff9900如果这个脚本是在一个物品文件上下文中，而这个物品是一个容器，那么它只会起作用。]=],
	["EFFECT_ITEM_SOURCE_ADD"] = "添加到",
	["EFFECT_ITEM_SOURCE_ID"] = "您可以选择您想要搜索的物品ID，如果您想搜索所有类型的物品，则可以选择空。",
	["EFFECT_ITEM_SOURCE_SEARCH"] = "搜索",
	["EFFECT_ITEM_USE"] = "容器:物品使用",
	["EFFECT_ITEM_USE_PREVIEW"] = "在槽%s中使用物品",
	["EFFECT_ITEM_USE_TT"] = [=[在容器的槽中使用物品。

|cffff9900只有当此工作流由容器触发时，才有效。]=],
	["EFFECT_ITEM_WORKFLOW"] = "运行物品工作流",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_C"] = "触发槽%s中的子物品中的工作流%s。",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_P"] = "在父容器中触发工作流%s。",
	["EFFECT_ITEM_WORKFLOW_PREVIEW_S"] = "在槽%s中的同级物品中触发工作流%s。",
	["EFFECT_ITEM_WORKFLOW_TT"] = "运行一个工作流在父容器或者特定子物品中（仅限容器里）",
	["EFFECT_MISSING"] = "此效果(%s)未知，您应该删除它。",
	["EFFECT_OPERATION"] = "操作",
	["EFFECT_OPERATION_TYPE"] = "操作类型",
	["EFFECT_OPERATION_TYPE_ADD"] = "加法+",
	["EFFECT_OPERATION_TYPE_DIV"] = "除法\\",
	["EFFECT_OPERATION_TYPE_INIT"] = "初始化Init",
	["EFFECT_OPERATION_TYPE_INIT_TT"] = "仅当变量还不存在时，才将变量初始化为值。",
	["EFFECT_OPERATION_TYPE_MULTIPLY"] = "乘法*",
	["EFFECT_OPERATION_TYPE_SET"] = "集合Set",
	["EFFECT_OPERATION_TYPE_SET_TT"] = "将变量设置为一个值，即使变量已经初始化。",
	["EFFECT_OPERATION_TYPE_SUB"] = "减法-",
	["EFFECT_OPERATION_VALUE"] = "操作值",
	["EFFECT_PROMPT"] = "提示用户输入",
	["EFFECT_PROMPT_CALLBACK"] = "工作流回调(可选)",
	["EFFECT_PROMPT_CALLBACK_TT"] = [=[在用户输入之后调用的工作流名称。

这是可选的。留空将不使用任何回调。

将输入作为具有适当名称的工作流变量调用工作流。

|cffffff00警告:即使玩家在提示框中点击“取消”，也会调用回调函数。在这种情况下，如果变量存在，它将保持不变。]=],
	["EFFECT_PROMPT_DEFAULT"] = "默认值",
	["EFFECT_PROMPT_DEFAULT_TT"] = "输入的默认值。",
	["EFFECT_PROMPT_PREVIEW"] = "提示用户输入要存储在变量|cff00ff000% s|r中。",
	["EFFECT_PROMPT_TEXT"] = "弹出的文本",
	["EFFECT_PROMPT_TEXT_TT"] = "将在输入弹出框中显示给用户的文本。",
	["EFFECT_PROMPT_TT"] = [=[请求用户输入并将其存储在变量中。然后可以选择触发一个工作流。

|cffff0000警告，这个效果执行是异步的。]=],
	["EFFECT_PROMPT_VAR"] = "变量名",
	["EFFECT_PROMPT_VAR_TT"] = "存储用户输入的变量的名称。",
	["EFFECT_QUEST_GOTOSTEP"] = "改变 任务的步骤",
	["EFFECT_QUEST_GOTOSTEP_ID"] = "任务步骤ID",
	["EFFECT_QUEST_GOTOSTEP_ID_TT"] = [=[使用浏览器选择您的任务步骤(在链接到此效果之前，任务和任务步骤必须存在)。

如果您的任务步骤没有出现在浏览器中，保存您的剧本并再次尝试。]=],
	["EFFECT_QUEST_GOTOSTEP_PREVIEW"] = "转到下一步骤 %s。",
	["EFFECT_QUEST_GOTOSTEP_TT"] = [=[改变一个任务的步骤。

|cffff990000仅当任务是当前剧本的一部分，并且任务已经在任务日志中显示，才有效。]=],
	["EFFECT_QUEST_OBJ_ID"] = "目标 ID",
	["EFFECT_QUEST_OBJ_ID_TT"] = "输入目标ID。只输入目标ID，而不输入完整的剧本任务目标ID。",
	["EFFECT_QUEST_REVEAL_OBJ"] = "显示任务目标",
	["EFFECT_QUEST_REVEAL_OBJ_DONE"] = "完成目标",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_PREVIEW"] = "完成目标:%s为%s",
	["EFFECT_QUEST_REVEAL_OBJ_DONE_TT"] = [=[将目标标记为已完成。

|cffff990000仅当任务是当前剧本的一部分，如果任务已经在任务日志中被显示，并且目标已经被显示，才有效。]=],
	["EFFECT_QUEST_REVEAL_OBJ_PREVIEW"] = "显示目标:%s为%s",
	["EFFECT_QUEST_REVEAL_OBJ_TT"] = [=[显示任务目标。

|cffff990000仅当任务是当前剧本的一部分，并且任务已经在任务日志中显示，才有效。]=],
	["EFFECT_QUEST_START"] = "显示任务",
	["EFFECT_QUEST_START_ID"] = "任务ID",
	["EFFECT_QUEST_START_ID_TT"] = [=[使用浏览器选择您的任务(任务在链接到此效果之前必须存在)。

如果您的任务没有出现在浏览器中，保存您的剧本并再次尝试。]=],
	["EFFECT_QUEST_START_PREVIEW"] = "显示任务 %s",
	["EFFECT_QUEST_START_TT"] = [=[在任务日志中显示一个任务。

|cffff9900只有当任务是当前活动的一部分时，才有效。]=],
	["EFFECT_RANDSUM"] = "随机召唤战斗宠物",
	["EFFECT_RANDSUM_PREVIEW_FAV"] = "从你最喜欢的|c0000ff00池子中召唤一个随机战斗宠物。",
	["EFFECT_RANDSUM_PREVIEW_FULL"] = "从你全部的|c0000ff00池子中召唤一个随机战斗宠物。",
	["EFFECT_RANDSUM_SUMMON_FAV"] = "只有召唤最喜欢的宠物",
	["EFFECT_RANDSUM_TT"] = "随机召唤一只战斗宠物。",
	["EFFECT_RUN_WORKFLOW"] = "运行工作流",
	["EFFECT_RUN_WORKFLOW_ID"] = "工作流 ID",
	["EFFECT_RUN_WORKFLOW_ID_TT"] = "您想要运行的工作流ID。",
	["EFFECT_RUN_WORKFLOW_PREVIEW"] = "在%s中运行工作流%s。",
	["EFFECT_RUN_WORKFLOW_SLOT"] = "槽ID",
	["EFFECT_RUN_WORKFLOW_SLOT_TT"] = "要触发的容器槽的索引。插槽从左上角到右下角都以插槽1开头建立索引。",
	["EFFECT_RUN_WORKFLOW_TT"] = "运行另一个工作流。所有工作流变量将通过下一个传递。",
	["EFFECT_SCRIPT"] = "执行限制lua脚本",
	["EFFECT_SCRIPT_I_EFFECT"] = "插入效果",
	["EFFECT_SCRIPT_I_EFFECT_TT"] = [=[插入一个效果函数，光标在代码中。

该函数的形式为:
|cff00ffffeffect( effectID, args, arg1, arg2, ...);|r
- |cff00ffffEffect ID|r: 效果ID, 您可以通过查看addon源代码找到它.
- |cff00ffffargs|r: 执行参数:应该始终是args变量.
- |cff00ffffEffect arguments argX|r:所有的效果参数都可以在addon源代码中找到。

|cffffff00请始终保持“args”作为第二个参数， |r效果函数需要它，并且包含所有的工作流参数。
|cff00ff00目前，我们不会大量记录所有的效果ID和参数，因为我们认为这种效果仅限于能够查看addon源代码的用户。]=],
	["EFFECT_SCRIPT_SCRIPT"] = "Lua代码",
	["EFFECT_SCRIPT_SCRIPT_TT"] = [=[这个脚本将在一个安全的环境中执行，在这个环境中，您可以访问所有lua synthax和API(表、字符串、math…)和扩展的|cff00ff00effect|r 效果函数.

|cffff0000你不能访问这里的游戏API!|r

自定义lua脚本总是比工作流效果更低效，因为它每次都被编译，以反对被编译一次的工作流效果。

|cffff9900因此，将脚本保持在最小值，并且只在必要时使用此脚本效果。]=],
	["EFFECT_SCRIPT_TT"] = "在受限制的安全环境中执行lua脚本。",
	["EFFECT_SHEATH"] = "切换武器",
	["EFFECT_SHEATH_TT"] = "拿出或者举起武器.",
	["EFFECT_SIGNAL"] = "发送信号",
	["EFFECT_SIGNAL_ID"] = "信号ID",
	["EFFECT_SIGNAL_ID_TT"] = "这是你信号的ID。可以测试游戏事件|cff00ff00TRP3_SIGNAL|r是否触发条件和工作流。",
	["EFFECT_SIGNAL_PREVIEW"] = "|cffff00发送信号ID:|r %s|cffffff00，值:|r %s",
	["EFFECT_SIGNAL_TT"] = [=[向玩家的目标发送一个带有ID和值的信号。

这个信号可以通过活动/任务/步骤，游戏事件链接通过事件|cff00ff00TRP3_SIGNAL|r来处理。]=],
	["EFFECT_SIGNAL_VALUE"] = "Signal value",
	["EFFECT_SIGNAL_VALUE_TT"] = "它是信号的值。可以测试由游戏事件|cff00ff00TRP3_SIGNAL|r触发的条件和工作流，并插入文本标记，如|cff00ff00${event.2}|r。",
	["EFFECT_SOUND_ID_LOCAL"] = "播放本地的声音",
	["EFFECT_SOUND_ID_LOCAL_PREVIEW"] = "在%s码半径范围内播放音频ID %s。",
	["EFFECT_SOUND_ID_LOCAL_STOP"] = "停止本地的声音",
	["EFFECT_SOUND_ID_LOCAL_STOP_TT"] = "为你周围的玩家在一个特定的频道中停止一个或所有的声音。",
	["EFFECT_SOUND_ID_LOCAL_TT"] = "为你周围的玩家播放声音。",
	["EFFECT_SOUND_ID_SELF"] = "播放声音 ID",
	["EFFECT_SOUND_ID_SELF_CHANNEL"] = "频道",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE"] = "气氛",
	["EFFECT_SOUND_ID_SELF_CHANNEL_AMBIANCE_TT"] = [=[气氛是一个针对气氛的声音. 它使用气氛音量游戏选项

多种不同的气氛可以同时播放

|cffff9900请不要使用这种效果来播放音乐，因为这不会停止当前的游戏音乐，而你将会使音乐相互重叠。如果你想演奏一种音乐，使用适当的音乐效果。]=],
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX"] = "SFX音效",
	["EFFECT_SOUND_ID_SELF_CHANNEL_SFX_TT"] = [=[SFX是了实列化音效。它使用音量游戏选项。

可以同时播放多个不同的SFX声音。]=],
	["EFFECT_SOUND_ID_SELF_ID"] = "声音 ID",
	["EFFECT_SOUND_ID_SELF_ID_TT"] = [=[ID是游戏中声音的内部标识符。

|cff00ff00你可以在像wowhead这样的网站上找到所有的ID。

|cffff9900如果ID指向多个子声音，则会随机选择子声音。]=],
	["EFFECT_SOUND_ID_SELF_PREVIEW"] = "播放声音 ID %s 在频道 %s.",
	["EFFECT_SOUND_ID_SELF_TT"] = "在特定的频道播放声音。只有玩家才能听到。",
	["EFFECT_SOUND_ID_STOP"] = "停止 声音ID",
	["EFFECT_SOUND_ID_STOP_ALL_PREVIEW"] = "在频道%s中停止|cff00ff00所有|cffffff00声音。",
	["EFFECT_SOUND_ID_STOP_PREVIEW"] = "在频道%s中停止声音ID %s。",
	["EFFECT_SOUND_ID_STOP_TT"] = "在一个特定的频道中停止一个或所有的声音。",
	["EFFECT_SOUND_LOCAL_DISTANCE"] = "回放半径",
	["EFFECT_SOUND_LOCAL_DISTANCE_TT"] = "确定其他玩家听到这个声音的范围。",
	["EFFECT_SOUND_MUSIC_LOCAL"] = "播放音乐",
	["EFFECT_SOUND_MUSIC_LOCAL_PREVIEW"] = "播放音乐\\\"%s\\\" 在 %s 码的距离.",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP"] = "停止本地音乐",
	["EFFECT_SOUND_MUSIC_LOCAL_STOP_TT"] = [=[如果你使用“播放本地音乐”效果，音乐将循环播放所有玩家，直到游戏播放另一种音乐(例如:玩家进入一个新区域)，或者每个玩家手动停止，或者直到你使用这个效果。

|cffff9900注意，这个效果只会停止插件播放的音乐，而不会停止游戏播放的音乐。]=],
	["EFFECT_SOUND_MUSIC_LOCAL_TT"] = "为你周围的玩家播放音乐。",
	["EFFECT_SOUND_MUSIC_SELF"] = "播放音乐",
	["EFFECT_SOUND_MUSIC_SELF_PATH"] = "音乐目录",
	["EFFECT_SOUND_MUSIC_SELF_PATH_TT"] = [=[游戏文件中的音乐路径。

|cffff9900形式以 Sounds\\Music\\音乐文件.mp3 结尾.]=],
	["EFFECT_SOUND_MUSIC_SELF_PREVIEW"] = "播放音乐: %s",
	["EFFECT_SOUND_MUSIC_SELF_TT"] = [=[播放一个音乐。只有玩家才能听到

音乐将会循环播放，直到游戏播放他自己的音乐 (比如进入一个区域), 或者直到播放 \"停止播放\" 效果为止。此外，玩家还可以通过声音的历史框架手动停止播放音乐。]=],
	["EFFECT_SOUND_MUSIC_STOP"] = "停止播放",
	["EFFECT_SOUND_MUSIC_STOP_TT"] = [=[如果你使用\“播放音乐\”效果，音乐将会循环播放，直到游戏播放另一段音乐(例如:玩家进入一个新的区域)，或者如果玩家手动停止，或者直到你使用这个效果。

|cffff9900 请注意，这个效果只会停止插件播放的音乐，也不会停止游戏中播放的音乐。]=],
	["EFFECT_SOUND_PLAY"] = "播放",
	["EFFECT_SOURCE"] = "源",
	["EFFECT_SOURCE_CAMPAIGN"] = "剧本",
	["EFFECT_SOURCE_CAMPAIGN_TT"] = "搜索当前剧本中的变量，如果当前有一个激活的剧本。",
	["EFFECT_SOURCE_OBJECT"] = "目标",
	["EFFECT_SOURCE_OBJECT_TT"] = [=[在工作流源对象中搜索变量。

只有当源对象是物品或剧本/任务/步骤时才有效。

对于剧本、任务或任务步骤，变量将在剧本级别(整个剧本的全局搜索)中搜索。]=],
	["EFFECT_SOURCE_PARENT"] = "父容器",
	["EFFECT_SOURCE_PARENT_TT"] = "在父容器项中搜索工作流。",
	["EFFECT_SOURCE_SLOT"] = "物品槽(子)",
	["EFFECT_SOURCE_SLOT_B"] = "物品槽(兄弟)",
	["EFFECT_SOURCE_SLOT_B_TT"] = "在同一父容器的特定槽中搜索物品中的工作流。",
	["EFFECT_SOURCE_SLOT_TT"] = "在容器物品内的特定槽中搜索项中的工作流。只适用于容器类的物品!",
	["EFFECT_SOURCE_V"] = "变量的来源",
	["EFFECT_SOURCE_W"] = "工作流源",
	["EFFECT_SOURCE_WORKFLOW"] = "工作流",
	["EFFECT_SOURCE_WORKFLOW_TT"] = "在工作流执行中搜索变量。此变量的作用域仅限于工作流执行，之后将被丢弃。",
	["EFFECT_SPEECH_NAR"] = "对话:叙述",
	["EFFECT_SPEECH_NAR_DEFAULT"] = "今晚大雪把整个山装扮成白色……",
	["EFFECT_SPEECH_NAR_TEXT_TT"] = "请不要包括the leading pipe||角色。",
	["EFFECT_SPEECH_NAR_TT"] = [=[以正式的表情来播放叙述。

|cff00ff00与以||(管道字符)开头的emote表情具有相同的效果。它将以聊天的形式提供给其他TRP用户。]=],
	["EFFECT_SPEECH_NPC"] = "对话：NPC",
	["EFFECT_SPEECH_NPC_DEFAULT"] = "你想堆雪人吗?",
	["EFFECT_SPEECH_NPC_NAME"] = "NPC 名字",
	["EFFECT_SPEECH_NPC_NAME_TT"] = "这NPC名字",
	["EFFECT_SPEECH_NPC_TT"] = [=[作为正式的表情播放npc讲话。

|cff00ff00的效果与使用带有npc名称和文本的||(管道字符)开头的emote相同。它将以聊天的形式提供给其他TRP用户。]=],
	["EFFECT_SPEECH_PLAYER"] = "对话: 玩家",
	["EFFECT_SPEECH_PLAYER_DEFAULT"] = "让巨龙吞噬你!",
	["EFFECT_SPEECH_PLAYER_TT"] = "使玩家说话，喊叫或做一个 /e 表情。",
	["EFFECT_SPEECH_TYPE"] = "对话类型",
	["EFFECT_SUMMOUNT"] = "召唤一个坐骑",
	["EFFECT_SUMMOUNT_ACTION_TT"] = "选择一个特定的坐骑",
	["EFFECT_SUMMOUNT_NOMOUNT"] = "没有坐骑被选择",
	["EFFECT_SUMMOUNT_RANDOMMOUNT"] = "随机坐骑",
	["EFFECT_SUMMOUNT_TT"] = "召唤一个特定的坐骑，如果可以的话",
	["EFFECT_TEXT"] = [=[显示文本
]=],
	["EFFECT_TEXT_PREVIEW"] = "显示文本",
	["EFFECT_TEXT_TEXT"] = "文本",
	["EFFECT_TEXT_TEXT_DEFAULT"] = [=[Hi~ o(*￣▽￣*)ブ.
你好]=],
	["EFFECT_TEXT_TEXT_TT"] = "这段文本会被显示.",
	["EFFECT_TEXT_TT"] = [=[显示一段文本.
可以输出不同的对话.]=],
	["EFFECT_TEXT_TYPE"] = "文本种类",
	["EFFECT_TEXT_TYPE_1"] = "聊天窗口文本",
	["EFFECT_TEXT_TYPE_2"] = "警告弹出",
	["EFFECT_TEXT_TYPE_3"] = "警告文本",
	["EFFECT_TEXT_TYPE_4"] = "警告信息",
	["EFFECT_USE_SLOT"] = "容器槽数",
	["EFFECT_USE_SLOT_TT"] = "容器槽号从左到右，从上到下分配。",
	["EFFECT_VAR"] = "变量名",
	["EFFECT_VAR_INDEX"] = "参数指标",
	["EFFECT_VAR_INDEX_TT"] = [=[论点的索引。

如果要检查事件的第三个参数，请输入3。]=],
	["EFFECT_VAR_OBJECT_CHANGE"] = "操作变量",
	["EFFECT_VAR_OBJECT_CHANGE_TT"] = [=[执行一个操作在一个变量中.

|cffff9900数学操作:如果变量不存在或不能扮演一个数字,它将初始化在0.]=],
	["EFFECT_VAR_OPERAND"] = "变量的动态值",
	["EFFECT_VAR_OPERAND_CONFIG"] = "值配置",
	["EFFECT_VAR_OPERAND_CONFIG_NO"] = "没有这个值的配置",
	["EFFECT_VAR_OPERAND_TT"] = "在变量中放置一个动态值。您可以从条件中访问所有的测试值。",
	["EFFECT_VAR_VALUE"] = "可变值",
	["EFFECT_W_CAMPAIGN_TT"] = "在当前激活的剧本中搜索工作流。",
	["EFFECT_W_OBJECT_TT"] = "在同一个对象中查找工作流。",
	["ERROR_MISSING_ARG"] = "当尝试调用函数%2$s时，缺少参数%1$s。",
	["EX_SOUND_HISTORY"] = "声音历史",
	["EX_SOUND_HISTORY_CLEAR"] = "清除",
	["EX_SOUND_HISTORY_EMPTY"] = "没有播放任何声音。",
	["EX_SOUND_HISTORY_LINE"] = "在频道%s播放声音ID %s。",
	["EX_SOUND_HISTORY_REPLAY"] = "重播",
	["EX_SOUND_HISTORY_STOP"] = "停止",
	["EX_SOUND_HISTORY_STOP_ALL"] = "停止一切",
	["EX_SOUND_HISTORY_TT"] = [=[看看播放了什么声音，看看它们来自哪里，如果它们还在播放，就停止播放。

| cffffff00Click:| r打开声音的历史
| cffffff00Right-click:| r /音乐停止所有声音]=],
	["IN_INNER"] = "内部对象",
	["IN_INNER_ADD"] = "添加内部对象",
	["IN_INNER_ADD_COPY"] = "添加现有对象的副本",
	["IN_INNER_ADD_NEW"] = "创建新的对象",
	["IN_INNER_COPY_ACTION"] = "复制 对象的内容",
	["IN_INNER_DELETE_CONFIRM"] = [=[移除内部对象|cff00ff“%s”|r |cff00ff00[%s]|r从父对象|cff00ff00[%s]|r?

|cffff9900将丢失内部对象。]=],
	["IN_INNER_DELETE_TT"] = "从父对象中删除这个内部对象.",
	["IN_INNER_EMPTY"] = [=[没有内部对象

您可以使用下面的添加按钮添加一个。]=],
	["IN_INNER_ENTER_ID"] = "输入新内部对象 ID",
	["IN_INNER_ENTER_ID_NO_SPACE"] = "对象id不能包含空格。记住，这不是对象的名字!",
	["IN_INNER_ENTER_ID_TT"] = [=[内部对象ID必须在父对象中是唯一的。

|cffff9900请只使用小写字符和下划线。任何其他字符将转换为下划线。
]=],
	["IN_INNER_HELP"] = [=[内部对象是存储在父对象中的对象。
我们应该从一些例子开始:
|cffff9900
-你想要制造一个带有子弹的步枪物品。一般来说，步枪是主要的对象，子弹的目标是步枪的内部对象。
-打开一封邮件的内容。该内容将是邮件的内部对象。
-创建任务:你在任务中使用的任何物品/文档/过场动画都可以是这个任务的内部对象。
使用内部对象的优点有很多:
|cff00ff00
-内部对象数据确实存储在父对象数据中。这意味着它们共享相同的版本号，并且它们的数据与父对象数据同时交换。
-您可以自由地确定内部对象ID，因为它将使用父对象ID作为前缀。不能让两个内部对象在同一个父对象中具有相同的ID。
-使用内部对象带来更好的性能。
-如果对象存储在父对象中，则更容易管理和导航。您可以将父对象视为存储文件的文件夹。
|r这很简单:当你想要创建一个对象时，一定要问问自己，如果把它作为另一个物品或任务的内部对象，是不是更好。
|cff00ff00同样的: 文档和过场动画只可能是内部对象！]=],
	["IN_INNER_HELP_TITLE"] = "内部对象是什么?",
	["IN_INNER_ID"] = [=[请为内部对象|cff00ff00[%s]|r输入新的ID。

老ID:|cff00ffff“% s”| r]=],
	["IN_INNER_ID_ACTION"] = "改变（内部对象）ID",
	["IN_INNER_ID_COPY"] = "复制",
	["IN_INNER_ID_COPY_TT"] = "可以复制内部对象，将其粘贴到任何其他父对象中。",
	["IN_INNER_LIST"] = "内部对象清单",
	["IN_INNER_NO_AVAILABLE"] = "此内部ID不可用!",
	["IN_INNER_PASTE_ACTION"] = "粘贴对象内容",
	["IN_INNER_PASTE_CONFIRM"] = "将内部对象的内容替换为先前复制的对象?",
	["IN_INNER_S"] = "内部对象 ",
	["INV_PAGE_CAMERA_CONFIG"] = [=[摄像机参数:
   循环: %.2f]=],
	["INV_PAGE_CHARACTER_INSPECTION"] = "角色检查",
	["INV_PAGE_CHARACTER_INSPECTION_TT"] = "检查这个角色目录",
	["INV_PAGE_CHARACTER_INV"] = "背包",
	["INV_PAGE_EDIT_ERROR1"] = "你必须是这个物品的作者才能来编辑它",
	["INV_PAGE_EDIT_ERROR2"] = "这个物品不在快速模式",
	["INV_PAGE_INV_OPEN"] = "打开背包",
	["INV_PAGE_ITEM_LOCATION"] = "角色的物品所在地",
	["INV_PAGE_LOOT_ALL"] = "所有战利品",
	["INV_PAGE_MARKER"] = [=[标记的位置:
   x: %.2f
   y: %.2f]=],
	["INV_PAGE_PLAYER_INV"] = "%s的背包",
	["INV_PAGE_QUICK_SLOT"] = " 行囊袋",
	["INV_PAGE_QUICK_SLOT_TT"] = "将包包拖到这个槽作为主容器.",
	["INV_PAGE_SEQUENCE"] = "序列 ID",
	["INV_PAGE_SEQUENCE_PRESET"] = "您可以选择一个表情对应于一个序列 ID",
	["INV_PAGE_SEQUENCE_TT"] = [=[您可以通过输入一个动画ID来更改您的角色的姿态，并选择下面的滑块的动画帧。

警告:如果动画闪烁，是因为你的种族模型的动画有问题。如果发生，请选择另一个动画]=],
	["INV_PAGE_TOTAL_VALUE"] = "物品总价值",
	["INV_PAGE_TOTAL_VALUE_TT"] = [=[这是你的身上物品资产总价.

这不是 \"钱\" 的数量，是包括背包所有物品的预估总价.]=],
	["INV_PAGE_WAIT"] = "等待响应",
	["INV_PAGE_WEAR_ACTION"] = "设置物品位置",
	["INV_PAGE_WEAR_ACTION_RESET"] = "重置位置",
	["INV_PAGE_WEAR_TT"] = [=[这物品可以穿戴.
绿色区域指示该物品穿戴在角色哪个部位.]=],
	["INV_TU_1"] = [=[您可以在每个目录槽中放置一个物品(或一堆物品)。
|cff00ff00您的容量不限，因为您可以有无限数量的袋子和容器。你也可以在容器里装容器。
|cffff9900唯一要注意的是每个容器的载重量.|r
如果一个容器有一个最大的重量容量，而你超过这个容量，它将慢慢地被损坏，并且可以随机地掉落在地上!]=],
	["INV_TU_2"] = [=[你在这里放置的任何袋子都可以作为主要容器。
|cffff9900总是有一个主容器和空闲空间是非常重要的，因为它是与其他玩家交换物品时使用的容器。
|cff00ff00也可以很容易地打开主容器，在TRP工具栏上的按钮上。]=],
	["INV_TU_3"] = [=[对于直接出现在角色上的物品(不是放在袋子里的)，如果它们是可穿戴的(这是物品作者的选择)，|cff00ff00你可以指出它们在你角色中的位置。
点击物品附近的点并将标记放在你的角色上。你也可以旋转你的角色，选择他的姿势。
当有人在你身上使用检查功能时，他们会看到带有正确角色姿势的标记!
您可以通过选择字符来检查某人的库存，并单击目标栏按钮|cff00ff00“角色检查”|r。
注意，两个玩家必须使用TRP扩展来互相检查。]=],
	["INV_TU_4"] = [=[当拖放物品到存货清单外时，你将被要求选择是销毁它还是把它扔在地上
你可以把物品(几乎)丢到世界各地。然后，你可以使用工具栏上的“搜索条目”按钮，在稍后的时间里把它们找回来。
您还可以通过“扫描我的物品”按钮在地图上看到所有丢掉的物品。
注意，有时物品会自动掉落:如果你收到物品但你的库存已经满了，或者你的一个包坏了。]=],
	["INV_TU_5"] = [=[你可以通过拖放堆叠的方式与其他玩家交换物品(或物品的堆叠)(就像游戏一样)。
当有人给你一件物品时，交换框会告诉你这件物品是否会有恼人的效果(没人希望他们的角色大喊恐怖的东西)。
在这种情况下，TRP将把这些效果转换成一种破坏性较小的形式(例如，叫喊将转换成个人文本)，直到您决定解除它们的封锁。
你可以通过Alt +右键点击物品列表中的物品来阻止/取消阻止效果和白名单效果或者玩家。]=],
	["INV_TU_5_V2"] = [=[您可以通过拖放堆栈(就像游戏一样)或使用目标帧上的专用按钮与其他玩家交换一个物品(或一堆物品)。

当有人给你一件物品时，交换框会告诉你这件物品是否会有恼人的效果(没人希望他们的角色大喊恐怖的东西)。

在这种情况下，TRP将把这些效果转换成一种破坏性较小的形式(例如，叫喊将转换成个人文本)，直到您决定解除它们的封锁。

你可以通过Alt +右键点击物品列表中的物品来阻止/取消阻止效果和白名单效果或者玩家。]=],
	["IT_CAST"] = "扔掉",
	["IT_CO_DURABILITY"] = "耐久（0表示无耐久）",
	["IT_CO_DURABILITY_TT"] = [=[确定容器的整体最大健康状况。一个容器可能会随着时间的推移而失去健康，或者会被破坏。但也可以用适当的物品来修理。

|cff00ff00 0意味着无懈可击。]=],
	["IT_CO_MAX"] = "最大重量 (g/克)",
	["IT_CO_MAX_TT"] = [=[这限制了你容器的最大容量，超过将会导致容器磨损

|cff00ff00 0意味着没有磨损

|cffff9900 请输入最大重量的克数.]=],
	["IT_CO_ONLY_INNER"] = "只能包含内项",
	["IT_CO_ONLY_INNER_TT"] = [=[标记这个容器可以只包含来自同一根对象的子条目。

目前，只有具有该选项的容器可以在包含项目的同时进行交易。]=],
	["IT_CO_SIZE"] = "容器大小",
	["IT_CO_SIZE_COLROW"] = "%s |行;  %s 列",
	["IT_CON"] = "容器",
	["IT_CON_CAN_INNER"] = "不能把这个背包放进自己包包里!",
	["IT_CON_ERROR_TRADE"] = "你不能删除这个背包，如果它不是空的.",
	["IT_CON_ERROR_TYPE"] = "这个背包不能容纳这件的物品.",
	["IT_CON_OPEN"] = "打开/关闭背包",
	["IT_CON_TT"] = "容器 (%d/%d 已用)",
	["IT_CON_TT_MISSING_CLASS"] = "物品 ID 丢失",
	["IT_CONTAINER_TT"] = [=[将此项设置为容器。容器可以存放其他物品。

|cff00ff00在这个编辑器的“容器”标签中可以配置容器。]=],
	["IT_CONVERT_TO_NORMAL"] = "转换为正常模式",
	["IT_CONVERT_TO_NORMAL_TT"] = [=[你处于快速模式，这是创建简单项目的第一步。

你可以在正常模式下进一步编辑这个项目。这将给你带来更多的可能性，但学习和使用也更加复杂。

|cffff9900警告:如果您将此项目转换为正常模式，您不能将其还原为快速模式。]=],
	["IT_CRAFTED"] = "精心制作的",
	["IT_CRAFTED_TT"] = "当这个项目的一个单元被添加到您的包或由另一个项目创建时，它将指示您作为工具提示中的创建者。",
	["IT_DISPLAY_ATT"] = "显示属性",
	["IT_DOC_ACTION"] = "阅读文档",
	["IT_DR_SOUND"] = "丢弃音效",
	["IT_EX_DOWNLOAD"] = "下载",
	["IT_EX_DOWNLOAD_TT"] = [=[|cffff9900这个物品是%s长消息，并且至少需要%。1f秒下载(以最佳状态)。

|cff00ff00单击请求%s发送关于此物品的所有数据。

|cffff9900如果你没有收到的所有物品的最新信息，你就无法完成交易。]=],
	["IT_EX_DOWNLOADING"] = "下载: %0.1f %%",
	["IT_EX_EMPTY"] = "没东西交易",
	["IT_EX_EMPTY_DRAG"] = "你可以在这里拖拽物品.",
	["IT_EX_SLOT_DOWNLOAD"] = [=[|r你没有关于这个物品的信息。

|cff00ff00如果物品不是太大，TRP3会从%s自动下载。

|cffff9900如果它太大，你可以手动请求它的信息与下载按钮，但记住它可能需要一些时间下载。]=],
	["IT_EX_TRADE_BUTTON"] = "开放交流",
	["IT_EX_TRADE_BUTTON_TT"] = "打开交易框架与此玩家开始交易物品。",
	["IT_FIELD_NAME"] = "物品名称",
	["IT_FIELD_NAME_TT"] = "它是您的项目名称，因为它将出现在聊天框的工具提示或条目链接中。",
	["IT_FIELD_QUALITY"] = "物品质量",
	["IT_GAMEPLAY_ATT"] = "游戏属性",
	["IT_INV_ERROR_CANT_DESTROY_LOOT"] = "不能销毁这个战利品.",
	["IT_INV_ERROR_CANT_HERE"] = "你不能把东西放这.",
	["IT_INV_ERROR_FULL"] = "%s 满了.",
	["IT_INV_ERROR_MAX"] = "你不能携带更多 %s.",
	["IT_INV_GOT"] = "Received: %s x%d",
	["IT_INV_SCAN_MY_ITEMS"] = "搜索我的物品",
	["IT_INV_SHOW_ALL"] = "显示所有装备",
	["IT_INV_SHOW_CONTENT"] = [=[|cffffff00左击:|r 打开主背包 (如果存在)
|cffffff00右击:|r 打开装备栏]=],
	["IT_LOOT_ERROR"] = "现在不能显示战利品，另一个战利品目前显示.",
	["IT_NEW_NAME"] = "新的物品",
	["IT_NEW_NAME_CO"] = "新的容器",
	["IT_NO_ADD"] = "防止手动添加",
	["IT_NO_ADD_TT"] = "防止玩家手动添加物品到他的库存。然后它只能通过工作流添加或掠夺。",
	["IT_ON_USE"] = "在使用中",
	["IT_ON_USE_TT"] = [=[当玩家使用这个项目时，这个工作流将被触发。

|cffff9900Note:|r 如果您想要为这个项目提供更多的工作流程，您可以通过数据库视图将它转换为专家模式 (b通过右键单击并选择 |cff00ff00专家模式|r).]=],
	["IT_PU_SOUND"] = "拾取音效",
	["IT_PU_SOUND_1183"] = "包",
	["IT_PU_SOUND_1184"] = "书",
	["IT_PU_SOUND_1185"] = "衣服",
	["IT_PU_SOUND_1186"] = "食物",
	["IT_PU_SOUND_1187"] = "草药",
	["IT_PU_SOUND_1188"] = "锁链",
	["IT_PU_SOUND_1189"] = "肉",
	["IT_PU_SOUND_1190"] = "金属 大",
	["IT_PU_SOUND_1191"] = "金属 小",
	["IT_PU_SOUND_1192"] = "纸",
	["IT_PU_SOUND_1193"] = "戒指",
	["IT_PU_SOUND_1194"] = "石头",
	["IT_PU_SOUND_1195"] = "锁链 小",
	["IT_PU_SOUND_1196"] = "魔杖",
	["IT_PU_SOUND_1197"] = "液体",
	["IT_PU_SOUND_1198"] = "木 小",
	["IT_PU_SOUND_1199"] = "木 大",
	["IT_PU_SOUND_1221"] = "宝石",
	["IT_QUEST"] = "任务标记（！）",
	["IT_QUEST_TT"] = [=[向项目图标添加一个标记，以指示使用该项应启动任务。

|cffff7700像其他的显示属性一样，它只是一个可视的标志，你的项目不需要真的能够开始一个任务]=],
	["IT_QUICK_EDITOR"] = "新的物品编辑",
	["IT_QUICK_EDITOR_EDIT"] = "物品快速编辑",
	["IT_SOULBOUND_TT"] = "该物品将被绑定到玩家的库存，不能交换或掉在地上。",
	["IT_STACK"] = "堆叠",
	["IT_STACK_COUNT"] = "每堆最大数量",
	["IT_STACK_COUNT_TT"] = "设置可以在同一个容器槽中堆叠的最大单位。应该大于1。",
	["IT_STACK_TT"] = "允许将此项目的单元堆放在同一个容器槽中。",
	["IT_TRIGGER_ON_DESTROY"] = "销毁一堆",
	["IT_TRIGGER_ON_DESTROY_TT"] = [=[当玩家销毁此物品的一堆时触发 (拖动 & 抛弃 从库存中删除并确认).|cffff9900

每个堆栈中触发一次，而在实际的堆栈销毁之前 (因此，计算这个工作流中的项目单元仍将计算堆栈)]=],
	["IT_TRIGGER_ON_USE"] = "在使用",
	["IT_TRIGGER_ON_USE_TT"] = [=[触发每次玩家使用该物品。

|cff00ff00别忘了让你的物品在主标签中使用。]=],
	["IT_TT_DESCRIPTION"] = "提示描述",
	["IT_TT_DESCRIPTION_TT"] = [=[这是你的项目描述。

|cff00ff00这里不应该是一面墙的文字，尽量保持简洁。

如果你的物品是可用的，试着在这里提示一下应该如何使用。]=],
	["IT_TT_LEFT"] = "物品描述（左边）",
	["IT_TT_LEFT_TT"] = [=[它是一个自由的文本，将在工具栏显示，属于物品名.

|cff00ff00一个好的例子说明了物品类型(盔甲, 衣服, 武器, 药剂 ...).]=],
	["IT_TT_REAGENT"] = "试剂标记（看上去像试剂而已）",
	["IT_TT_REAGENT_TT"] = [=[显示\"制作试剂\" 在工具栏中.

|cffff7700像其他的显示属性一样，它只是一个可视的标志，你的项目不需要真的是一个手工制作的过程]=],
	["IT_TT_RIGHT"] = "物品描述（右边）",
	["IT_TT_RIGHT_TT"] = [=[它是一个自由的文本，它将在工具提示中，在左边的自定义文本中。

|cff00ff00一个很好的例子说明了在左边的自定义文本中输入的条目类型的精度。

例如，如果你将盔甲作为左侧的自定义文字，你可以在这里精确地戴上头盔或手套。]=],
	["IT_TT_VALUE"] = "物品价值",
	["IT_TT_VALUE_FORMAT"] = "物品价值 (钱 %s)",
	["IT_TT_VALUE_TT"] = [=[这个值将被告知工具提示扩展(按住Alt)或在事务中。

|cffff7700如果你认为这个东西是无价的，请写0。0并不意味着没有价值，它意味着这个值是没有定义的。]=],
	["IT_TT_WEIGHT"] = "物品重量",
	["IT_TT_WEIGHT_FORMAT"] = "物品重量 (克)",
	["IT_TT_WEIGHT_TT"] = [=[重量影响容器的总重量。

|cffff7700请输入重量的值（g）, 因为它将被转换为显示的用户选择的单位。]=],
	["IT_UNIQUE_COUNT"] = "最大单位",
	["IT_UNIQUE_COUNT_TT"] = "设置一个字符所能拥有的最大单位。应该大于0。",
	["IT_UNIQUE_TT"] = "当活动时，一个字符所能拥有的最大单项单元将受到限制。",
	["IT_USE"] = "可用的",
	["IT_USE_TEXT"] = "使用方法",
	["IT_USE_TEXT_TT"] = "本文将在工具栏中解释使用此项的效果。",
	["IT_USE_TT"] = [=[允许该项目可用。

|cff00ff00您可以在这个编辑器的“工作流”选项卡中配置项目使用效果。]=],
	["IT_WARNING_1"] = "不应该使一个物品既可堆叠，又可制作。(%s)",
	["IT_WARNING_2"] = "不应该做一个可堆叠的容器。 (%s)",
	["IT_WEARABLE"] = "可穿戴的",
	["IT_WEARABLE_TT"] = [=[使此项目能够用于检查功能，并允许您精确地将其放置在您的角色上。

|cffff9900如果这面旗帜是被检查的，人们会在你的清单上看到这个项目，如果他们检查你，即使你没有配置项目的位置。]=],
	["ITEM_ID"] = "物品 ID",
	["LOOT"] = "战利品",
	["LOOT_CONTAINER"] = "战利品箱子",
	["LOOT_DISTANCE"] = "你走得太远了。",
	["MODE_EXPERT"] = "超严谨RP",
	["MODE_NORMAL"] = "正常RP",
	["MODE_QUICK"] = "快速RP",
	["NEW_EXTENDED_VERSION"] = "|cffff9900 TRP3的新版本:Extended (%s)可用。|cff00ff00快去Curse下载!",
	["NPC_EMOTES"] = "表情",
	["NPC_SAYS"] = "说",
	["NPC_WHISPERS"] = "悄悄说",
	["NPC_YELLS"] = "喊",
	["OP_ADD_TEST"] = "增加测试",
	["OP_AND"] = "和",
	["OP_AND_SWITCH"] = "切换到和",
	["OP_BOOL"] = "布尔值",
	["OP_BOOL_FALSE"] = "（布尔值）假",
	["OP_BOOL_TRUE"] = "（布尔值）真",
	["OP_COMP_EQUALS"] = "等于",
	["OP_COMP_GREATER"] = "大于",
	["OP_COMP_GREATER_OR_EQUALS"] = "大于等于",
	["OP_COMP_LESSER"] = "小于",
	["OP_COMP_LESSER_OR_EQUALS"] = "小于等于",
	["OP_COMP_NEQUALS"] = "不等于",
	["OP_COMPA_SEL"] = "比较器的选择",
	["OP_CONFIGURE"] = "设置",
	["OP_CURRENT"] = "当前值",
	["OP_CURRENT_TT"] = "打印在聊天框中，根据当前情况对该操作数进行评估。",
	["OP_DIRECT_VALUE"] = "直接值",
	["OP_EVAL_VALUE"] = "评估值",
	["OP_FAIL"] = "失败消息",
	["OP_FAIL_TT"] = "如果条件失败，将显示此消息。如果不想显示任何信息，请留空。",
	["OP_FAIL_W"] = "失败的工作流(专家)",
	["OP_FAIL_W_TT"] = [=[如果此条件失败，将调用此工作流。这是在某种情况下制造“else”的一种方式。

|cffff9900请注意，这个特性的性能非常高，应该谨慎使用。被调用的工作流必须存在于同一个对象中。

| cff0000永远不要在被调用的工作流中创建一个循环(例如，工作流A调用工作流B再次调用工作流A)，甚至使用延迟!]=],
	["OP_NUMERIC"] = "数值",
	["OP_OP_CHAR_ACHIEVEMENT"] = "成就",
	["OP_OP_CHAR_ACHIEVEMENT_ACC"] = "账户",
	["OP_OP_CHAR_ACHIEVEMENT_ACC_TT"] = "检查该帐户中是否有任何角色完成了该成就。",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR"] = "角色",
	["OP_OP_CHAR_ACHIEVEMENT_CHAR_TT"] = "检查当前角色是否已完成该成就",
	["OP_OP_CHAR_ACHIEVEMENT_ID"] = "成就ID",
	["OP_OP_CHAR_ACHIEVEMENT_ID_TT"] = "要检查的成就的数字ID。",
	["OP_OP_CHAR_ACHIEVEMENT_PREVIEW"] = "% s完成 |cffff9900%s",
	["OP_OP_CHAR_ACHIEVEMENT_TT"] = "检查帐户是否已完成指定的成就。",
	["OP_OP_CHAR_ACHIEVEMENT_WHO"] = "完成人是",
	["OP_OP_CHAR_CAM_DISTANCE"] = "相机的距离",
	["OP_OP_CHAR_CAM_DISTANCE_TT"] = "相机与玩家的距离。如果是0就是第一人称视图。",
	["OP_OP_CHAR_FACING"] = "角色朝向",
	["OP_OP_CHAR_FACING_TT"] = [=[返回玩家的方向(以弧度计算，0 =北，数值逆时针递增)。

|cffff9900表示玩家模型(通常)面对的方向，以及当玩家开始向前走的时候将会在其中移动，而不是摄像机的方向。]=],
	["OP_OP_CHAR_FALLING"] = "角色在坠落",
	["OP_OP_CHAR_FALLING_TT"] = "返回玩家的角色是否正在坠落到他们的末日。",
	["OP_OP_CHAR_FLYING"] = "角色在飞",
	["OP_OP_CHAR_FLYING_TT"] = "检查角色是否在飞行。",
	["OP_OP_CHAR_MINIMAP"] = "小地图上的文本",
	["OP_OP_CHAR_MINIMAP_TT"] = [=[返回小地图区域文本。

当文本发生变化时，会触发游戏事件“MINIMAP_ZONE_CHANGED”。所以你可以在游戏事件链接或任务中测试它。]=],
	["OP_OP_CHAR_MOUNTED"] = "角色在坐骑上",
	["OP_OP_CHAR_MOUNTED_TT"] = "检查角色是否在坐骑上。",
	["OP_OP_CHAR_RESTING"] = "角色在休息",
	["OP_OP_CHAR_RESTING_TT"] = "检查角色是否在休息。如果你在一家客栈或像铁炉堡或奥格瑞玛这样的大城市，你就是在休息。",
	["OP_OP_CHAR_STEALTH"] = "角色是隐形的",
	["OP_OP_CHAR_STEALTH_TT"] = "检查角色是否有潜行。",
	["OP_OP_CHAR_SUBZONE"] = "亚区域名称",
	["OP_OP_CHAR_SUBZONE_TT"] = [=[角色当前所在的子区域名称。

|cffff9900警告:文本取决于客户端语言环境。]=],
	["OP_OP_CHAR_SWIMMING"] = "角色在游泳",
	["OP_OP_CHAR_SWIMMING_TT"] = "检查角色是否在游泳。它们不需要在水下。",
	["OP_OP_CHAR_ZONE"] = "区域名称",
	["OP_OP_CHAR_ZONE_TT"] = [=[角色当前所在的区域名称。

|cffff9900警告:文本取决于客户端语言环境。]=],
	["OP_OP_CHECK_EVENT_VAR"] = "事件参数字符串值",
	["OP_OP_CHECK_EVENT_VAR_N"] = "事件参数数值",
	["OP_OP_CHECK_EVENT_VAR_N_PREVIEW"] = "% s-th事件参数| cff00ff00(数量)",
	["OP_OP_CHECK_EVENT_VAR_N_TT"] = [=[检查触发此条件的事件的第n个参数(如果有的话)。

解释为一个数字。

如果不存在或无法解释，返回0。]=],
	["OP_OP_CHECK_EVENT_VAR_PREVIEW"] = "% s-th事件参数| cff00ff00(字符串)",
	["OP_OP_CHECK_EVENT_VAR_TT"] = [=[检查触发此条件的事件的第n个参数(如果有的话)。

解释为一个字符串。

如果不存在或无法解释，返回'nil'。]=],
	["OP_OP_CHECK_VAR"] = "变量的字符串值",
	["OP_OP_CHECK_VAR_N"] = "变量的数值",
	["OP_OP_CHECK_VAR_N_PREVIEW"] = "|cff00ffff%s: |cffff9900(n)|r %s",
	["OP_OP_CHECK_VAR_N_TT"] = [=[返回变量|cff00ff00解释为数字|r的值。

如果变量不存在、无法到达或不能解释为数字，则返回0。

|cffff9900由于该值依赖于运行时，因此无法预览。]=],
	["OP_OP_CHECK_VAR_PREVIEW"] = "|cff00ffff%s:|r %s",
	["OP_OP_CHECK_VAR_TT"] = [=[返回变量|cff00ff00解释为字符串|r的值。

如果变量不存在或无法到达，返回字符串'nil'。

|cffff9900由于该值依赖于运行时，因此无法预览。]=],
	["OP_OP_DISTANCE_CURRENT"] = "使用当前位置",
	["OP_OP_DISTANCE_ME"] = "单位距离到玩家",
	["OP_OP_DISTANCE_ME_TT"] = [=[返回单位和玩家之间的距离(以码为单位)。

仅适用于玩家。

如果单元不存在，返回0。

|cffff9900不能工作在副本/战场/竞技场自从补丁7.1。]=],
	["OP_OP_DISTANCE_POINT"] = "单位 点距离",
	["OP_OP_DISTANCE_POINT_PREVIEW"] = "|cff00ff0% s|r距离|cff00ff00(%s， %s)",
	["OP_OP_DISTANCE_POINT_TT"] = [=[返回单位与点坐标之间的距离(单位为码)。

仅适用于玩家。

如果单元不存在，返回0。

|cffff9900不能工作在副本/战场/竞技场自从补丁7.1。]=],
	["OP_OP_DISTANCE_X"] = "X坐标",
	["OP_OP_DISTANCE_Y"] = "Y坐标",
	["OP_OP_INV_COUNT"] = "物品单位数",
	["OP_OP_INV_COUNT_ANY"] = "任何物品",
	["OP_OP_INV_COUNT_PREVIEW"] = "% s单位|cffff9900%s",
	["OP_OP_INV_COUNT_TT"] = [=[|cff00ff00玩家拥有的物品的数量。

保持这个ID位空以便计算有所物品。]=],
	["OP_OP_INV_WEIGHT"] = "容器总重量",
	["OP_OP_INV_WEIGHT_PREVIEW"] = "总重量的|cffff9900%s",
	["OP_OP_INV_WEIGHT_TT"] = "|cff00ff00当前容器的总重量(其自身重量加上内容)。",
	["OP_OP_QUEST_NPC"] = "单位是剧本的NPC",
	["OP_OP_QUEST_NPC_TT"] = "在当前激活剧本中，|cff00ff00返回一个单位是否是自定义NPC。",
	["OP_OP_QUEST_OBJ"] = "任务目标",
	["OP_OP_QUEST_OBJ_ALL"] = "任务所有目标",
	["OP_OP_QUEST_OBJ_ALL_PREVIEW"] = "%s 所有对象,完成",
	["OP_OP_QUEST_OBJ_ALL_TT"] = "返回所有可能的任务目标是否完成。所以所有的目标也必须被揭示。",
	["OP_OP_QUEST_OBJ_CURRENT"] = "搜索当前目标",
	["OP_OP_QUEST_OBJ_CURRENT_PREVIEW"] = "%s 当前目标完成",
	["OP_OP_QUEST_OBJ_CURRENT_TT"] = "返回当前显示的任务目标是否完成。",
	["OP_OP_QUEST_OBJ_PREVIEW"] = "对象% s 从% s",
	["OP_OP_QUEST_OBJ_TT"] = "返回任务目标的完成(真true或假false)。如果剧本，任务或目标还没有被揭示，返回错误。",
	["OP_OP_QUEST_STEP"] = "搜索当前步骤",
	["OP_OP_QUEST_STEP_PREVIEW"] = "%s 当前步骤",
	["OP_OP_QUEST_STEP_TT"] = "返回当前任务步骤ID。如果任务没有显示或没有当前步骤，返回nil。",
	["OP_OP_RANDOM"] = "随机",
	["OP_OP_RANDOM_FROM"] = "从",
	["OP_OP_RANDOM_PREVIEW"] = "|cff00ff000 %s|r和|cff00ff000 %s|r之间的随机数。",
	["OP_OP_RANDOM_TO"] = "到",
	["OP_OP_RANDOM_TT"] = "两个边界之间的随机数(整数)。",
	["OP_OP_TIME_HOUR"] = "时间:小时",
	["OP_OP_TIME_HOUR_TT"] = "一天中的当前小时，服务器时间。",
	["OP_OP_TIME_MINUTE"] = "时间:分钟",
	["OP_OP_TIME_MINUTE_TT"] = "当前一小时的分钟，服务器时间。",
	["OP_OP_UNIT_CLASS"] = "单位类型",
	["OP_OP_UNIT_CLASS_TT"] = "|cff00ff00单位类(英文小写)，由UnitClass的第二个参数返回。",
	["OP_OP_UNIT_CLASSIFICATION"] = "单位分类",
	["OP_OP_UNIT_CLASSIFICATION_TT"] = [=[|cff00ff00英文小写单位分类。例子:普通normal，精英elite，稀有rare， worldboss，…

对于玩家总是返回正常。]=],
	["OP_OP_UNIT_DEAD"] = "单位是死的",
	["OP_OP_UNIT_DEAD_TT"] = "|cff00ff00返回一个单元是死的还是灵魂状态。",
	["OP_OP_UNIT_DISTANCE_INSPECT"] = "单位在附近(可搜索)",
	["OP_OP_UNIT_DISTANCE_INSPECT_TT"] = "|cff00ff00返回一个单位是否足够近以供检查(最少28码)。",
	["OP_OP_UNIT_DISTANCE_TRADE"] = "单位在附近(可交易)",
	["OP_OP_UNIT_DISTANCE_TRADE_TT"] = "|cff00ff00回报一个单位是否足够接近交易(11.11码)。",
	["OP_OP_UNIT_EXISTS"] = "单位存在",
	["OP_OP_UNIT_EXISTS_TT"] = [=[返回一个单元是否存在。

如果玩家可以引用|r一个单元，则该单元“存在”;例如，目标存在，如果玩家有目标，npc存在，如果玩家正在与npc互动，等等。]=],
	["OP_OP_UNIT_FACTION"] = "单位派系",
	["OP_OP_UNIT_FACTION_TT"] = "|cff00ff00单位派系 英语小写。",
	["OP_OP_UNIT_GUILD"] = "单位公会的名字",
	["OP_OP_UNIT_GUILD_RANK"] = "单位工会等级",
	["OP_OP_UNIT_GUILD_RANK_TT"] = "|cff00ff00单位的公会等级(如果单位有公会的话)。",
	["OP_OP_UNIT_GUILD_TT"] = "|cff00ff00单位公会名（如果有）",
	["OP_OP_UNIT_HEALTH"] = "单位健康",
	["OP_OP_UNIT_HEALTH_TT"] = "|cff00ff00单位当前生命值(生命值)。",
	["OP_OP_UNIT_ID"] = "单位ID",
	["OP_OP_UNIT_ID_TT"] = "由UnitFullName返回|cff00ff00'玩家-服务器'|r中的单位id。请确保服务器名正确。",
	["OP_OP_UNIT_ISPLAYER"] = "单位是玩家",
	["OP_OP_UNIT_ISPLAYER_TT"] = "|cff00ff00返回单位是否为玩家。",
	["OP_OP_UNIT_LEVEL"] = "单位等级",
	["OP_OP_UNIT_LEVEL_TT"] = "|cff00ff00单位的等级",
	["OP_OP_UNIT_NAME"] = "单位名字",
	["OP_OP_UNIT_NAME_TT"] = [=[
单位名字，由UnitName的第一个参数返回。

|r当用一个玩家，它可以等于|cff00ff00'玩家名'|r或|cff00ff00'玩家名-服务器 '|r。如果你想确保形式| cff00ff00'玩家名-服务器 ' |r，使用| cff00ff00'单位 ID' |r操作。]=],
	["OP_OP_UNIT_NPC_ID"] = "单位 NPC ID",
	["OP_OP_UNIT_NPC_ID_TT"] = "|cff00ff00  NPC ID，由UnitGUID决定。仅适用于NPC。",
	["OP_OP_UNIT_POSITION_X"] = "单位 X轴坐标",
	["OP_OP_UNIT_POSITION_X_TT"] = [=[返回单位的X坐标。

仅适用于玩家。

|cffff9900从补丁7.1不能工作在副本/战场/竞技场。]=],
	["OP_OP_UNIT_POSITION_Y"] = "单位 Y轴坐标",
	["OP_OP_UNIT_POSITION_Y_TT"] = [=[返回单位的Y坐标。

仅适用于玩家。

|cffff9900从补丁7.1不能工作在副本/战场/竞技场。]=],
	["OP_OP_UNIT_RACE"] = "单位种族",
	["OP_OP_UNIT_RACE_TT"] = [=[|cff00ff00单位种族(英文小写)，由UnitRace的第二个参数返回。

像是亡灵Undead]=],
	["OP_OP_UNIT_SEX"] = "单位的性别",
	["OP_OP_UNIT_SEX_TT"] = [=[|cff00ff00单位性别。2 =男性，3 =女性，1为中性或未知。

|cffffff00返回为字符串。]=],
	["OP_OP_UNIT_SPEED"] = "单位速度",
	["OP_OP_UNIT_SPEED_TT"] = "|cff00ff00当前单位速度(码/秒)。步行是2.5，跑步没有buff是7。",
	["OP_OR"] = "或OR",
	["OP_OR_SWITCH"] = "切换到或",
	["OP_PREVIEW"] = "预览值",
	["OP_REMOVE_TEST"] = "删除测试",
	["OP_STRING"] = "字符串值",
	["OP_UNIT"] = "单元类型",
	["OP_UNIT_NPC"] = "NPC",
	["OP_UNIT_PLAYER"] = "玩家",
	["OP_UNIT_TARGET"] = "目标",
	["OP_UNIT_TEST"] = "单位测试",
	["OP_UNIT_VALUE"] = "单位值",
	["QE_ACTION"] = "任务动作",
	["QE_ACTION_NO_CURRENT"] = "你没有任何激活剧本。你应该在采取行动之前先激活一个剧本。",
	["QE_ACTIONS_TYPE_INTERRACT"] = "交互",
	["QE_ACTIONS_TYPE_LISTEN"] = "听",
	["QE_ACTIONS_TYPE_LOOK"] = "检查",
	["QE_ACTIONS_TYPE_TALK"] = "说",
	["QE_AUTO_REVEAL"] = "自动显示",
	["QE_AUTO_REVEAL_TT"] = "当剧本开始时，在任务日志中显示任务。",
	["QE_AUTORESUME_CONFIRM"] = [=[这将产生一个效果称为剧本|cff00ff00[%s]|r。

激活这个剧本吗?
(如果你已经有一个激活的剧本，它将被暂停，你的进展将被保存。)]=],
	["QE_BUTTON"] = "打开任务日志",
	["QE_CAMPAIGN"] = "剧本",
	["QE_CAMPAIGN_CURRENT"] = "现在的剧本.",
	["QE_CAMPAIGN_CURRENT_NO"] = "没有合适的剧本.",
	["QE_CAMPAIGN_EMPTY"] = "这个剧本没有任务.",
	["QE_CAMPAIGN_FULL"] = "完成",
	["QE_CAMPAIGN_LIST"] = "%s 可以接的剧本",
	["QE_CAMPAIGN_NO"] = "还没有开始",
	["QE_CAMPAIGN_NOQUEST"] = [=[还没这个剧本的任务显示，

看看你的剧本第一项任务的描述。]=],
	["QE_CAMPAIGN_PAUSE"] = "暂停现在的剧本.",
	["QE_CAMPAIGN_RESET"] = "重置剧本",
	["QE_CAMPAIGN_RESUME"] = "恢复暂停 |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_START"] = "开始剧本 |cff00ff00[%s]|r.",
	["QE_CAMPAIGN_START_BUTTON"] = "开始或重新开始剧本",
	["QE_CAMPAIGN_UNSTARTED"] = [=[你还不能开始这个剧本.
Click 顶部按钮 "Start" 按钮来开始.]=],
	["QE_CAMPAIGNS"] = "所有剧本",
	["QE_COMPLETED"] = "完成",
	["QE_DESCRIPTION"] = "任务概要",
	["QE_DESCRIPTION_TT"] = "这个简短的摘要将会显示在任务页面上看到，在任务日志中。",
	["QE_FAILED"] = "失败",
	["QE_LINKS_ON_OBJECTIVE"] = "目标完成",
	["QE_LINKS_ON_OBJECTIVE_TT"] = [=[每次玩家完成这个任务的目标将会触发。

|cff00ff00这是一个很好的方法来检查所有的目标是否已经完成，并揭示下一个任务。]=],
	["QE_LINKS_ON_START"] = "任务开始",
	["QE_LINKS_ON_START_TT"] = [=[当玩家|cff00ff00开始|r你的任务时触发，在任务日志中解锁。

|cff00ff00这是一个很好的方法，可以进入第一个任务步骤。]=],
	["QE_MACRO"] = "创建宏",
	["QE_MACRO_MAX"] = "你不能有更多的宏。请在重新尝试之前释放一个宏槽。",
	["QE_MACRO_TT"] = "为该操作类型创建一个宏，并将光标的宏放到任何操作栏中.",
	["QE_NAME"] = "任务名字",
	["QE_NAME_NEW"] = "新的任务",
	["QE_NAME_TT"] = "这是您的任务名称，因为它将出现在任务日志中。",
	["QE_NEW"] = "新的任务发布",
	["QE_NOACTION_ACTION"] = "这里没有任何事情.",
	["QE_NOACTION_LISTEN"] = "你没有听到任何特殊的声音.",
	["QE_NOACTION_LOOK"] = "你没有看到任何特殊的地方.",
	["QE_NOACTION_TALK"] = "无话可说.",
	["QE_NPC"] = "剧本 NPC",
	["QE_OBJ"] = "任务目标",
	["QE_OBJ_ADD"] = "添加任务目标",
	["QE_OBJ_AUTO"] = "自动显示",
	["QE_OBJ_AUTO_TT"] = "当任务日志中的任务被解锁时自动显示此目标。",
	["QE_OBJ_ID"] = "目标 ID",
	["QE_OBJ_ID_TT"] = "这是你的目标ID。你不可能在同一个任务中有两个相同目标ID。",
	["QE_OBJ_NO"] = "没有任务目标",
	["QE_OBJ_REMOVE"] = "删除这个任务目标?",
	["QE_OBJ_SINGULAR"] = "任务目标",
	["QE_OBJ_TEXT"] = "目标文本",
	["QE_OBJ_TT"] = [=[任务目标是玩家的提示。完成所有目标不会自动完成任务。你决定什么时候显示目标，这样你就可以在你的任务中有一个秘密目标。
|cffff9900在任务日志中，总是按照目标ID排序，而不是按照它们的显示顺序。]=],
	["QE_OVERVIEW"] = "任务综述",
	["QE_PREVIOUS_STEP"] = "以前",
	["QE_PROGRESS"] = "进度",
	["QE_PROGRESS_TT"] = [=[这任务的参数将标记为剧本进程的一部分(即使任务未被显示)。

剧本进程是任务日志中显示全局剧本进程的%指标(完成任务/总任务的%)。

|cff00ff00 通常应该被检查，除了支线/次要任务。]=],
	["QE_QUEST"] = "寻找",
	["QE_QUEST_LIST"] = "任务需要物品",
	["QE_QUEST_OBJ_AND_HIST"] = "目标和历史",
	["QE_QUEST_OBJ_FINISHED"] = "|cffffff00任务完成: |cff00ff00%s",
	["QE_QUEST_OBJ_REVEALED"] = "|cffffff00新目标 : |cff00ff00%s",
	["QE_QUEST_OBJ_UPDATED"] = "|cffffff00任务更新: |cff00ff00%s",
	["QE_QUEST_START"] = "开始任务 |cff00ff00[%s]|r.",
	["QE_QUEST_TT_STEP"] = [=[|cffffff00当前:|r
"%s"]=],
	["QE_QUESTS"] = "任务道具",
	["QE_QUESTS_HELP"] = [=[你可以在这里增加你的任务. 当他开始你的剧本时，任务不会自动添加到玩家的任务日志中.你必须通过工作流程来完成任务.
|cffff9900任务按照ID在任务日志中进行排序，而不是通过名称或显示顺序.]=],
	["QE_RESET_CONFIRM"] = [=[重置这个剧本吗?

这将会失去你在这个剧本中所有任务的进展。

注意，你将保留你在这次剧本中获得的所有物品。]=],
	["QE_ST_AUTO_REVEAL"] = "第一步",
	["QE_ST_AUTO_REVEAL_TT"] = "将此步骤标记为在任务日志中打开任务时的初始步骤。",
	["QE_ST_END"] = "最后一步",
	["QE_ST_END_TT"] = "把这一步标记为这个任务的最后一步。当完成该步骤时，任务将自动标记为任务日志中已完成。",
	["QE_ST_LINKS_ON_LEAVE"] = "任务步骤下一步",
	["QE_ST_LINKS_ON_LEAVE_TT"] = "触发|cff00ff00每次|r玩家离开这个步骤到另一个步骤。这将在下一步“任务开始”触发之前触发。",
	["QE_ST_LINKS_ON_START"] = "任务步骤开始",
	["QE_ST_LINKS_ON_START_TT"] = "|cff00ff00每次触发时，玩家都会到达这个步骤。",
	["QE_ST_POST"] = "任务历史记录",
	["QE_ST_PRE"] = "任务内容",
	["QE_STEP"] = "任务步骤",
	["QE_STEP_ADD"] = "添加任务步骤",
	["QE_STEP_CREATE"] = [=[请输入步骤ID。同一任务中不能有两个具有相同ID的步骤。

|cffff9900请注意，这些步骤将按照这里和数据库的字母顺序排列。

|cff00ff00所以这是一个很好的练习，总是用step_#来启动你的ID， #是任务中的步骤号。]=],
	["QE_STEP_EXIST"] = "ID %s已经有了一个步骤。",
	["QE_STEP_LIST"] = "这个任务的步骤",
	["QE_STEP_LIST_CURRENT"] = "可用的任务",
	["QE_STEP_LIST_FINISHED"] = "完成的任务",
	["QE_STEP_MISSING"] = "缺少下一步任务的信息.",
	["QE_STEP_NAME_NEW"] = "新的任务步骤",
	["QE_STEP_NO"] = "没有任务步骤",
	["QE_STEP_REMOVE"] = "删除这一步骤?",
	["QE_STEP_TT"] = [=[任务被简化为一系列步骤。
每一步都可以在任务日志中添加一个文本条目，完成后再添加一个历史文本。]=],
	["QE_STEPS"] = "任务步骤",
	["QUEST_ID"] = "任务 ID",
	["QUEST_TU_1"] = [=[任务通常会要求|cff00ff00000您通过行动与npc或您的环境进行交互。|r
有四种类型的动作:|cff00ff00ff听，看，说话和检查|r。
您可以通过|cff00ff00右键单击TRP3工具栏|r上的任务日志按钮。
但是另一种更简单的操作方法是|cff00ff00f为它的创建宏。|r要帮助创建操作宏，可以使用这个按钮。]=],
	["QUEST_TU_2"] = [=[|cff00ff00你可以在这里找到所有可用剧本的列表
剧本是一个或多个任务的集合。
|cffff9900你一次只能在一个剧本中取得进程。为此，你必须把这场剧本标记为激活的剧本。你可以使用“启动或恢复”按钮来激活或暂停一个剧本。
如果你从一种剧本转向另一种剧本，你就不会失去前进的动力。
|cffff9900您可以通过右键单击它并选择重置剧本来重置您的进程。注意所有被掠夺的物品不会在剧本重置时丢失。]=],
	["QUEST_TU_3"] = [=[|cff00ff00你可以在这里找到所有当前可用的任务和完成任务的列表。|r
你可以很容易地看到每个任务当前的情况和当前的目标是什么。]=],
	["QUEST_TU_4"] = [=[|cff00ff00你可以在这里找到当前任务的进程和所有当前的目标。|r。
您还可以看到前面步骤的历史，以防您忘记一些事情。]=],
	["ROOT_CREATED"] = "创建者 %s 在 %s",
	["ROOT_CREATED_BY"] = "创建者",
	["ROOT_CREATED_ON"] = "创建在",
	["ROOT_GEN_ID"] = "生产 ID",
	["ROOT_ID"] = "对象ID",
	["ROOT_SAVED"] = "最后修改者 %s 在 %s",
	["ROOT_TITLE"] = "根对象",
	["ROOT_VERSION"] = "版本",
	["SEC_EFFECT_BLOCKED"] = "效果(多个)屏蔽",
	["SEC_EFFECT_BLOCKED_TT"] = [=[由于您当前的安全设置，至少有一个物品(或子对象)效果已被保护。

|cffff9900单击查看此物品的安全性。

您还可以按Ctrl+右键单击库存中的物品，以便稍后配置安全性。]=],
	["SEC_HIGH"] = "高",
	["SEC_HIGH_TT"] = "此物品及其所有相关对象都是安全的，不使用任何恶意或不良影响。",
	["SEC_LEVEL"] = "安全级别",
	["SEC_LEVEL_DETAIL"] = "单击以查看使用的不安全脚本的详细信息。",
	["SEC_LEVEL_DETAIL2"] = "单击以查看使用的不安全脚本的详细信息，并配置哪些脚本可以执行。",
	["SEC_LEVEL_DETAILS"] = "安全细节",
	["SEC_LEVEL_DETAILS_ACCEPTED"] = "接受",
	["SEC_LEVEL_DETAILS_ALL"] = "所有对象的切换安全性",
	["SEC_LEVEL_DETAILS_ALL_TT"] = "现在和将来，接受对所有对象执行此效果。",
	["SEC_LEVEL_DETAILS_BLOCKED"] = "阻塞",
	["SEC_LEVEL_DETAILS_FROM"] = "从%s收到时总是接受",
	["SEC_LEVEL_DETAILS_SECURED"] = "这个对象及其所有内部对象都是安全的!",
	["SEC_LEVEL_DETAILS_THIS"] = "此对象的切换安全性",
	["SEC_LEVEL_DETAILS_THIS_TT"] = "只接受对该对象执行此效果。",
	["SEC_LEVEL_DETAILS_TT"] = [=[对于%s及其所有内部对象。
|cffff9900作者:|cff00ff00%s
|cffff9900接收者:|cff00ff00%s]=],
	["SEC_LOW"] = "低",
	["SEC_LOW_TT"] = "此物品或其相关对象之一使用一个或多个具有恶意影响的不安全脚本。",
	["SEC_MEDIUM"] = "中",
	["SEC_MEDIUM_TT"] = "此物品或其相关对象之一使用一个或多个不安全的脚本，这些脚本可能会产生不良影响。",
	["SEC_MISSING_SCRIPT"] = "找不到工作流程“% s”",
	["SEC_REASON_DISMOUNT"] = "下马",
	["SEC_REASON_DISMOUNT_WHY"] = [=[这个对象可以强迫你下马。

这可能对你不利……尤其是当你在飞行坐骑上的时候!]=],
	["SEC_REASON_SCRIPT"] = "Lua script",
	["SEC_REASON_SCRIPT_WHY"] = [=[这个对象可以触发任何扩展效果。

|cffff0000使用可能会以一种恶意的方式强迫你说一些应该受到暴雪服务条款的谴责的话，这些条款会使你被禁止参与游戏。

|cff00ff00如果被阻止，代码仍然会被执行，但是在一个安全的环境中(例如，聊天效果将只打印给你，而不是由你的角色说)。]=],
	["SEC_REASON_SOUND"] = "播放一个声音",
	["SEC_REASON_SOUND_WHY"] = [=[这个对象可以播放一种声音或音乐，你周围的TRP3:E用户可以听到。

|cffff9900如果声音是垃圾信息，或者声音特别烦人，那么他们可能不希望听到这些。如果是这样的话，他们会责备你，阻止你。

|cffff9900如果被屏蔽，声音/音乐只会为你播放。]=],
	["SEC_REASON_TALK"] = "人物说话",
	["SEC_REASON_TALK_WHY"] = [=[这个物体可以强迫你的角色说些什么(通过/说/喊叫或任何其他渠道)。

|cffff0000使用可能会以一种恶意的方式强迫你说一些应该受到暴雪服务条款的谴责的话，这些条款会使你被禁止参与游戏。

|cffff0000如果被阻止，文本将只打印给你(而不是由你的角色)。]=],
	["SEC_SCRIPT_ERROR"] = "错误在工作流% s。",
	["SEC_TT_COMBO"] = "Alt +右键:|cffff9900配置安全",
	["SEC_TT_COMBO_2"] = "配置安全",
	["SEC_UNSECURED_WHY"] = "为什么这是不安全的吗?",
	["SET_TT_DETAILS_1"] = "按住Alt键可以显示更多",
	["SET_TT_DETAILS_2"] = "%s 警告(s)",
	["SET_TT_OLD"] = "此物品是用较旧版本的Extended (v %s)创建的。可能发生不兼容。",
	["SET_TT_SECURED"] = [=[为了您的安全，已经开启保护防止一些潜在的恶意影响。
更多细节请点击|cff00ff00Alt +右键。]=],
	["SET_TT_SECURED_2"] = "为了您的安全，已经开启保护防止一些潜在的恶意影响。",
	["SET_TT_SECURED_2_1"] = "看到更多的细节。",
	["SPECIFIC"] = "特殊目标",
	["SPECIFIC_INNER_ID"] = "内部 ID",
	["SPECIFIC_MODE"] = "模式",
	["SPECIFIC_PATH"] = "根路径",
	["TB_TOOLS"] = "扩展对象数据库",
	["TB_TOOLS_TT"] = "创建你自己的物品和任务.",
	["TU_AC_1_TEXT"] = [=[|cff00ff00动作链接|r是您可以将工作流链接到任务动作的地方。
玩家可以执行四种任务动作:|cff00ff00听、看、说和交互 |r。
你可以在剧本，任务或任务步骤级别中定义动作链接。]=],
	["TU_AC_2"] = "动作求值",
	["TU_AC_2_TEXT"] = [=[每个动作都可以通过|cff00ff00Ctrl+单击|r来设置。
当玩家执行一个动作时，所有动作链接将按照一定的顺序进行评估，从任务步骤级别开始，然后是任务级别，最后是剧本级别。
如果可以使用一个链接(如果它来自良好的动作类型，并且没有条件或者满足条件)，那么将执行相关的工作流，并且|cffff9900附加组件将停止搜索另一个链接|r。]=],
	["TU_CO_1_TEXT"] = [=[容器是可以包含其他项的项。
要打开一个容器，您可以在库存中|cff00ff00双击| r。
也可以有一个可用的容器(通过右键单击)。它不是两个排他的概念。
|cff00ff00请注意，目前您只能与空的玩家容器进行交易，或者只包含容器内部对象的物品。有关更多信息，请参阅内部对象选项卡。]=],
	["TU_CS_1_TEXT"] = [=[使用|cff00ff00动画场景|r，你将能够为玩家创造一个真正的叙述体验。
过场动画使用的是已经在故事情节扩展中使用的布局。]=],
	["TU_CS_2_TEXT"] = [=[过场动画是一个接一个播放的步骤列表。
过场动画发生在两个角色互相交谈的场景中。
在每个步骤，你将能够完全重新配置场景。]=],
	["TU_CS_4"] = "游戏动画和工作流",
	["TU_CS_4_TEXT"] = [=[您可以将工作流链接到一个步骤。它将在步骤(或第一个子步骤)的开始处执行。
如果这个工作流包含一个战利品效果，你可以检查“等待战利品”选项，迫使玩家在过场之前先战利品。]=],
	["TU_CS_5"] = "预览",
	["TU_CS_5_TEXT"] = [=[你可以随时预览你的过场动画。
|cffff9900链接工作流不会在预览模式下执行。]=],
	["TU_DB_1_TEXT"] = [=[|cff00ff00欢迎来到数据库教程
这是存储所有对象的数据库。
一个对象包含关于一个物品、一个文档、一个剧本/任务/步骤或一个过场动画的所有信息。]=],
	["TU_DB_2"] = "数据库类型",
	["TU_DB_2_TEXT"] = [=[有四个选项卡，过滤整个数据库。
|cff00ff00我的数据库:|r它包含您创建的所有对象。
|cff00ff00玩家数据库:|r它包含所有您从其他玩家接收(或导入)的对象。
它包含了Kickstarter支持者和TRP3团队创建的对象。
|cff00ff00完整数据库:|r它包含所有以前的数据库内容。]=],
	["TU_DB_3_TEXT"] = [=[您可以通过更改搜索过滤器过滤每个数据库以找到特定的对象，并选择|cff00ff00搜索|r。
在没有过滤器的情况下，对象列表遵循分层表示。
但如果您过滤列表，结果将显示为一个平面显示。
这里我们只是按对象类型过滤了列表，以只显示|cffff9900物品|r。
要退出搜索模式，单击过滤器面板中的|cff00ff00清除|r按钮。]=],
	["TU_DB_4"] = "根和内部对象",
	["TU_DB_4_TEXT"] = [=[有两种对象:|cff00ff00根对象和内部对象|r。
|cff00ff00内部对象|r总是存储在|cff00ff00根对象|r中(即使它们可以一直存储在另一个内部对象中)。
当您与某人交换一个物品时，实际上交换了所有根对象信息，即使该物品只是一个内部对象。
所以现在，请记住，使用内部对象是连接应该一直在一起交换的对象的好方法。
例子:
-显示文档的项:文档将是根物品对象的内部对象。
一个包含4个任务的剧本:每个任务实际上是根剧本目标的一个内部对象。
-发射子弹的枪:子弹对象将是根枪对象的内部对象。
但别担心，它会自然到来的!]=],
	["TU_DB_5"] = "根对象",
	["TU_DB_5_TEXT"] = [=[只有物品和剧本可以是根对象。

您可以使用这两个按钮来创建一个新物品或剧本。
]=],
	["TU_DB_6"] = "创建一个物品",
	["TU_DB_6_TEXT"] = [=[在创建新项时，可以选择模板或使用快速创建模式。
|cff00ff00快速创建|r模式允许您轻松地创建第一项，但可能性有限。现在您总是可以在之后进入正常的创建模式。
使用|cff00ff00空白|r模板，如果你想从头开始，没有任何例子。
|cff00ff00文档|r模板将实际创建两个对象:一个物品对象和它的文档内部对象。它还将配置项以显示使用时的文档。
|cff00ff00容器|r模板将创建并配置一个物品对象作为容器使用。
最后，|cff00ff00从……创建|r允许复制现有物品。]=],
	["TU_DB_7"] = "对象行",
	["TU_DB_7_TEXT"] = "每一行表示一个对象。您可以单击它来编辑它或右键单击以执行各种操作。",
	["TU_EL_1_TEXT"] = [=[事件链接选项卡是您可以|cff00ff00将工作流链接到事件|r的地方。
实际上，工作流在默认情况下不会自动执行!所以你必须将它们链接到一个事件，以便在事件发生时执行它们。
我们有两种类型的事件:|cff00ff00对象事件和游戏事件|r。]=],
	["TU_EL_2_TEXT"] = [=[|cff00ff00对象事件|r是与Total rp3如何工作有关的事件。
可能的事件列表是固定的，并且取决于对象(物品、任务等)的类型。
您可以将一个事件链接到一个工作流。但是同一个工作流可以链接到多个事件。]=],
	["TU_EL_4_TEXT"] = "|cff00ff00游戏事件|r仅适用于战役，任务和任务步骤。",
	["TU_IT_1_TEXT"] = [=[|cff00ff00欢迎来到物品创建教程
物品是一种对象，你可以把它储存在你的角色的物品里(或者把它丢在地上)。
在主选项卡上可以定义物品的所有基本属性。]=],
	["TU_IT_2"] = "显示属性",
	["TU_IT_2_TEXT"] = [=[显示属性纯粹是修饰性的，没有任何“游戏玩法”效果。
这都是关于物品工具提示和物品图标所需的属性。]=],
	["TU_IT_3"] = "免费文本",
	["TU_IT_3_TEXT"] = [=[你可以写下笔记来帮助你记住你想用你的物品做什么。
这些笔记也可以帮助那些想要根据你的笔记开始一项工作的人。]=],
	["TU_IT_4"] = "游戏属性",
	["TU_IT_4_TEXT"] = [=[游戏玩法属性对游戏玩法有一些影响。
两个属性很重要:| cff00ff00可用的 |r和|cff00ff00容器|r，检查它们将显示|cff00ff00工作流|r和|cff00ff00容器|r选项卡。]=],
	["TU_TITLE"] = "教程",
	["TU_WO_1_TEXT"] = [=[|cff00ff00欢迎来到工作流创建教程
工作流是可以为您的创建带来活力的机制。在这里，您将能够发挥效果，如显示文本，播放声音或抢劫一个玩家的物品。]=],
	["TU_WO_2"] = "工作流列表",
	["TU_WO_2_TEXT"] = [=[左边是|cff00ff00工作流列表|r。
通过右键单击工作流，您可以删除、重命名或复制/粘贴工作流。
注意:如果您在这里以“正常模式”编辑项目，您将不会看到工作流列表，而只会看到一个“On use”工作流。如果您想为一个项目使用多个工作流，您可以在数据库视图中右键单击该项目，将其转换为“专家模式”。]=],
	["TU_WO_3_TEXT"] = [=[下面是所有工作流元素的列表。
元素可以是效果、延迟或条件。
元素顺序非常重要，因为它们将在工作流执行过程中顺序执行。
您可以使用每个元素右上角的箭头来更改元素顺序。]=],
	["TU_WO_4"] = "添加一个效果",
	["TU_WO_4_TEXT"] = [=[效果是“播放声音”、“显示文本”或“启动过场动画”。
有很多效果，每个都在自己的工具提示中解释!]=],
	["TU_WO_5"] = "添加一个条件",
	["TU_WO_5_TEXT"] = [=[条件允许您使用|cff00ff00测试值来停止工作流执行
|cffff9900如果条件不满足，工作流执行将不再继续
条件由一系列由OR或AND运算符连接在一起的测试组成。
每个测试都是一个值比较。例如:“目标的生命值小于500”，“玩家没有死亡”或“玩家的库存中有超过3单位的物品[xxx]”。]=],
	["TU_WO_6"] = "添加一个延迟",
	["TU_WO_6_TEXT"] = "延迟可以在给定的时间内暂停工作流的执行，但它们也可以充当强制转换，并在玩家移动时中断工作流。",
	["TU_WO_ERROR_1"] = "在恢复本教程之前，请创建一个工作流。",
	["TYPE"] = "类型",
	["TYPE_CAMPAIGN"] = "剧本",
	["TYPE_DIALOG"] = "剧情",
	["TYPE_DOCUMENT"] = "文件",
	["TYPE_ITEM"] = "物品",
	["TYPE_ITEMS"] = "物品(s)",
	["TYPE_LOOT"] = "战利品",
	["TYPE_QUEST"] = "任务",
	["TYPE_QUEST_STEP"] = "任务步骤",
	["UNIT_FRIES"] = "薯条",
	["UNIT_POTATOES"] = "土豆",
	["WO_ACTIONS_LINKS"] = "动作环节",
	["WO_ACTIONS_LINKS_TT"] = [=[在这里你可以把你的工作流程和玩家任务动作联系起来。
这些动作是:| cff00ff00互动，倾听，交谈和检查。|r
每一个环节都是有条件的。]=],
	["WO_ADD"] = "创建工作流",
	["WO_ADD_ID"] = [=[|cff00ff00输入工作流ID。| r

它是一个内部ID，可以帮助您管理工作流，用户不会看到它。

请注意，同一个对象中不能有两个ID相同的工作流。]=],
	["WO_ADD_ID_NO_AVAILABLE"] = "T工作流 ID 无效.",
	["WO_COMMON_EFFECT"] = "共同的影响",
	["WO_CONDITION"] = "条件",
	["WO_CONDITION_TT"] = [=[评估一个条件。
如果条件失败，则停止工作流。]=],
	["WO_CONTEXT"] = "环境",
	["WO_CONTEXT_TT"] = "工作流上下文确定可以在工作流中使用哪些效果.",
	["WO_COPY"] = "工作流的内容复制",
	["WO_DELAY"] = "延迟",
	["WO_DELAY_CAST"] = "强制类型转换为",
	["WO_DELAY_CAST_SOUND"] = "播 声音 ID",
	["WO_DELAY_CAST_SOUND_TT"] = [=[一种预制声音的声音ID。你可以在这里放一个可循环的声音，在被打断时它会被打断。

|cff00ff00例如: 12273, 12361, ...等等。]=],
	["WO_DELAY_CAST_TEXT"] = "播 文本",
	["WO_DELAY_CAST_TEXT_TT"] = "这个文本请放在播放栏上",
	["WO_DELAY_DURATION"] = "延迟",
	["WO_DELAY_DURATION_TT"] = "延迟的持续时间, 秒.",
	["WO_DELAY_INTERRUPT"] = "中断",
	["WO_DELAY_INTERRUPT_1"] = "没有中断",
	["WO_DELAY_INTERRUPT_2"] = "移动时中断",
	["WO_DELAY_SECONDS"] = "秒（s）",
	["WO_DELAY_TT"] = [=[暂停工作流.
也可以作为一个脱落物，可以被打断。]=],
	["WO_DELAY_TYPE"] = "延迟种类",
	["WO_DELAY_TYPE_1"] = "普通延迟",
	["WO_DELAY_TYPE_1_TT"] = "简单地暂停工作流，不向玩家显示任何特定的信息.",
	["WO_DELAY_TYPE_2"] = "施法延迟",
	["WO_DELAY_TYPE_2_TT"] = "在工作流暂停期间显示一个施法条。",
	["WO_DELAY_WAIT"] = "等待",
	["WO_EFFECT"] = "效果",
	["WO_EFFECT_CAT_COMMON"] = "普通的",
	["WO_EFFECT_NO_EDITOR"] = "无法配置此效果。",
	["WO_EFFECT_SELECT"] = "选择一个效果",
	["WO_EFFECT_TT"] = [=[播放了一个效果。
它可以播放声音，显示文本，等等…]=],
	["WO_ELEMENT"] = "元素编辑",
	["WO_ELEMENT_ADD"] = "将元素添加到工作流",
	["WO_ELEMENT_COND"] = "编辑的影响条件",
	["WO_ELEMENT_COND_NO"] = "消除影响条件",
	["WO_ELEMENT_COND_TT"] = "为这个单一效果添加一个条件。",
	["WO_ELEMENT_COPY"] = "复制元素内容",
	["WO_ELEMENT_EDIT"] = "点击编辑元素",
	["WO_ELEMENT_EDIT_CTRL"] = "单击控件以条件该指令",
	["WO_ELEMENT_EDIT_RIGHT"] = "右键单击更多操作",
	["WO_ELEMENT_PASTE"] = "粘贴元素内容",
	["WO_ELEMENT_TYPE"] = "选择元素类型",
	["WO_EMPTY"] = [=[您可以从向工作流中添加元素开始。
这可能是一个影响，条件或延迟。]=],
	["WO_END"] = "结束工作流",
	["WO_EVENT_EX_ADD"] = "添加事件链接",
	["WO_EVENT_EX_BROWSER_COMBAT_LOG_ERROR"] = "不能显示参数，引用Wowpedia吗",
	["WO_EVENT_EX_BROWSER_NO_PAYLOAD"] = "没有参数",
	["WO_EVENT_EX_BROWSER_OPEN"] = "打开事件浏览器",
	["WO_EVENT_EX_BROWSER_TITLE"] = "事件浏览器",
	["WO_EVENT_EX_CONDI"] = "事件链接条件编辑器",
	["WO_EVENT_EX_EDITOR"] = "事件链接编辑器",
	["WO_EVENT_EX_LINK"] = "游戏活动链接",
	["WO_EVENT_EX_LINKS"] = "游戏剧本环节",
	["WO_EVENT_EX_LINKS_TT"] = [=[在这里你可以将你的工作流程与游戏事件联系起来.
每个环节都是有条件的.]=],
	["WO_EVENT_EX_NO"] = "没有事件的链接",
	["WO_EVENT_EX_UNKNOWN_ERROR"] = "[错误]%s中的未知事件%s",
	["WO_EVENT_ID"] = "事件ID",
	["WO_EVENT_ID_TT"] = [=[事件ID。

你可以在Wowpedia的WoWWiki网站上看到整个事件列表。

作为一个例子，PLAYER_REGEN_DISABLED在你进入战斗时被触发。]=],
	["WO_EVENT_LINKS"] = "对象事件环节",
	["WO_EXECUTION"] = "执行服务",
	["WO_EXPERT"] = "专家模式",
	["WO_EXPERT_DONE"] = "切换%s到专家模式。释放你的创造力!",
	["WO_EXPERT_EFFECT"] = "专家 效果",
	["WO_EXPERT_TT"] = [=[工作流是一组可以使对象活动的指令。

在这里，您可以为这个对象定义所有的工作流，然后您可以将它们链接到事件链接event links选项卡中的一个操作。]=],
	["WO_LINKS"] = "事件环节",
	["WO_LINKS_NO_LINKS"] = "没有环节",
	["WO_LINKS_NO_LINKS_TT"] = "不将此动作/事件链接到工作流。",
	["WO_LINKS_SELECT"] = "选择要链接的工作流",
	["WO_LINKS_TO"] = "链接到工作流",
	["WO_LINKS_TRIGGERS"] = "在这里，您可以将工作流程与该对象的具体事件联系起来.",
	["WO_NO"] = "没有工作流",
	["WO_PASTE"] = "粘贴工作流程内容",
	["WO_PASTE_CONFIRM"] = "将此工作流内容替换为您先前复制的内容?",
	["WO_REMOVE_POPUP"] = "删除这个工作流 %s?",
	["WO_SECURITY"] = "安全级别",
	["WO_SECURITY_HIGH"] = "高",
	["WO_SECURITY_HIGH_DETAILS"] = "此效果是安全的，不会提示安全警告。",
	["WO_SECURITY_LOW"] = "低",
	["WO_SECURITY_LOW_DETAILS"] = "这种影响是不安全的，可能是恶意的。它将根据用户安全设置提示安全警告并要求确认。",
	["WO_SECURITY_NORMAL"] = "中",
	["WO_SECURITY_NORMAL_DETAILS"] = "这种效果是安全的，但可能会造成不便。它将根据用户安全设置提示安全警告。",
	["WO_WO_SECURITY"] = "工作流的安全",
	["WO_WORKFLOW"] = "工作流"
}

Localization:GetLocale("zhCN"):AddTexts(localeContent);

--[[ Removed while CurseForge is malfunctioning
localeContent = {
	["ALL"] = "所有的",
	["BINDING_NAME_TRP3_INVENTORY"] = "開啟裝備欄",
	["BINDING_NAME_TRP3_MAIN_CONTAINER"] = "打開容器",
	["BINDING_NAME_TRP3_QUEST_ACTION"] = "執行動作：互動",
	["BINDING_NAME_TRP3_QUEST_LISTEN"] = "執行動作：聆聽",
	["BINDING_NAME_TRP3_QUEST_LOOK"] = "執行動作：觀察",
	["BINDING_NAME_TRP3_QUEST_TALK"] = "執行動作：對話",
	["DB"] = "資料庫",
	["DB_ACTIONS"] = "動作",
	["DB_ADD_COUNT"] = "你想將幾個 %s 放入您的物品欄中？",
	["DB_ADD_ITEM"] = "加入物品欄",
	["DB_ADD_ITEM_TT"] = "將指定數量的此物件放入您優先設置的物品欄（如果沒有則直接產生於主容器。）。",
	["DB_BACKERS"] = "開發者資料庫 (%s)",
	["DB_BACKERS_LIST"] = "特別感謝！",
	["DB_BROWSER"] = "物件瀏覽器",
	["DB_CREATE_CAMPAIGN"] = "創建任務或活動",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK"] = "空白任務單",
	["DB_CREATE_CAMPAIGN_TEMPLATES_BLANK_TT"] = [=[完全空白的任務單，
您必須重頭開始設計任務的每個環節。]=],
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM"] = "複製自…",
	["DB_CREATE_CAMPAIGN_TEMPLATES_FROM_TT"] = "創建一個由現存任務單複製的副本。",
	["DB_CREATE_CAMPAIGN_TT"] = "開始創建一個任務單",
	["DB_CREATE_ITEM"] = "創建物品",
	["DB_CREATE_ITEM_TEMPLATES"] = "選擇創建模板",
	["DB_CREATE_ITEM_TEMPLATES_BLANK"] = "空白物件",
	["DB_CREATE_ITEM_TEMPLATES_BLANK_TT"] = [=[一個完全空白的模板，
必須從頭開始設計。]=],
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER"] = "容器物件",
	["DB_CREATE_ITEM_TEMPLATES_CONTAINER_TT"] = [=[一個設計容器物件的模板，
有容納其他物件的基本功能。]=],
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT"] = "檔案物件",
	["DB_CREATE_ITEM_TEMPLATES_DOCUMENT_TT"] = [=[含有可閱讀子物件的子母物件檔，
可以做為書籍或卷軸等文件類型物件。]=],
	["DB_CREATE_ITEM_TEMPLATES_EXPERT"] = "高級物件",
	["DB_CREATE_ITEM_TEMPLATES_EXPERT_TT"] = [=[高級物件有更多的功能與動作選項，
提供給較為熟練的玩家。]=],
	["DB_CREATE_ITEM_TEMPLATES_FROM"] = "複製自…",
	["DB_CREATE_ITEM_TEMPLATES_FROM_TT"] = "以現存的物件製造副本。",
	["DB_CREATE_ITEM_TEMPLATES_QUICK"] = "快速創建",
	["DB_CREATE_ITEM_TEMPLATES_QUICK_TT"] = [=[快速創建一個沒有任何功能的簡單物件，
並於創建完成後置入您的主要容器中。]=],
	["DB_CREATE_ITEM_TT"] = "為新物件選擇一個創建模板",
	["DB_DELETE_TT"] = "刪除此物件與其子物件。",
	["DB_EXPERT_TT"] = "將此物件切換置高級模式，容許更多元的客制選項。",
	["DB_EXPORT"] = "快速導出物件",
	["DB_EXPORT_DONE"] = [=[您的物件已經被匯出到名為 |cff00ff00totalRP3_Extended_ImpExport.lua|r 的檔案之中，並位於：

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables

您可以和朋友們分享這個檔案，
匯入後便可以在 |cff00ff00全資料庫|r內找到。]=],
	["DB_FILTERS"] = "搜尋過濾器",
	["DB_FILTERS_CLEAR"] = "清除",
	["DB_FILTERS_NAME"] = "物件名稱",
	["DB_FILTERS_OWNER"] = "創建者",
	["DB_FULL"] = "全資料庫 (%s)",
	["DB_FULL_EXPORT"] = "完整匯出",
	["DB_FULL_EXPORT_TT"] = "無視檔案尺寸完整匯出此物件，這會使插件重新加載、並強制其儲存檔案。",
	["DB_IMPORT"] = "快速匯入物件",
	["DB_IMPORT_CONFIRM"] = [=[此物件和您當前的插件版本不同。

匯入的 TRP3E 版本為： %s
您的 TRP3E 版本為： %s

|cffff9900有可能會有不相容的情況，
是否要繼續匯入？]=],
	["DB_IMPORT_DONE"] = "物件已完全匯入！",
	["DB_IMPORT_EMPTY"] = [=[您的 |cff00ff00totalRP3_Extended_ImpExport.lua|r 檔案裡並沒有任何物件。

該檔案必須在 |cffff9900遊戲啟動前|r便放置在：

World of Warcraft\WTF\
account\YOUR_ACCOUNT\SavedVariables

之中。]=],
	["DB_IMPORT_ERROR1"] = "無法讀取此物件。",
	["DB_IMPORT_FULL"] = "完整匯入物件",
	["DB_IMPORT_FULL_CONFIRM"] = [=[確定要匯入以下物件嗎？

%s
%s
由 |cff00ff00%s|r 所創建
版本為： %s]=],
	["DB_IMPORT_FULL_TT"] = "匯入名稱為 |cff00ff00totalRP3_Extended_ImpExport.lua|r的檔案 。",
	["DB_LIST"] = "造物明細",
	["DB_LOCALE"] = "創建國家",
	["DB_MY"] = "我的資料庫",
	["DB_MY_EMPTY"] = [=[您還沒創建任何物件，
使用下方的按鈕來開始您的工匠之旅！]=],
	["DB_OTHERS"] = "其他玩家資料庫",
	["DB_OTHERS_EMPTY"] = "此處的物件皆由其他玩家所創建。",
	["DB_RESULTS"] = "搜尋結果",
	["DB_SECURITY_TT"] = "檢視此物件的所有安全性參數，在這裡您可以關閉物件造成的不良影響。",
	["DB_TO_EXPERT"] = "切換至高級模式",
	["DB_WARNING"] = [=[|cffff0000！！！警告！！！

|cffff9900在您切換到資料庫之前別忘了儲存變更！]=],
	["DO_NEW_DOC"] = "文件",
	["DO_PAGE_ADD"] = "新增書頁",
	["DO_PAGE_BORDER_1"] = "羊皮紙",
	["DO_PAGE_COUNT"] = "頁數 %s / %s",
	["DO_PAGE_EDITOR"] = "頁面編輯器： 第 %s 頁",
	["DO_PAGE_FIRST"] = "第一頁",
	["DO_PAGE_FONT"] = "%s 字體",
	["DO_PAGE_HEIGHT"] = "頁高",
	["DO_PAGE_HEIGHT_TT"] = "以像素為單位的頁面高度，注意，某些背景圖有大小限制，若是超過可能會讓文件效果不佳。",
	["DO_PAGE_LAST"] = "最後一頁",
	["DO_PAGE_MANAGER"] = "頁面選擇與新增",
	["DO_PAGE_NEXT"] = "下一頁",
	["DO_PAGE_PREVIOUS"] = "上一頁",
	["DO_PAGE_REMOVE"] = "移除此頁",
	["DO_PAGE_REMOVE_POPUP"] = "移除第 %s 頁嗎？",
	["DO_PAGE_RESIZE"] = "調整頁面邊界",
	["DO_PAGE_RESIZE_TT"] = [=[允許讀者自由變更頁面長寬。

|cffff9900建議確認您的文件排版試流暢易讀的。

|cff00ff00就算開放此功能，也可能因為排版不良造成閱讀不易或超過畫面邊界。]=],
	["DO_PAGE_TILING"] = "底圖自動排列",
	["DO_PAGE_TILING_TT"] = "勾選此選項，則底圖和文件尺寸不合時會自動水平及垂直複製排列，如果沒有勾選，則底圖會以拉伸的方式覆蓋文件。（可能造成圖案比例過大。）",
	["DO_PAGE_WIDTH"] = "頁寬",
	["DO_PAGE_WIDTH_TT"] = "以像素為單位的頁面寬度，注意，某些背景圖有大小限制，若是超過可能會讓文件效果不佳。",
	["DO_PARAMS_CUSTOM"] = "頁面自訂參數",
	["DO_PARAMS_GLOBAL"] = "文件參數設置",
	["DO_PREVIEW"] = "點擊以預覽頁面",
	["DOC_UNKNOWN_ALERT"] = "無法開啟此文件。（檔案遺失）",
	["DR_DELETED"] = "銷毀： %s x%d",
	["DR_DROPED"] = "將 %s x%d 扔到地上。",
	["DR_NOTHING"] = "這裡找不到任何物品。",
	["DR_POPUP"] = "丟在地上",
	["DR_POPUP_ASK"] = [=[選擇你要執行的動作：
%s]=],
	["DR_POPUP_REMOVE"] = "摧毀",
	["DR_POPUP_REMOVE_TEXT"] = "確定要摧毀這個物品嗎？",
	["DR_RESULTS"] = "找到 %s 。",
	["DR_SEARCH_BUTTON"] = "尋找 |cff00ff00my|r 的物品。",
	["DR_SEARCH_BUTTON_TT"] = "搜尋立足點十五碼內是否有您的物品。",
	["DR_STASHED"] = "藏物處： %s x%d",
	["DR_STASHES"] = "藏物處",
	["DR_STASHES_CREATE"] = "在這裡建立一個藏物處",
	["DR_STASHES_CREATE_TT"] = "在您的角色所站的位置建立一個藏物處，可供其他玩家搜尋。",
	["DR_STASHES_DROP"] = "你不能往其他人的藏物處丟物品。",
	["DR_STASHES_EDIT"] = "編輯藏物處",
	["DR_STASHES_FOUND"] = "找到藏物處： %s",
	["DR_STASHES_FULL"] = "這個藏物處已經爆滿了！",
	["DR_STASHES_HIDE"] = "無法被掃描",
	["DR_STASHES_HIDE_TT"] = [=[此藏物處不會被其他玩家的地圖掃描給偵測，
但不代表絕對不可能被發現。]=],
	["DR_STASHES_NAME"] = "藏物處",
	["DR_STASHES_NOTHING"] = "沒有在這裡找到任何藏物處",
	["DR_STASHES_OWNER"] = "擁有者",
	["DR_STASHES_OWNERSHIP"] = "接管所有權",
	["DR_STASHES_OWNERSHIP_PP"] = [=[是否要接管此藏物處的所有權？
此角色將會在其他玩家掃描時顯示為藏物處的擁有者。]=],
	["DR_STASHES_REMOVE"] = "移除藏物處",
	["DR_STASHES_REMOVE_PP"] = [=[確定拆除此藏物處嗎？
|cffff9900裡面的所有物品都會遺失！]=],
	["DR_STASHES_REMOVED"] = "已撤除藏物處。",
	["DR_STASHES_SCAN"] = "搜索其他玩家的藏物處。",
	["DR_STASHES_SCAN_MY"] = "搜尋我的藏物處。",
	["DR_STASHES_SEARCH"] = "搜尋 |cff00ff00其他玩家|r 的藏物處",
	["DR_STASHES_SEARCH_TT"] = "搜尋在此區域十五碼內之藏物處，將會花上你三秒的時間，站穩啦！",
	["DR_STASHES_TOO_FAR"] = "你距離這個藏物處太遠了。",
	["DR_STASHES_WITHIN"] = "|cff00ff00你|r 在十五碼內的藏物處。",
	["DR_SYSTEM"] = "拾放系統",
	["DR_SYSTEM_TT"] = [=[放下／搜尋你的物品以及創建／存取你的藏物處，
拾放系統無法在地城、競技場與站場中使用。]=],
	["EFFECT_DISMOUNT"] = "解除坐騎",
	["EFFECT_DISMOUNT_TT"] = "解除角色當前的坐騎。",
	["EFFECT_DISPET"] = "解散戰寵",
	["EFFECT_DISPET_TT"] = "解散當前被召喚的戰寵。",
	["EFFECT_DOC_CLOSE"] = "關閉文件",
	["EFFECT_DOC_CLOSE_TT"] = "關閉當前開啟的文件檔。如果當前沒有顯示的文件則不會動作。",
	["EFFECT_DOC_DISPLAY"] = "顯示文件檔",
	["EFFECT_DOC_DISPLAY_TT"] = "對玩家顯示特定的文件檔，如果已經有開啟的文件檔則會取代其顯示。",
	["EFFECT_DOC_ID"] = "文件檔 ID",
	["EFFECT_ITEM_BAG_DURABILITY"] = "破壞／修補容器",
	["IT_PU_SOUND"] = "拾取音效",
	["IT_PU_SOUND_1183"] = "背包",
	["IT_PU_SOUND_1184"] = "書本",
	["IT_PU_SOUND_1185"] = "布料",
	["IT_PU_SOUND_1186"] = "食物",
	["IT_PU_SOUND_1187"] = "草藥",
	["IT_PU_SOUND_1188"] = "鍊條",
	["IT_PU_SOUND_1189"] = "食物",
	["IT_PU_SOUND_1190"] = "大型金屬",
	["IT_PU_SOUND_1191"] = "小型金屬",
	["IT_PU_SOUND_1192"] = "紙張",
	["IT_PU_SOUND_1193"] = "指環",
	["IT_PU_SOUND_1194"] = "石頭",
	["IT_PU_SOUND_1195"] = "小型鍊條",
	["IT_PU_SOUND_1196"] = "棍棒",
	["IT_PU_SOUND_1197"] = "液體",
	["IT_PU_SOUND_1198"] = "小型木料",
	["IT_PU_SOUND_1199"] = "大型木料",
	["IT_PU_SOUND_1221"] = "寶石",
	["IT_QUEST"] = "任務道具",
	["IT_QUEST_TT"] = [=[當此物品設計為可以開啟任務的功能時，建議勾選此項在圖示上標示為任務道具。

|cffff7700但就跟其他的外型選項一樣，此選項只是在圖示上的改變，要將此物品真正設定為任務道具仍然必須由物品內部的作業流程來設計。]=],
	["IT_SOULBOUND_TT"] = "此物品放置在道具欄時和玩家綁定，無法交易或放在地上。",
	["IT_STACK"] = "可堆疊",
	["IT_STACK_COUNT"] = "堆疊上限",
	["IT_STACK_COUNT_TT"] = "容器內容一物品欄可堆疊之物品上限，數值必須大於１。",
	["IT_STACK_TT"] = "允許物品被堆疊在同個物品欄。",
	["IT_TRIGGER_ON_DESTROY"] = "摧毀時觸發",
	["IT_TRIGGER_ON_DESTROY_TT"] = [=[當玩家摧毀此疊物品時觸發動作。（將物品拖曳出物品欄並點選銷毀。）

]=],
	["IT_TRIGGER_ON_USE"] = "使用時觸發",
	["IT_TRIGGER_ON_USE_TT"] = [=[當每次玩家使用物品時便觸發。

|cff00ff00別忘了在物品設計主頁勾選物品為可使用。]=],
	["IT_UNIQUE_COUNT"] = "可持有最大數量",
	["IT_UNIQUE_COUNT_TT"] = "每個角色所能持有該物品的最大值，應要大於０。",
	["IT_UNIQUE_TT"] = "當此項啟動時，角色持有此物品的數量就會受到限制。",
	["IT_USE"] = "可使用",
	["IT_USE_TEXT"] = "使用訊息",
	["IT_USE_TEXT_TT"] = "此訊息可用來解釋使用此物品的效果，會顯示在道具提示。（例：閱讀書本、舉起寶石、釋放龍息…等等。）",
	["IT_USE_TT"] = [=[允許此物品被使用。
|cff00ff00您可以在動作流程的頁面編輯使用此物品的效果。]=],
	["IT_WEARABLE"] = "可穿戴",
	["IT_WEARABLE_TT"] = [=[允許此物品被他人觀察並穿戴在角色身上指定的裝備欄位。

|cffff9900若此欄位打勾，則其他玩家在檢視您的角色時將被允許觀察到此物品，即使您沒有將其放置在裝備欄位。]=],
	["ITEM_ID"] = "物品 ID",
	["LOOT"] = "搜刮",
	["LOOT_CONTAINER"] = "搜刮容器",
	["LOOT_DISTANCE"] = "您距離蒐集點太遠了。",
	["MODE_EXPERT"] = "高級",
	["MODE_NORMAL"] = "正常",
	["MODE_QUICK"] = "快速",
	["NPC_EMOTES"] = "表情",
	["NPC_SAYS"] = "說",
	["NPC_WHISPERS"] = "悄悄話",
	["NPC_YELLS"] = "大喊",
	["OP_COMP_GREATER"] = "大於",
	["OP_COMP_GREATER_OR_EQUALS"] = "大於等於",
	["OP_COMP_LESSER"] = "小於",
	["OP_COMP_LESSER_OR_EQUALS"] = "小於等於",
	["OP_COMP_NEQUALS"] = "不等於",
	["OP_CURRENT"] = "當前數值",
	["OP_FAIL"] = "失敗訊息",
	["OP_NUMERIC"] = "數值"
}

Localization:GetLocale("zhTW"):AddTexts(localeContent);
]]

TRP3_KS_BACKERS =
[[#Total RP 3: Extended (version %s)

Created by |cff00ff00Sylvain "Telkostrasz" Cossement|r and |cff00ff00Morgane "Ellypse" Parize|r.

## To all our Kickstarter backers: many thanks for the support!

- Abyssaloth
- Alex Stromboli (Strom)
- Alex Villescas
- Alexander Salminen
- Andrew P. Thayer
- Andy Austin Polycarp Tymczyszyn
- Antonio Campos jr from McAllen Texas
- Arranax
- Ashley Ann
- Austin Lang
- Brendan Steward
- Caleb Peyton
- Cave
- Charles Gingras
- Cheezedogg
- Chris Magalee
- Christine Brandon
- Colin Stent
- Dave
- Dwargoth 
- Dylan Garrett
- Edward Ryan
- Ella
- Erzan
- Fannar Vilhelmsson
- GreenGrass
- Herman Duyker
- James Lofshult ((Solav))
- James Turner
- Juan
- Kaeril
- Kerry PMack
- Keti
- Kevin Kerrigan
- krinklebearcat
- Kristin Aurora Brayman
- Laerith
- Laleila
- Lilithsahl from Moon Guard US
- Linreia 
- Lium Alxcen
- Lodjay
- Maethi
- Managan Southpaw
- Manuel Robador Merino
- Max Juchheim
- Meg Karper
- Miajensen 
- Michael Bell
- MisticTiger
- Nat
- Nicolo Dresp
- Nimsy
- Orion Cain
- Patrick D Fletcher
- Paul Corlay
- Phahi
- Rob G
- Robinson Gracely
- Rocky Aldridge
- Ryan McGilloway
- Ryldor
- Sachiel
- Saelora
- Samaramon
- Sean "Pommie" K
- Selendis
- Simon Abadei
- Sindaru
- Soraptor
- Sunkara
- Taurii from House of Crows of Wyrmrest Accord
- TeegeeUK
- thedreameater
- Thêmys
- Thomas
- Thomas Laurberg Sørensen
- Valnoressa
- Victor Nilsson
- Vinayack 
- W. Kristoph "Calmorlayne" Nolen
- Defilers of Arathor
- Yann
- Ydara
- Zach Platzer
- Zack Wannemacher
- Zencore

##  You are the best!
]];
