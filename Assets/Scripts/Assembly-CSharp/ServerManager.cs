public class ServerManager : Singleton<ServerManager>
{
	public GameManager gameManager;
	public string username;
	public string authToken;
	public string host;
	public int port;
	public int messageStep;
	public byte[] messageBuffer;
	public int messageIdent;
	public int messageLength;
	public float lastHeartbeatSentAt;
	public bool debugConnection;
}
