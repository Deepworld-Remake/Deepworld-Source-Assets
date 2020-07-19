public class Command
{
	public enum Identity
	{
		Authenticate = 1,
		Configuration = 2,
		Blocks = 3,
		Inventory = 4,
		PlayerPosition = 5,
		EntityPosition = 6,
		EntityStatus = 7,
		EntityChange = 8,
		BlockChange = 9,
		InventoryUse = 10,
		BlockMine = 11,
		BlockPlace = 12,
		Chat = 13,
		InventoryMove = 14,
		Light = 15,
		ChunkRequest = 16,
		ZoneStatus = 17,
		Health = 18,
		Craft = 19,
		MetaBlock = 20,
		BlockUse = 21,
		ChangeAppearance = 22,
		ZoneSearch = 23,
		ZoneChange = 24,
		BlocksIgnore = 25,
		Respawn = 26,
		Follow = 27,
		Setting = 28,
		Achievement = 29,
		AchievementProgress = 48,
		Effect = 30,
		Spawn = 31,
		Kill = 32,
		Notification = 33,
		Rain = 34,
		Skill = 35,
		Hint = 36,
		Redeem = 37,
		EnterZone = 38,
		Wardrobe = 39,
		Minigame = 40,
		Transaction = 41,
		Serendipity = 42,
		TransactionRefresh = 43,
		Stat = 44,
		Dialog = 45,
		EntityUse = 46,
		Console = 47,
		BlockDirect = 49,
		Teleport = 50,
		EntitiesRequest = 51,
		Facebook = 52,
		ZoneExplored = 53,
		Status = 54,
		Missive = 55,
		MissiveInfo = 56,
		Event = 57,
		Upload = 58,
		ChangePassword = 59,
		Xp = 60,
		Level = 61,
		Bookmark = 62,
		Quest = 63,
		PlayerOnline = 65,
		Heartbeat = 143,
		Give = 200,
		Day = 203,
		Restart = 253,
		Admin = 254,
		Kick = 255,
	}

	public Identity identity;
}
