using System.Collections.Generic;

public class ZoneSceneBlock
{
	public int id;
	public BlockSprite frontSprite;
	public BlockSprite backSprite;
	public BlockSprite liquidSprite;
	public BlockSprite baseSprite;
	public List<BlockSprite> accessorySprites;
	public BlockLight blockLight;
	public BlockCollider blockCollider;
	public ZoneSceneText text;
	public ZoneSceneText subtext;
	public bool debugHighlight;
}
