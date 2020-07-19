using UnityEngine;
using UnityEngine.Audio;

public class AudioManager : Singleton<AudioManager>
{
	public Transform listenerTransform;
	public SoundBlockPool soundBlockPool;
	public WorldSoundBucket soundBucket;
	public AudioMixer mixer;
	public AudioMixerGroup guiMixerGroup;
	public AudioMixerGroup worldMixerGroup;
	public AudioMixerGroup musicMixerGroup;
	public GlobalSoundSource soundSource;
	public TextAsset replacementSoundsList;
}
