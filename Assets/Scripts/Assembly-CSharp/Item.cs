using System.Collections.Generic;
using UnityEngine;

public class Item : Configurable
{
	public enum MetaType
	{
		None = 0,
		Local = 1,
		Global = 2,
	}

	public enum Fieldable
	{
		Always = 0,
		Placed = 1,
		None = 2,
	}

	public enum Shape
	{
		None = 0,
		Box = 1,
		Polygonal = 2,
	}

	public enum Layer
	{
		Base = 0,
		Back = 1,
		Front = 2,
		Liquid = 3,
		Unknown = 4,
		None = 5,
	}

	public enum Mod
	{
		None = 0,
		Tiling = 1,
		Rotation = 2,
		Field = 3,
		Decay = 4,
		Sprite = 5,
		Change = 6,
		Stack = 7,
		Height = 8,
	}

	public enum Action
	{
		None = 0,
		Mine = 1,
		Dig = 2,
		Smash = 3,
		Gun = 4,
		Shield = 5,
		Heal = 6,
		Refill = 7,
		Teleport = 8,
		Stealth = 9,
		Exoleg = 10,
		Melee = 11,
		SkillReset = 12,
		Revive = 13,
		NameChange = 14,
		Unknown = 15,
	}

	public enum Use
	{
		None = 0,
		Change = 1,
		Climb = 2,
		Dialog = 3,
		CreateDialog = 4,
		Protected = 5,
		Public = 6,
		Sign = 7,
		Container = 8,
		Teleport = 9,
		ZoneTeleport = 10,
		Teleportable = 11,
		Plaque = 12,
		Landmark = 13,
		Geck = 14,
		Composter = 15,
		Fly = 16,
		Propel = 17,
		Hover = 18,
		SkillReset = 19,
		SkillBonus = 20,
		SteamBonus = 21,
		Note = 22,
		Hidden = 23,
		Expiator = 24,
		Minigame = 25,
		Warmth = 26,
		Spawn = 27,
		Move = 28,
		Switch = 29,
		Inventory = 30,
		Pvp = 31,
		Suppress = 32,
		BuildingExtension = 33,
		Hazmat = 34,
		FieldDisplay = 35,
		Capacity = 36,
		Afterburner = 37,
		Event = 38,
		Command = 39,
		Sound = 40,
		Challenge = 41,
		Unknown = 42,
	}

	public enum Damage
	{
		None = 0,
		Acid = 1,
		Bludgeoning = 2,
		Cold = 3,
		Crushing = 4,
		Energy = 5,
		Fire = 6,
		Ink = 7,
		Piercing = 8,
		Slashing = 9,
		Sonic = 10,
		Steam = 11,
		Stink = 12,
		Dessication = 13,
		All = 14,
	}

	public List<Item> changeItems;
	public string category;
	public bool isAccessory;
	public int categoryIndex;
	public string inventoryCategory;
	public MetaType meta;
	public Fieldable fieldable;
	public int field;
	public bool wardrobe;
	public bool isBase;
	public string animation;
	public Shape shape;
	public string shapeDefinition;
	public Damage damageType;
	public float damageAmount;
	public float damageMinVelocity;
	public bool invulnerable;
	public Layer layer;
	public string material;
	public string type;
	public Mod mod;
	public int modMax;
	public Action action;
	public Color color;
	public int toughness;
	public bool entity;
	public bool diggable;
	public bool placeable;
	public bool consumable;
	public bool placeover;
	public short placeMod;
	public bool mounted;
	public bool mirrorable;
	public bool autoEquip;
	public float power;
	public float rate;
	public int burst;
	public float ammoCost;
	public string spawn;
	public float speed;
	public string miningSkill;
	public int miningSkillLevel;
	public string placingSkill;
	public int placingSkillLevel;
	public string craftingSkill;
	public int craftingSkillLevel;
	public int steamBonus;
	public bool visible;
	public bool tileable;
	public bool opaque;
	public bool whole;
	public bool maskBackground;
	public bool shadow;
	public tk2dSpriteDefinition maskSprite;
	public Effect emitter;
	public Effect shootEmitter;
	public string miningEffect;
	public string muzzle;
	public string glowSprite;
	public Color borderContinuityColor;
	public bool maskContinuityWhole;
	public float light;
	public Color lightColor;
	public Vector2 lightPosition;
	public tk2dSpriteDefinition guiSprite;
	public string inventorySpriteName;
	public Color inventoryColor;
	public string title;
	public string tooltip;
	public int rarity;
	public string hint;
	public string shortHint;
	public List<string> sound;
	public string soundLoop;
	public float soundLoopVolume;
	public long useMask;
	public List<Item.Use> useTypes;
	public float useProximity;
	public bool craftable;
	public int craftingQuantity;
}
