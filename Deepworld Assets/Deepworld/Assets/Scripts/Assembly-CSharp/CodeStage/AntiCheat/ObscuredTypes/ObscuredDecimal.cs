using System;
using UnityEngine;
using CodeStage.AntiCheat.Common;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredDecimal
	{
		[SerializeField]
		private long currentCryptoKey;
		[SerializeField]
		private ACTkByte16 hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private bool fakeValueActive;
	}
}
