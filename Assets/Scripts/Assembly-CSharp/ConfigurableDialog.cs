using UnityEngine;
using UnityEngine.UI;

public class ConfigurableDialog : MonoBehaviour
{
	public enum ColorType
	{
		Text = 0,
		Label = 1,
		Error = 2,
		None = 3,
	}

	public RectTransform scrollPanel;
	public RectTransform titleBanner;
	public Text titleLabel;
	public DialogActionPanel actionPanel;
	public bool lightColorScheme;
	public bool appearEffect;
}
