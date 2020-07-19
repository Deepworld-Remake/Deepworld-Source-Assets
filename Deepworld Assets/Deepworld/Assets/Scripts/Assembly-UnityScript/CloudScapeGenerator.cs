using System;
using UnityEngine;

[Serializable]
public class CloudScapeGenerator : MonoBehaviour
{
	public GameObject[] cloudMeshes;
	public GameObject targetParticleSystem;
	public float areaScale;
	public float areaHeight;
	public int cloudAmount;
	public bool fixedScale;
	public float maxScale;
	public float minScale;
	public bool multipleParticleSystems;
}
