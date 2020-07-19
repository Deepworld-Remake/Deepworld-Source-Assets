using System;
using UnityEngine;

namespace CodeStage.AntiCheat.ObscuredTypes
{
	[Serializable]
	public struct ObscuredVector3Int
	{
		[Serializable]
		public struct RawEncryptedVector3Int
		{
			public int x;
			public int y;
			public int z;
		}

		[SerializeField]
		private int currentCryptoKey;
		[SerializeField]
		private RawEncryptedVector3Int hiddenValue;
		[SerializeField]
		private bool inited;
		[SerializeField]
		private Vector3Int fakeValue;
		[SerializeField]
		private bool fakeValueActive;
	}
}
