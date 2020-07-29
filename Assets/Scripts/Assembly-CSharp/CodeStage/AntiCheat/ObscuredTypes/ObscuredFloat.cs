using System;
using UnityEngine;
using CodeStage.AntiCheat.Common;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredFloat
	{
		[SerializeField]
		private int currentCryptoKey;
		[SerializeField]
		private int hiddenValue;
		[SerializeField]
		private ACTkByte4 hiddenValueOldByte4;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private float fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
