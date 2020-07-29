using UnityEngine;
using UnityEngine.UI;

public class LootBoxController : MonoBehaviour
{
	public int idIcon;
	public int idEffect;
	public bool isOpened;
	public GameObject[] IconPrefabs;
	public GameObject[] EffectPrefabs;
	public GameObject[] DesFxObjs;
	public GameObject[] DesIconObjs;
	public Text effectsText;
	public Text nameEffectText;
}
