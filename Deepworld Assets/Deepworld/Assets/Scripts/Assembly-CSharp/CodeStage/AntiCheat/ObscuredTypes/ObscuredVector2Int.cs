using System;
using UnityEngine;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredVector2Int
	{
		[Serializable]
		public struct RawEncryptedVector2Int
		{
			public int x;
			public int y;
		}

		[SerializeField]
		private int currentCryptoKey;
		[SerializeField]
		private RawEncryptedVector2Int hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private Vector2Int fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
