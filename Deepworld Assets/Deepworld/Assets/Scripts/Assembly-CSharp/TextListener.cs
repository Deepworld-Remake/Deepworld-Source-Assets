using UnityEngine;

public class TextListener : MonoBehaviour
{
	public enum Type
	{
		MessageString = 0,
		MessageInt = 1,
		MessageObject = 2,
	}

	public Type type;
	public string eventName;
	public string interpolation;
	public string format;
}
