using UnityEngine.UI;
using UnityEngine;

namespace Bytebin
{
	public class Console : ReplaceableSingleton<Console>
	{
		public InputField input;
		public MonoBehaviour[] enableWhileActive;
	}
}
