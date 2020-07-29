using System;
using UnityEngine;

[Serializable]
public class Flight : MonoBehaviour
{
	public float _maxSpeed;
	public float _minSpeed;
	public float _rotationSpeed;
	public float _acceleration;
	public float _speed;
	public Quaternion AddRot;
}
