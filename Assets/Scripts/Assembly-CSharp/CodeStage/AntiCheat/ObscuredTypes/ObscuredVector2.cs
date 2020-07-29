using System;
using UnityEngine;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredVector2
	{
		[Serializable]
		public struct RawEncryptedVector2
		{
			public int x;
			public int y;
		}

		[SerializeField]
		private int currentCryptoKey;
		[SerializeField]
		private RawEncryptedVector2 hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private Vector2 fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
