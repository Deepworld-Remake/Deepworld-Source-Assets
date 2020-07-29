using System;
using UnityEngine;

namespace UDPEditor
{
	[Serializable]
	public class AppStoreSettings : ScriptableObject
	{
		public string UnityProjectID;
		public string UnityClientID;
		public string UnityClientKey;
		public string UnityClientRSAPublicKey;
		public string AppName;
		public string AppSlug;
		public string AppItemId;
		public string Permission;
	}
}
