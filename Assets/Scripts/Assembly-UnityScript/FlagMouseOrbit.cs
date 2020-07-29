using System;
using UnityEngine;

[Serializable]
public class FlagMouseOrbit : MonoBehaviour
{
	public Transform target;
	public float distance;
	public float xSpeed;
	public float ySpeed;
	public int yMinLimit;
	public int yMaxLimit;
}
