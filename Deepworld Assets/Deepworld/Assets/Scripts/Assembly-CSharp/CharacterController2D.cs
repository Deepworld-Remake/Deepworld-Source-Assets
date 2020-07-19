using UnityEngine;

public class CharacterController2D : MonoBehaviour
{
	public bool usePhysicsForMovement;
	public float skinWidth;
	public LayerMask platformMask;
	public LayerMask avoidOverlapMask;
	public LayerMask oneWayPlatformMask;
	public float slopeLimit;
	public AnimationCurve slopeSpeedMultiplier;
	public int totalHorizontalRays;
	public int totalVerticalRays;
	public new Transform transform;
	public BoxCollider2D boxCollider;
}
