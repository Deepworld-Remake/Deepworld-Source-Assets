using UnityEngine;
using UnityEngine.UI;

public class ItemSlot : MonoBehaviour
{
	[SerializeField]
	private Button slotButton;
	[SerializeField]
	private Image slotImage;
	[SerializeField]
	private GameObject overlayImage;
	[SerializeField]
	private RawImage itemImage;
	[SerializeField]
	private RectTransform itemImageTransform;
	[SerializeField]
	private Text quantityLabel;
	public ItemContainer container;
	public int containerIndex;
}
