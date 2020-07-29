using UnityEngine;
using System.Collections.Generic;

public class PoolInstance<T, U> : Singleton<U>
{
	public GameObject prefab;
	public HashSet<T> pool;
	public HashSet<T> pending;
	public HashSet<T> active;
	public int minFill;
	public int desiredFill;
	public int desiredFillRate;
	public int maxFill;
	public bool maxWarning;
	public bool setActive;
	public bool parentOnDespawn;
	public bool sendSpawnedMessage;
	public bool sendDespawnedMessage;
	public bool trackActive;
	public int totalSpawned;
}
