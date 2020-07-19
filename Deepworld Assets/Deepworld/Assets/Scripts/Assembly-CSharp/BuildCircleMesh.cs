using UnityEngine;

public class BuildCircleMesh : MonoBehaviour
{
	public int elements;
	public float startAngle;
	public float endAngle;
	public float innerRadius;
	public float circleWidth;
	public bool addCaps;
	public Vector2 uv1;
	public Vector2 uv2;
	public Mesh mesh;
	public bool createNewMeshInAwake;
	public bool fullCircle;
	public int count;
	public Color color;
	public float innerSinTime;
	public float outerSinTime;
}
