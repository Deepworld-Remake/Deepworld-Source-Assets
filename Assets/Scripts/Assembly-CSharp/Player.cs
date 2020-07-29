using CodeStage.AntiCheat.ObscuredTypes;
using UnityEngine;
using System.Collections.Generic;

public class Player : ReplaceableSingleton<Player>
{
	public string documentId;
	public string apiToken;
	public ObscuredBool admin;
	public ObscuredBool activeAdmin;
	public int entityId;
	public Transform avatarTransform;
	public CharacterController2D avatarController2D;
	public EntityAvatar avatar;
	public Transform light;
	public int groundedLayerMask;
	public int foregroundLayerMask;
	public int entityLayerMask;
	public int directingState;
	public int currentLiquidLevel;
	public bool submerged;
	public float lastSubmergedAt;
	public string karma;
	public bool karmaIsPoor;
	public List<string> followeesSorted;
	public List<string> followersSorted;
	public bool isTeleporting;
	public bool isZoneTeleporting;
}
