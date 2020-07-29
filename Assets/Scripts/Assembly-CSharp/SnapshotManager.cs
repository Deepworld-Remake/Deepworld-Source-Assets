using UnityEngine;
using UnityStandardAssets.ImageEffects;

public class SnapshotManager : Singleton<SnapshotManager>
{
	public Camera snapshotCamera;
	public Transform snapshotOverlayTransform;
	public RenderTexture renderTexture;
	public ColorCorrectionCurves colorCorrectionCurves;
	public TiltShift tiltShift;
}
