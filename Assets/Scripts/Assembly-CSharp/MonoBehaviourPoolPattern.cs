using System;
using UnityEngine;

[Serializable]
public class MonoBehaviourPoolPattern : ObjectPoolPattern
{
	public GameObject prefab;
	public bool autoPopulate;
	public bool setActive;
	public bool parentOnDespawn;
}
