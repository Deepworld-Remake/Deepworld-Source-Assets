using UnityEngine;
using System.Collections.Generic;

public class Entity : MonoBehaviour
{
	public EntityConfig config;
	public List<EntityConfig> configComponents;
	public int entityId;
	public float health;
	public int rotation;
	public bool local;
	public bool isPlayer;
	public bool isHuman;
	public bool isTurret;
	public bool locateOffscreen;
	public bool isFollowee;
}
