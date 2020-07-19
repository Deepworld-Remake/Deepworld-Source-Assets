using UnityEngine;
using UnityEngine.UI;

public class PrimaryWindow : GuiWindow
{
	public GameObject titleObject;
	public Image titleIcon;
	public Text titleLabel;
	public RectTransform contentPanel;
	public RectTransform tabsPanel;
	public RectTransform separator;
	public TabButton tab;
	public LayoutGroup tabsLayoutGroup;
	public RectTransform altTabsPanel;
	public TabButton altTab;
	public LayoutGroup altTabsLayoutGroup;
}
