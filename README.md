# パッケージ  

見方  

# パッケージ名

実行形式ファイル名

	custom_msg  
	変数名  
	構造  説明　

	param  
	変数の型　変数名：　説明  

	pub,sub  
	[トピック名]（メッセージ型）：説明  


# pickup_2020

pickup_2020.py  

	custom_msg  
	pr_msg/Pr_Msg  
		int32 pick_slide :ピックアップ機構スライド方向のモータのduty(slide_pwm,0,-slide_pwm)
		int32 pick_grasp :ピックアップ機構アームのエアシリンダの方向（1,0,-1）
		int32 pick_turn 　:ピックアップ機構yaw軸方向のモータのduty(turn_pwm,0,-turn_pwm)
		int32 pick_lift 　:ピックアップ機構上昇方向のモータのduty(lift_pwm,0,-lift_pwm)
		int32 kick_roll 　:ピックアップ機構スライド方向のモータのduty
		int32 Kick_fire 　:ピックアップ機構スライド方向のモータのduty
		int32 pass_tee 　　:パス用のティーを射出するエアシリンダの方向(1,0,-1)
		
		

	param  
	int slide_pwm: ピックアップ機構スライド方向のモータの回転速度（-255~255）  
	int lift_pwm: ピックアップ機構上昇方向のモータの回転速度（-255~255）  
	int turn_pwm: ピックアップ機構yaw軸方向のモータの回転速度（-255~255）  

	pub  
	[command_serial](pr_msg/PrMsg):ジョイスティックからの指令をモータのduty、エアシリンダの駆動方向に変換したもの  

	sub  
	[joy](sensor_msgs/Joy): joyコントローラの入力  


	ジョイスティックのボタンとと駆動の仕方の対応表  

	|AirCylinder|shot|pull|
	|:----:|:----:|:----:|
	|pick_grasp|③|①|
	|pass_tee|④|②|


	| DC_moter    | cw   | ccw  |
	|:-----------:|:----:|:----:|
	|pick_lift    |上十字|下十字 |
	|pick_slide   |左十字|右十字 |
	|pick_turn    |⑦　　　　|⑧　　　　|

# ジョイスティックのボタン配置

![11204092848272](https://user-images.githubusercontent.com/37164896/71776245-943e4280-2fd1-11ea-819f-cb897f538c96.jpg)




