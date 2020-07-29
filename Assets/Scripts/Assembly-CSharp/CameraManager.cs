using UnityEngine;

public class CameraManager : ReplaceableSingleton<CameraManager>
{
	public Camera mainCamera;
	public Transform mainCameraTransform;
	public float mainCameraDefaultZoom;
	public Camera lightingCamera;
	public Transform lightingCameraTransform;
	public Transform lightingOverlayTransform;
	public Camera skyCamera;
	public Transform avatarTransform;
}
