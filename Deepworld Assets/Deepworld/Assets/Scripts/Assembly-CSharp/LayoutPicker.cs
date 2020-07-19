using UnityEngine;
using System;

public class LayoutPicker : MonoBehaviour
{
	[Serializable]
	public class LayoutPick
	{
		public Vector2 size;
		public GameObject layout;
	}

	public LayoutPick[] picks;
}
