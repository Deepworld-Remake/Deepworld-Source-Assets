using UnityEngine;
using tk2dRuntime.TileMap;
using System.Collections.Generic;

public class tk2dTileMapData : ScriptableObject
{
	public enum TileType
	{
		Rectangular = 0,
		Isometric = 1,
	}

	public enum SortMethod
	{
		BottomLeft = 0,
		TopLeft = 1,
		BottomRight = 2,
		TopRight = 3,
	}

	public Vector3 tileSize;
	public Vector3 tileOrigin;
	public TileType tileType;
	public SortMethod sortMethod;
	public bool layersFixedZ;
	public bool useSortingLayers;
	public GameObject[] tilePrefabs;
	[SerializeField]
	private TileInfo[] tileInfo;
	[SerializeField]
	public List<LayerInfo> tileMapLayers;
}
