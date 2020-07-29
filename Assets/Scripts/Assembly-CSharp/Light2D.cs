using UnityEngine;

public class Light2D : MonoBehaviour
{
	public enum LightDetailSetting
	{
		Rays_50 = 48,
		Rays_100 = 96,
		Rays_200 = 192,
		Rays_300 = 288,
		Rays_400 = 384,
		Rays_500 = 480,
		Rays_600 = 576,
		Rays_700 = 672,
		Rays_800 = 816,
		Rays_900 = 912,
		Rays_1000 = 1008,
		Rays_2000 = 2016,
		Rays_3000 = 3024,
		Rays_4000 = 4032,
		Rays_5000 = 5040,
	}

	public bool EDITOR_SHOW_BOUNDS;
	public bool EDITOR_SHOW_MESH;
	[SerializeField]
	protected Color lightColor;
	[SerializeField]
	protected LightDetailSetting lightDetail;
	[SerializeField]
	protected Material lightMaterial;
	[SerializeField]
	protected LayerMask shadowLayer;
	[SerializeField]
	protected bool useEvents;
	[SerializeField]
	protected bool isShadowCaster;
	[SerializeField]
	protected bool hideIfCovered;
	public bool physical;
}
