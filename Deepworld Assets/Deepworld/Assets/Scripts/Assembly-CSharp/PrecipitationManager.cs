using UnityEngine;

public class PrecipitationManager : ReplaceableSingleton<PrecipitationManager>
{
	public ParticleSystem cloudSystem;
	public float transitionTime;
	public GlobalSoundSource soundSource;
}
