using UnityEngine;

public class MeshGradient : MonoBehaviour
{
	public enum Direction
	{
		Vertical = 0,
		Diagonal = 1,
	}

	public Direction direction;
	public Color colorA;
	public Color colorB;
}
