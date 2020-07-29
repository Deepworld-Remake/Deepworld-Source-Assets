using System;
using UnityEngine;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public class ObscuredString
	{
		[SerializeField]
		private string currentCryptoKey;
		[SerializeField]
		private byte[] hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private string fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
