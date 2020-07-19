using System;

[Serializable]
public class ObjectPoolPattern
{
	public string key;
	public int minFill;
	public int desiredFill;
	public int desiredFillRate;
	public int maxFill;
}
