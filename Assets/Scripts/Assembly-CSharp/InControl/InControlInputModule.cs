using UnityEngine.EventSystems;

namespace InControl
{
	public class InControlInputModule : PointerInputModule
	{
		public enum Button
		{
			Action1 = 19,
			Action2 = 20,
			Action3 = 21,
			Action4 = 22,
		}

		public override void Process()
		{
		}

		public Button submitButton;
		public Button cancelButton;
		public float analogMoveThreshold;
		public float moveRepeatFirstDuration;
		public float moveRepeatDelayDuration;
		public bool forceModuleActive;
		public bool allowMouseInput;
		public bool focusOnMouseHover;
		public bool allowTouchInput;
	}
}
