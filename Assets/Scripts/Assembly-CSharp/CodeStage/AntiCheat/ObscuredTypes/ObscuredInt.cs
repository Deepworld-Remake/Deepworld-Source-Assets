using System;
using UnityEngine;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredInt
	{
		[SerializeField]
		private int currentCryptoKey;
		[SerializeField]
		private int hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private int fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
