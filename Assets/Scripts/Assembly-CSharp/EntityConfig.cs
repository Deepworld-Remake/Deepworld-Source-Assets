using System;
using System.Collections.Generic;

[Serializable]
public class EntityConfig : Configurable
{
	public bool named;
	public bool usable;
	public bool isBlock;
	public string spine;
	public string spineSkin;
	public List<string> slots;
	public List<string> attachments;
	public tk2dSpriteDefinition sprite;
	public List<tk2dSpriteDefinition> sprites;
	public float scaleBase;
	public float scaleRange;
	public Item.Damage damageType;
	public float damageAmount;
	public float density;
	public float gravity;
	public string material;
	public float obstacle;
	public float life;
	public bool collides;
	public bool shield;
	public List<string> sounds;
	public List<string> ambientSounds;
	public List<string> deathSounds;
	public Effect damageEmitter;
	public Effect deathEmitter;
}
