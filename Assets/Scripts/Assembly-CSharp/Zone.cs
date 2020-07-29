using CodeStage.AntiCheat.ObscuredTypes;
using UnityEngine;
using System.Collections.Generic;

public class Zone : ReplaceableSingleton<Zone>
{
	public string documentId;
	public string biome;
	public bool paused;
	public ObscuredBool pvp;
	public int seed;
	public bool recycle;
	public int blockCount;
	public Rect blockRect;
	public Rect blockRectBounds;
	public int chunkCount;
	public float dayPercent;
	public float temperature;
	public float wind;
	public string precipitationType;
	public float acidity;
	public List<Vector2> deathPositions;
	public bool isMember;
	public bool isPrivate;
	public bool isProtected;
	public bool isProtectedPlayer;
	public string isProtectedReason;
}
