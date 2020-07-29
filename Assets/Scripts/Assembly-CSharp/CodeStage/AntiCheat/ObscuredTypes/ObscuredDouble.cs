using System;
using UnityEngine;
using CodeStage.AntiCheat.Common;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredDouble
	{
		[SerializeField]
		private long currentCryptoKey;
		[SerializeField]
		private long hiddenValue;
		[SerializeField]
		private ACTkByte8 hiddenValueOldByte8;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private double fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
