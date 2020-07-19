using UnityEngine;

public class BBTouch
{
	public enum Type
	{
		None = 0,
		Movement = 1,
		Action = 2,
		World = 3,
		Directing = 4,
	}

	public Vector2 origin;
	public Vector2 position;
	public Type type;
}
