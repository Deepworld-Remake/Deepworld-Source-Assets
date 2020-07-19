using System;
using UnityEngine;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredLong
	{
		[SerializeField]
		private long currentCryptoKey;
		[SerializeField]
		private long hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private long fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
