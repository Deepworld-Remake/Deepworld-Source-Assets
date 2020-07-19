using System.Collections.Generic;

public class MonoBehaviourPool<T, U> : Singleton<U>
{
	public List<MonoBehaviourPoolPattern> patterns;
}
