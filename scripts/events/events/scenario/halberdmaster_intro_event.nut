this.halberdmaster_intro_event <- this.inherit("scripts/events/event", {
	m = {},
	function create()
	{
		this.m.ID = "event.halberdmaster_scenario_intro";
		this.m.IsSpecial = true;
		this.m.Screens.push({
			ID = "A",
			Text = "[img]gfx/ui/events/event_90.png[/img]{A master of halberd from the East, once the fiercest warrior of the Eastern army, you came to this strange place with the Eastern army, and the culture here made you feel very novel. In a war with the city-states, your army was completely destroyed, and three days later you woke up and fled to the north. The commander of the army knows that you are still alive and orders you to be found and beheaded. You are so unfamiliar with everything here, now all you can use is your mighty strength, and start again.}",
			Image = "",
			Banner = "",
			List = [],
			Characters = [],
			Options = [
				{
					Text = "I will complete my revenge!",
					function getResult( _event )
					{
						return 0;
					}

				}
			],
			function start( _event )
			{
				this.Banner = "ui/banners/" + this.World.Assets.getBanner() + "s.png";
			}

		});
	}

	function onUpdateScore()
	{
		return;
	}

	function onPrepare()
	{
		this.m.Title = "Halberd Master";
	}

	function onPrepareVariables( _vars )
	{
	}

	function onClear()
	{
	}

});

