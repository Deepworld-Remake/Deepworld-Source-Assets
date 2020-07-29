using UnityEngine;

public class GameGui : ReplaceableSingleton<GameGui>
{
	public float uiScale;
	public Canvas canvas;
	public ScreenContainer screenContainer;
	public Transform windowContainer;
	public GlobalSoundSource soundSource;
	public GameMenu gameMenu;
	public HelpOverlay helpOverlay;
	public bool protectorRangefinderActive;
}
