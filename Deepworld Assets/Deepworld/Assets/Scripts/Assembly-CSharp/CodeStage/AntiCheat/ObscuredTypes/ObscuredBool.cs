using System;
using UnityEngine;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredBool
	{
		[SerializeField]
		private byte currentCryptoKey;
		[SerializeField]
		private int hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private bool fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
