using UnityEngine;

public class SkeletonDataAsset : ScriptableObject
{
	public AtlasAsset atlasAsset;
	public TextAsset skeletonJSON;
	public float scale;
	public string[] fromAnimation;
	public string[] toAnimation;
	public float[] duration;
}
