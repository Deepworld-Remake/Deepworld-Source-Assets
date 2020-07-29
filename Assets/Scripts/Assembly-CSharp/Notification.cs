using UnityEngine;

public class Notification
{
	public enum Type
	{
		Alert = 0,
		Chat = 1,
		Emote = 2,
	}

	public Type type;
	public int statusCode;
	public string text;
	public string secondaryText;
	public string window;
	public string prefabName;
	public Color color;
	public float fontScale;
	public Vector2 screenPosition;
	public float duration;
}
