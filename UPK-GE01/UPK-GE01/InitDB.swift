//
//  InitDB.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/11.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class InitDB{
    
    static let programList = List<Program>()
    static let categoryList = List<Category>()
    static let locationList = List<Location>()
    static let programDetailList = List<ProgramDetail>()
    
    public static func initDB(realm : Realm){
        
        initProgramList()
        
        let dbProgramList = realm.objects(Program.self)
        if(dbProgramList.count < programList.count){
            
            //数据库无数据
            initCategoryList()
            initLocationList()
            initProgramDetail()
            
            LogUtils.debugLog("开始写入数据库")
            
            try! realm.write {
                for program in programList{
                    realm.add(program)
                }
                
                for category in categoryList{
                    realm.add(category)
                }
                
                for location in locationList{
                    realm.add(location)
                }
                
                for programDetail in programDetailList{
                    realm.add(programDetail)
                }
            }
            
            LogUtils.debugLog("数据库写入完成")
        }
        
    }
    
    private static func initProgramList(){
        programList.append(Program.initProgram(1
            ,"Pain alleviation 1"
            ,"疼痛缓解-普通"
            ,"疼痛緩解-普通"
            ,"20"
            ,"General Pain Relief"
            ,"Provides relief for mild to moderate body or muscle pain; \nPromotes circulation and relaxation with the comforting sensation of a kneading massage…"
            ,"减轻轻度至中度身体或肌肉疼痛；\n用揉捏按摩手法促进血液循环和放松…"
            ,"減輕輕度至中度身體或肌肉疼痛；\n用揉捏按摩手法促進血液迴圈和放鬆…"
            ,"Intended for mild to moderate pain, this program can be used help relieve general body or muscle pain.  The benefit of this program is twofold.  First, it incorporates TENS technology to block the transmission of pain signals from your body to your brain to provide relief. Second, it uses various waveforms to simulate the comforting sensation of a kneading massage to promote blood circulation and relax tense muscles. If you want to ease your pain and get back on the road to recovery, this program might be right for you!"
            ,"此程序有助于减轻身体或肌肉的轻度到中度疼痛。首先，它运用TENS疗法，阻止疼痛信号传输到大脑，减少痛觉以帮助康复。其次，它使用各种波形来模拟揉捏和按摩的舒适感，以促进血液循环、放松紧张的肌肉，加速康复和疼痛的缓解！"
            ,"此程式有助於減輕身體或肌肉的輕度到中度疼痛。首先，它運用TENS療法，封锁疼痛訊號傳輸到大腦，减少痛覺以幫助康復。其次，它使用各種波形來類比揉捏和按摩的舒適感，以促進血液迴圈、放鬆緊張的肌肉，加速康復和疼痛的緩解！"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_TWIST.utc"
            ,"1"
            ,"0"
            ,4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        
        programList.append(Program.initProgram(2
            ,"Pain alleviation 2"
            ,"疼痛缓解-高级"
            ,"疼痛緩解-高級"
            ,"20"
            ,"Advanced Pain Relief"
            ,"One level up from General Pain Relief; this program uses higher intensity of TENS waveforms; \n" +
            "Promotes circulation and relaxation with the sensation of a kneading massage…"
            ,"这是TENS调制力度更高的疼痛缓解高级程序；\n" +
            "用揉捏按摩手法促进血液循环和放松…"
            ,"這是TENS調製力度更高的疼痛緩解高級程序；\n" +
            "用揉捏按摩手法促進血液迴圈和放鬆…"
            ,"Intended for general body or muscle pain, this program takes General Pain Relief to the next level.  If you are experiencing  moderate or chronic pain or are still experiencing pain after use of the General Pain Relief program, this might be the right program for you.  In addition to the kneading massage sensation to help soothe your sore muscles, this program also incorporates increased numbers and intensity of TENS waveforms  to block the transmission of your most troublesome pain signals. "
            ,"此程序是身体或肌肉疼痛高级缓解程序。如果您正在承受中度或慢性疼痛，或在使用\"疼痛缓解-普通\"后仍然在感觉疼痛，该程序则适合您。除了以揉捏和按摩的感觉来帮助舒缓您的酸痛外，这个程序还新增了多种TENS波形的数量和能量强度，以封闭您饱受困扰的疼痛信号的传输。"
            ,"此程式是身體或肌肉疼痛高級緩解程式。如果您正在承受中度或慢性疼痛，或在使用\"疼痛緩解-普通\"後仍然在感覺疼痛，該程式則適合您。除了以揉捏和按摩的感覺來幫助舒緩您的酸痛外，這個程式還新增了多種TENS波形的數量和能量强度，以封閉您飽受困擾的疼痛訊號的傳輸。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_PRESS.utc"
            ,"1"
            ,"1",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        
        programList.append(Program.initProgram(3
            ,"Joint pain alleviation"
            ,"关节疼痛缓解"
            ,"關節疼痛緩解"
            ,"20"
            ,"Joint Pain Relief"
            ,"This program uses massage therapy to ease joint pain caused by everyday activity or arthritis…"
            ,"该程序用按摩疗法来缓解由于日常活动引起或关节炎引起的关节疼痛…"
            ,"該程式用按摩療法來緩解由於日常活動引起或關節炎引起的關節疼痛…"
            ,"This program uses massage therapy to help ease joint pain.  If your doctor has diagnosed you with arthritis or told you that your joint pain is a result of cartilage damage, this program may be a good choice for you.  This program can also be used to help relieve pain caused by stress on your joints as a results of everyday activity."
            ,"这个程序用按摩疗法帮助减轻关节疼痛。如果您的医生诊断您患有关节炎，或者告诉您的关节疼痛是由于软骨损伤引起的，那么这个程序是个不错的选择。这个程序也可以用来帮助减轻在日常活动中由于关节压力引起的疼痛。"
            ,"這個程式用按摩療法幫助減輕關節疼痛。如果您的醫生診斷您患有關節炎，或者告訴您的關節疼痛是由於軟骨損傷引起的，那麼這個程式是個不錯的選擇。這個程式也可以用來幫助減輕在日常活動中由於關節壓力引起的疼痛。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_DA_E.utc"
            ,"1"
            ,"0"
            ,4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(4
            ,"Acute pain alleviation"
            ,"急性疼痛缓解-基础"
            ,"急性疼痛緩解-基礎"
            ,"20"
            ,"Short-term Pain Relief - Basic"
            ,"Specially-designed to relieve your short-term pain; \n" +
            "This program works by stimulating the specific nerve fibers to block the pain signal…"
            ,"专为缓解急性疼痛而设计；\n" +
            "过调制特定的神经纤维来阻断疼感信号…"
            ,"專為緩解急性疼痛而設計；\n" +
            "過調製特定的神經纖維來阻斷疼感訊號…"
            ,"This program is intended to relieve your short-term pain. The specially designed waveform with relatively higher frequency and intensity than the \"Pain Block\" program works to stimulate the specific nerve fibers to block the transmission of the short-term pain signal.  It is recommended to use this program with the \"Short-term Pain Relief - Advanced\" and \"Pain Block\" programs targeting different types of nerve fibers interchangeably to suppress pain better."
            ,"这个程序旨在缓解您的急性疼痛。该程序波形的频率和强度比\"镇痛\" 程序更高，可以刺激和调制特定的神经纤维来阻断急性疼痛信号的传递。建议与\"急性疼痛缓解-高级\" 和\"镇痛\" 一起交替使用，针对多种目标神经纤维进行调制，以更好地抑制疼痛。"
            ,"這個程式旨在緩解您的急性疼痛。該程式波形的頻率和强度比\"鎮痛\"程式更高，可以刺激和調製特定的神經纖維來阻斷急性疼痛訊號的傳遞。建議與\"急性疼痛緩解-高級\"和\"鎮痛\"一起交替使用，針對多種目標神經纖維進行調製，以更好地抑制疼痛。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_TD80HZ.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(5
            ,"Very acute pain alleviation"
            ,"急性疼痛缓解-高级"
            ,"急性疼痛緩解-高級"
            ,"20"
            ,"Short-term Pain Relief - Advanced"
            ,"Advanced level of relief for your short-term pain. \n" +
            "This program uses higher intensity and a greater energy spectrum than the Basic  program... "
            ,"缓解急性疼痛的高级程序；\n" +
            "使用了更高的强度和能量谱…"
            ,"緩解急性疼痛的高級程式；\n" +
            "使用了更高的强度和能量譜…"
            ,"This program is intended to relieve your short-term pain. If you still experience pain after trying the \"Short-term Pain Relief - Basic\" program, you could try to use it combined with \"Short-term Pain Relief- Advanced\" program and \"Pain Block\" program, one or two times a day. This program delivers higher intensity and greater energy spectrum than the  \"Short-term Pain Relief - Basic\" program."
            ,"这个程序旨在缓解您的急性疼痛。如果您在使用\"急性疼痛缓解-基础\"后仍然感到疼痛，您可以试着将它与\"急性疼痛缓解-高级\"程序和\"镇痛\"程序一起交替使用，一天一到两次，效果更佳。与\"急性疼痛缓解-基础\" 程序相比，该程序使用更高的强度和更大的能量谱。"
            ,"這個程式旨在緩解您的急性疼痛。如果您在使用\"急性疼痛緩解-基礎\"後仍然感到疼痛，您可以試著將它與\"急性疼痛緩解-高級\"程式和 \"镇痛\" 程式一起交替使用，一天一到兩次，效果更佳。與\"急性疼痛緩解-基礎\" 程式相比，該程式使用更高的强度和更大的能量譜。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_TD100HZ.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
    
        
        programList.append(Program.initProgram(6
            ,"Endorphin stimulation"
            ,"镇痛"
            ,"鎮痛"
            ,"20"
            ,"Pain Block"
            ,"Designed to block pain by effectively releasing your body's natural endorphins, with a unique waveform pattern of low frequency and great energy... "
            ,"通过独特的低频和高能量波形有效地释放您体内天然的内啡肽来阻断疼痛…"
            ,"通過獨特的低頻和高能量波形有效地釋放您體內天然的內啡肽來阻斷疼痛…"
            ,"This program is designed to effectively activate and release your body's natural endorphins to block pain by delivering a unique waveform pattern with lower frequency and great energy. "
            ,"该程序通过独特的低频率波形和大能量，有效地激活和释放您身体的天然内啡肽，以持续缓解疼痛。"
            ,"該程式通過獨特的低頻率波形和大能量，有效地啟動和釋放您身體的天然內啡肽，以持續緩解疼痛。"
            ,"The best intensity setting is to make your body feel an obvious contraction, bearable and no pain."
            ,"最佳的力度设置是让您的身体感受到明显的收缩，但必须是在您可承受的范围内且不会引起疼痛的。"
            ,"最佳的力度設置是讓您的身體感受到明顯的收縮，但必須是在您可承受的範圍內且不會引起疼痛的。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_E.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(7
            ,"Chronic pain alleviation 1"
            ,"慢性疼痛缓解-初级"
            ,"慢性疼痛緩解-初級"
            ,"60"
            ,"Chronic Pain Relief - Mild"
            ,"Provides relief for your mild chronic pain; \n" +
            "Uses smooth pulses to relieve pain and promote blood circulation for a feeling of relaxation…"
            ,"缓解轻度慢性疼痛；\n" +
            "使用平缓调制波形来缓解疼痛，促进血液循环，让人放松..."
            ,"緩解較輕的慢性疼痛；\n" +
            "使用平緩調製波形來緩解疼痛，促進血液迴圈，讓人放鬆…"
            ,"This program is intended to relieve your chronic pain.  The non-painful stimulation/signals generated by this program can block pain signals to the nervous system and suppress pain. It uses smooth pulses which can provide better relief for your chronic pain and promote blood circulation, resulting in the relaxation effect."
            ,"该程序旨在缓解慢性疼痛。这个程序用特定波形来调制和刺激神经以阻断疼痛信号在神经系统中的传播，同时使用舒缓有力的波形来促进血液循环和缓解您的慢性疼痛，进而产生放松的效果。"
            ,"該程式旨在緩解慢性疼痛。這個程式用特定波形來調製和刺激神經以阻斷疼痛訊號在神經系統中的傳播，同時使用舒緩有力的波形來促進血液迴圈和緩解您的慢性疼痛，進而產生放鬆的效果。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_FEI_PFI_TH.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(8
            ,"Chronic pain alleviation 2"
            ,"慢性疼痛缓解-中级"
            ,"慢性疼痛緩解-中級"
            ,"60"
            ,"Chronic Pain Relief - Moderate"
            ,"Provides relief for your moderate chronic pain; \n" +
            "Delivers a higher intensity and a wider range of  pain-blocking waveforms than the Mild program…"
            ,"缓解中度慢性疼痛；\n" +
            "用较高的强度和更广谱的镇痛波形…"
            ,"緩解中度慢性疼痛；\n" +
            "用較高的强度和更廣譜的鎮痛波形…"
            ,"This program is intended to relieve your chronic pain. If you still experience pain after trying the \"Chronic Pain Relief - Mild\" program, you might need to take your relief to the next level.  This program delivers a higher intensity and a wider range of  pain-blocking waveforms to address your more moderate chronic pain."
            ,"该程序旨在缓解慢性疼痛。如果您在尝试了\"慢性疼痛缓解-初级\"  程序后仍然感到疼痛，您则需要使用该程序进行进一步的治疗。这个程序提供更高强度和更广谱的止痛波形，以解决您中度慢性疼痛。"
            ,"該程式旨在緩解慢性疼痛。如果您在嘗試了\"慢性疼痛緩解-初級\"程式後仍然感到疼痛，您則需要使用該程式進行進一步的治療。這個程式提供更高强度和更廣譜的止痛波形，以解决您中度慢性疼痛。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_FO_PT_TH.utc"
            ,"1"
            ,"1",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(9
            ,"Chronic pain alleviation 3"
            ,"慢性疼痛缓解-高级"
            ,"慢性疼痛緩解-高級"
            ,"60"
            ,"Chronic Pain Relief - Advanced"
            ,"Highest intensity level program to relieve chronic pain on your worst days. \n" +
            "Can be used in combination with the Mild and Moderate Chronic Pain Relief programs…"
            ,"用更高的强度缓解您最糟糕的慢性疼痛；\n" +
            "可与初级和中级慢性疼痛缓解方案相结合使用…"
            ,"用更高的强度緩解您最糟糕的慢性疼痛；\n" +
            "可與初級和中級慢性疼痛緩解方案相結合使用…"
            ,"This program is designed to provide relief on your worst days when suffering from chronic pain.  It is the highest intensity level chronic pain program and can be used interchangeably with \"Chronic Pain Relief  - Mild\" and \"Chronic Pain Relief - Moderate\" to help manage pain on your worst days."
            ,"该程序旨在缓解更糟糕的慢性疼痛。它是最高强度的慢性疼痛缓解程序，与\"慢性疼痛缓解-初级\"和\"慢性疼痛缓解-中级\"一起交替使用，效果更佳，能帮助您在最糟糕的日子里控制疼痛。"
            ,"該程式旨在緩解更糟糕的慢性疼痛。它是最高强度的慢性疼痛緩解程式，與\"慢性疼痛緩解-初級\"和\"慢性疼痛緩解-中級\"一起交替使用，效果更佳，能幫助您在最糟糕的日子裏控制疼痛。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_FO_PSPT_TH.utc"
            ,"1"
            ,"2",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(10
            ,"Pounding away pain"
            ,"疼痛缓解-按摩手法"
            ,"疼痛緩解-按摩手法"
            ,"30"
            ,"Pain Relief Massage - Pounding"
            ,"Relieves muscle pain with the massage technique of \"pounding\" to stimulate the release of endorphins. \nThese \"feel good\" hormones help relax the muscles and relieve pain…"
            ,"用叩捶的按摩手法，刺激内啡肽的释放，缓解肌肉疼痛；\n令人感觉良好的荷尔蒙有助于放松肌肉和减轻疼痛..."
            ,"用叩捶的按摩手法，刺激內啡肽的釋放，緩解肌肉疼痛；\n令人感覺良好的荷爾蒙有助於放鬆肌肉和減輕疼痛…"
            ,"This program uses the popular massage therapy technique of \"pounding\" to help relieve muscle pain. The pounding technique uses a series of firm, brisk, percussive movements to help stimulate the muscles.  By using various patterns of pulses, this program provides a continues massage that stimulates the release of endorphins, the \"feel good\" hormone, to promote muscle relaxation and pain alleviation."
            ,"本该程序采用\"捶打\" 的按摩手法，以缓解肌肉疼痛。\"捶打\" 使用一系列有力、轻快、有冲击力的动作来帮助刺激肌肉。通过使用多种目标调制波形，一方面促进肌肉放松和疼痛缓解，另一方面刺激出持续释放的内啡肽，以达到持续疼痛缓解。"
            ,"本該程式採用\"捶打\"的按摩手法，以緩解肌肉疼痛。\"捶打\"使用一系列有力、輕快、有衝擊力的動作來幫助刺激肌肉。通過使用多種目標調製波形，一方面促進肌肉放鬆和疼痛緩解，另一方面刺激出持續釋放的內啡肽，以達到持續疼痛緩解。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_BURST.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(11
            ,"Rubbing and pummelling"
            ,"疼痛缓解-揉搓结合"
            ,"疼痛緩解-揉搓結合"
            ,"30"
            ,"Pain Relief Massage - Combination of rubbing and pounding"
            ,"This program combines the massage techniques of rubbing and pounding to stimulate the release of endorphins -to  relax muscles and relieve pain…"
            ,"运用揉捏和叩捶的综合手法，刺激内啡肽的释放，放松肌肉，减轻疼痛…"
            ,"運用揉捏和叩捶的綜合手法，刺激內啡肽的釋放，放鬆肌肉，減輕疼痛…"
            ,"This program simulates the use of a combination of massage techniques, including a gentler, kneading stroke as well as a brisker, more percussive sensation. By using  these alternating techniques, this program stimulates the release of endorphins, the \"feel good\" hormone, which helps relax the muscles and relieve pain. "
            ,"该程序模拟各种按摩手法的组合，其中包含更温和和轻快的揉捏和敲击等。通过使用这些组合交替的技术，有效地刺激身体内自然的、令人感觉良好、有镇痛作用的内啡肽的释放，有助于放松肌肉和减轻疼痛。"
            ,"該程式模擬各種按摩手法的組合，其中包含更溫和和輕快的揉捏和敲擊等。通過使用這些組合交替的科技，有效地刺激身體內自然的、令人感覺良好、有鎮痛作用的內啡肽的釋放，有助於放鬆肌肉和減輕疼痛。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_HAN.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(12
            ,"Muscle stress alleviation 1"
            ,"僵硬肌肉按摩-初级"
            ,"僵硬肌肉按摩-初級"
            ,"15"
            ,"Stiff Muscle Massage - Basic"
            ,"Massage therapy helps to relieve pain and discomfort caused by muscle stiffness; \n" +
            "Can be combined with \"Stiff Muscle Relief - Advanced\" for even better results…"
            ,"用按摩疗法来减轻肌肉僵硬造成的疼痛和不适；\n" +
            "结合\"僵硬肌肉按摩-高级\"一起使用效果更好…"
            ,"用按摩療法來減輕肌肉僵硬造成的疼痛和不適；\n" +
            "結合\"僵硬肌肉按摩-高級\"一起使用效果更好…"
            ,"When your muscles feel stiff or tight and you find it more difficult to move than usua, this program might be a good choie for you. It helps to relieve your pain and discomfort caused by muscle stiffness. Further more, using different electrical waveforms to stimulate nerve alternately could help to get better results compared to using single program for long time. If you still experince stiffness after trying this program. you could combine with \"Stiff Muscle Relief - Advanced\". "
            ,"当您的肌肉感到僵硬或紧绷，并且您发现比平常移动不便时，该程序会是您的好选择。它有助于减轻肌肉僵硬造成的疼痛和不适。此外，与长时间使用单一程序相比，使用特定和不同的电波交替调制神经疗效更佳。如果您在使用该程序后仍感到僵硬，您可以结合 \"僵硬肌肉按摩-高级\" 程序一起交替使用。"
            ,"當您的肌肉感到僵硬或緊繃，並且您發現比平常移動不便時，該程式會是您的好選擇。它有助於減輕肌肉僵硬造成的疼痛和不適。此外，與長時間使用單一程式相比，使用特定和不同的電波交替調製神經療效更佳。如果您在使用該程式後仍感到僵硬，您可以結合\"僵硬肌肉按摩-高級\"程式一起交替使用。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_KNOCK.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"3"
            ,-1.0))
        
        programList.append(Program.initProgram(13
            ,"Muscle stress relief 2"
            ,"僵硬肌肉按摩-高级"
            ,"僵硬肌肉按摩-高級"
            ,"20"
            ,"Stiff Muscle Massage - Advanced"
            ,"Massage therapy helps to relieve pain and discomfort caused by muscle stiffness; \nCan be combined with \"Stiff Muscle Relief - Basic\" for even better results..."
            ,"用按摩疗法来减轻肌肉僵硬造成的疼痛和不适；\n结合\"僵硬肌肉按摩-初级\"一起使用效果更好…"
            ,"用按摩療法來減輕肌肉僵硬造成的疼痛和不適；\n結合\"僵硬肌肉按摩-初級\"一起使用效果更好…"
            ,"When your muscles feel stiff or tight and you find it more difficult to move than usua, this program might be a good choie for you. It helps to relieve your pain and discomfort caused by muscle stiffness. Further more, using different electrical waveforms to stimulate nerve alternately could help to get better results compared to using single program for long time. If you still experince stiffness after trying this program, you could combine with \"Stiff Muscle Relief - Basic\". "
            ,"当您的肌肉感到僵硬或紧绷，并且您发现比平常移动不便时，该程序也是您的好选择。它有助于减轻肌肉僵硬造成的疼痛和不适。此外，与长时间使用单一程序相比，使用特定和不同的电波交替调制神经疗效更佳。如果您在使用该程序后仍感到僵硬，您可以结合 \"僵硬肌肉按摩-初级\" 程序一起交替使用。"
            ,"當您的肌肉感到僵硬或緊繃，並且您發現比平常移動不便時，該程式也是您的好選擇。它有助於減輕肌肉僵硬造成的疼痛和不適。此外，與長時間使用單一程式相比，使用特定和不同的電波交替調製神經療效更佳。如果您在使用該程式後仍感到僵硬，您可以結合\"僵硬肌肉按摩-初級\"程式一起交替使用。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_PAIN.utc"
            ,"1"
            ,"1",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"3"
            ,-1.0))
        
        programList.append(Program.initProgram(14
            ,"Muscle loss alleviation 1"
            ,"预防肌肉萎缩-初级"
            ,"預防肌肉萎縮-初級"
            ,"35"
            ,"Prevention Muscle Disuse Atrophy - Basic"
            ,"The first step to help prevent muscle disuse atrophy during periods of low activity or recovery. \nUse for the first 10 days, then switch to the advanced program…"
            ,"这是用于预防康复或低活动期肌肉萎缩的第一步；\n用10天后切换到\"预防肌肉萎缩-高级\"…"
            ,"這是用於預防康復或低活動期肌肉萎縮的第一步；\n用10天后切換到\"預防肌肉萎縮-高級\"…"
            ,"This program is designed as the first step to help prevent muscle disuse atrophy. When you are not active as usual and muscles are not used, muscles can atrophy.  What this means is that the muscles can decrease in size and therefore function. To help prevent muscle disuse atrophy during your recovery period, this program can be used for the first 10 days.  After the first 10 days, switch to \"Prevention Muscle Disuse Atrophy- Advanced\" to continued therapy."
            ,"该程序是预防肌肉萎缩疗法的第一步。当您缺乏活动、不常用肌肉时，肌肉会萎缩，这意味着肌肉将缩小，肌肉功能下降，该程序旨在帮助您预防因缺乏活动或在康复期肌肉发生萎缩，这个程序可以在最初的10天内使用，10天后，改为 \"预防肌肉萎缩-高级\" 继续治疗。"
            ,"該程式是預防肌肉萎縮療法的第一步。當您缺乏活動、不常用肌肉時，肌肉會萎縮，這意味著肌肉將縮小，肌肉功能下降，該程式旨在幫助您預防因缺乏活動或在康復期肌肉發生萎縮，這個程式可以在最初的10天內使用，10天后，改為\"預防肌肉萎縮-高級\"繼續治療。"
            ,"The best intensity setting should be set at the highest bearable leve, especially in the phase of electrical stimulation of the muscle, to gradually increase the frequency of stimulation of muscle until the emergence of sustained muscle contraction."
            ,"最佳的力度设置是为可承受的最高级别，尤其是在电刺激肌肉的阶段，以逐渐增加的频率刺激肌肉直到出现持续的肌肉收缩。"
            ,"最佳的力度設置是為可承受的最高級別，尤其是在電刺激肌肉的階段，以逐漸增加的頻率刺激肌肉直到出現持續的肌肉收縮。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_PPM3_E.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(15
            ,"Muscle loss alleviation 2"
            ,"预防肌肉萎缩-高级"
            ,"預防肌肉萎縮-高級"
            ,"35"
            ,"Prevention Muscle Disuse Atrophy - Advanced"
            ,"The second step to help prevent muscle disuse atrophy  during periods of low activity or recovery. \nUse the basic program for the first 10 days, then switch to this program…"
            ,"这是用于预防康复或低活动期肌肉萎缩的第一步；\n用\"预防肌肉萎缩-初级\" 10天再用此程序…"
            ,"這是用於預防康復或低活動期肌肉萎縮的第一步；\n用\"預防肌肉萎縮-初級\"10天再用此程式…"
            ,"This program is designed as the second step to help prevent muscle disuse atrophy. When you are not active as usual and muscles are not used, muscles can atrophy.  What this means is that the muscles can decrease in size and therefore function. To help prevent muscle disuse atrophy during your  recovery period,   \"Prevention Muscle Disuse Atrophy- Basic\"  should be used for the first 10 days of  recovery treatment before switching to this program."
            ,"该程序是预防肌肉萎缩疗法的第二步。当您缺乏活动、不常用肌肉时，肌肉会萎缩，这意味着肌肉将缩小，肌肉功能下降，该程序旨在帮助您预防因缺乏活动或在康复期肌肉发生萎缩，这个程序在您使用 \"预防肌肉萎缩-初级\" 疗法10天后再使用。"
            ,"該程式是預防肌肉萎縮療法的第二步。當您缺乏活動、不常用肌肉時，肌肉會萎縮，這意味著肌肉將縮小，肌肉功能下降，該程式旨在幫助您預防因缺乏活動或在康復期肌肉發生萎縮，這個程式在您使用\"預防肌肉萎縮-初級\"療法10天后再使用。"
            ,"The best intensity setting should be set at the highest bearable leve, especially in the phase of electrical stimulation of the muscle, to gradually increase the frequency of stimulation of muscle until the emergence of sustained muscle contraction."
            ,"最佳的力度设置是为可承受的最高级别，尤其是在电刺激肌肉的阶段，以逐渐增加的频率刺激肌肉直到出现持续的肌肉收缩。"
            ,"最佳的力度設置是為可承受的最高級別，尤其是在電刺激肌肉的階段，以逐漸增加的頻率刺激肌肉直到出現持續的肌肉收縮。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_PPM4_E.utc"
            ,"1"
            ,"1",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(16
            ,"Muscle pull/tear"
            ,"肌肉疼痛按摩"
            ,"肌肉疼痛按摩"
            ,"30"
            ,"Sore Muscle Massage"
            ,"Uses targeted waveforms to help muscles that are sore as a result from strain due to exercise or everyday activity…"
            ,"使用有针对性的调制波形，以帮助由于运动或日常活动引起的肌肉酸痛…"
            ,"使用有針對性的調製波形，以幫助由於運動或日常活動引起的肌肉酸痛…"
            ,"This program uses targeted waveforms to penetrate deep into the muscle to help muscles that are sore as a result from strain due to exercise or normal household and work activities. "
            ,"这个程序使用有针对性的波形来深入肌肉放松和镇痛，以帮助那些由于在日常运动、家务、工作中产生的肌肉僵紧和酸痛。"
            ,"這個程式使用有針對性的波形來深入肌肉放鬆和鎮痛，以幫助那些由於在日常運動、家務、工作中產生的肌肉僵緊和酸痛。"
            ,"The best intensity setting is to make your body feel an obvious contraction, bearable and no pain."
            ,"最佳的力度设置是让您的身体感受到明显的收缩，但必须是在您可承受的范围内且不会引起疼痛的。"
            ,"最佳的力度設置是讓您的身體感受到明顯的收縮，但必須是在您可承受的範圍內且不會引起疼痛的。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_BM_E.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"3"
            ,-1.0))
        
        programList.append(Program.initProgram(17
            ,"Muscle loosening"
            ,"僵紧舒缓按摩"
            ,"僵緊舒緩按摩"
            ,"30"
            ,"Tension Relief Massage"
            ,"Massage therapy helps to loosen tight or tense muscles when you are in the final stage of recovery after pain has subsided…"
            ,"在疼痛开始消退的最后康复阶段，按摩疗法有助于您放松僵紧的肌肉…"
            ,"在疼痛開始消退的最後康復階段，按摩療法有助於您放鬆僵緊的肌肉…"
            ,"When you have tight or tense muscles but you're not experiencing any pain, this program might be a good choice for you. Often used as the final stage of recovery after pain has subsidded, this program uses massage therapy to loosen the lingering tension in your muscles.  "
            ,"当您的肌肉绷紧或僵硬但没有任何痛感，这个程序可能是一个不错的选择，它通常可用在疼痛缓解后康复的最后阶段，这个程序使用按摩疗法来放松您肌肉中挥之不去的紧张力。"
            ,"當您的肌肉繃緊或僵硬但沒有任何痛感，這個程式可能是一個不錯的選擇，它通常可用在疼痛緩解後康復的最後階段，這個程式使用按摩療法來放鬆您肌肉中揮之不去的緊張力。"
            ,"The best intensity setting is to make your body feel an obvious contraction, bearable and no pain."
            ,"最佳的力度设置是让您的身体感受到明显的收缩，但必须是在您可承受的范围内且不会引起疼痛的。"
            ,"最佳的力度設置是讓您的身體感受到明顯的收縮，但必須是在您可承受的範圍內且不會引起疼痛的。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_DM_E.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"3"
            ,-1.0))
        
        programList.append(Program.initProgram(18
            ,"Cervical pain"
            ,"颈椎疼痛缓解"
            ,"頸椎疼痛緩解"
            ,"20"
            ,"Back of Neck Pain Relief"
            ,"Specially-designed to relieve back of neck pain. \nSimulates the beneficial effects of acupuncture and massage to relieve your stiff or aching muscles in the back of neck... "
            ,"专为减轻颈椎疼痛而设计；\n结合针灸和按摩的有效疗法，以减轻您后颈部肌肉的僵硬和疼痛…"
            ,"專為減輕頸椎疼痛而設計；\n結合針灸和按摩的有效療法，以減輕您後頸部肌肉的僵硬和疼痛…"
            ,"This program is designed specifically to help relieve neck pain by similuating the beneficial effects of both accupuncture & massage.  By relaxing the muscles and easing tension, this program can help relieve your stiff or aching neck. (Add one caution specially for neck application :do not  apply device to front neck and throat area.)"
            ,"这个程序是专门为帮助减轻颈椎疼痛而设计的，它结合了针灸和按摩的有效疗法，通过放松肌肉和释放紧张力，以减轻您颈后部肌肉的僵硬和疼痛（对于颈部应用，特别要注意一点：不要放在前颈部和喉部区域）。"
            ,"這個程式是專門為幫助減輕頸椎疼痛而設計的，它結合了針灸和按摩的有效療法，通過放鬆肌肉和釋放緊張力，以減輕您頸後部肌肉的僵硬和疼痛（對於頸部應用，特別要注意一點：不要放在前頸部和喉部區域）。"
            ,"The best intensity setting is to make your body feel an obvious contraction, bearable and no pain."
            ,"最佳的力度设置是让您的身体感受到明显的收缩，但必须是在您可承受的范围内且不会引起疼痛的。"
            ,"最佳的力度設置是讓您的身體感受到明顯的收縮，但必須是在您可承受的範圍內且不會引起疼痛的。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_C.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(19
            ,"Back pain"
            ,"背痛缓解"
            ,"背痛緩解"
            ,"20"
            ,"Back Pain Relief"
            ,"Specially-designed to relieve back pain.\nSimulates the beneficial effects of acupuncture and massage to ease tension and relax back muscles…"
            ,"这个程序是针对减轻背痛而设计的，它结合了针灸和按摩的有效疗法，通过放松肌肉和释放紧张力，以减轻您背部肌肉的僵硬和疼痛。"
            ,"這個程式是針對減輕背痛而設計的，它結合了針灸和按摩的有效療法，通過放鬆肌肉和釋放緊張力，以減輕您背部肌肉的僵硬和疼痛。"
            ,"Sepcifically design to relieve back pain, this program similuates the beneficial effects of both accupuncture & massage therapy.  By relaxing the muscles and easing tension, this program can help ease your burdensome back pain."
            ,"这个程序是专门为帮助减轻颈椎疼痛而设计的，它结合了针灸和按摩的有效疗法，通过放松肌肉和释放紧张力，以减轻您颈后部肌肉的僵硬和疼痛（对于颈部应用，特别要注意一点：不要放在前颈部和喉部区域）。"
            ,"這個程式是專門為幫助減輕頸椎疼痛而設計的，它結合了針灸和按摩的有效療法，通過放鬆肌肉和釋放緊張力，以減輕您頸後部肌肉的僵硬和疼痛（對於頸部應用，特別要注意一點：不要放在前頸部和喉部區域）。"
            ,"The best intensity setting is to make your body feel an obvious contraction, bearable and no pain."
            ,"最佳的力度设置是让您的身体感受到明显的收缩，但必须是在您可承受的范围内且不会引起疼痛的。"
            ,"最佳的力度設置是讓您的身體感受到明顯的收縮，但必須是在您可承受的範圍內且不會引起疼痛的。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_D.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(20
            ,"Muscle cramp avoidance"
            ,"肌肉痉挛按摩"
            ,"肌肉痙攣按摩"
            ,"35"
            ,"Muscle Spasm Massage"
            ,"Massage therapy designed to stimulate the and relax muscle spasms. \nUse this program with increased hydration and rest for best results…"
            ,"调制和放松肌肉痉挛或抽筋；\n使用这个按摩程序的同时，多喝水和休息，效果更佳…"
            ,"調製和放鬆肌肉痙攣或抽筋；\n使用這個按摩程式的同時，多喝水和休息，效果更佳…"
            ,"Muscle spasm are common and can occur as a result of fatigue or lack of hydration.  Getting proper rest and staying hydrated can help prevent muscle spasming from disrupting you during physical activity or while you're asleep.  If you are prone to muscle spasms, this program can also help by stimulating the muscle to allow it to take in more water and stay loose, avoiding those painful spasms! "
            ,"肌肉痉挛或抽筋是常见的，并且可能由于疲劳或体内缺乏水分而发生，适当休息和多喝水可以帮助防止肌肉痉挛、消除您在体育活动期间或在睡觉中发生抽筋的困扰。该程序还可以通过刺激肌肉，让肌肉吸收更多的水和保持放松，避免那些痛苦的痉挛！"
            ,"肌肉痙攣或抽筋是常見的，並且可能由於疲勞或體內缺乏水分而發生，適當休息和多喝水可以幫助防止肌肉痙攣、消除您在體育活動期間或在睡覺中發生抽筋的困擾。該程式還可以通過刺激肌肉，讓肌肉吸收更多的水和保持放鬆，避免那些痛苦的痙攣！"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_PDCS_M.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"3"
            ,-1.0))
        
        programList.append(Program.initProgram(21
            ,"Arterial inadequacy"
            ,"小腿疼痛缓解-基础"
            ,"小腿疼痛緩解-基礎"
            ,"15"
            ,"Lower Leg Pain Relief - Basic"
            ,"Specially-designed to relieve the heaviness and achiness of calf pain by increasing blood flow in the legs…"
            ,"专门针对性地增加腿部血流来减轻小腿疼痛和沉重感…"
            ,"專門針對性地新增腿部血流來減輕小腿疼痛和沉重感…"
            ," This program is designed to relieve basic lower leg pain by increasing blood flow.  It can help to relieve stiffness, pain while walking, and/or the unpleasant feeling of heaviness and achiness in the legs."
            ,"程序旨在通过增加血流来缓解基本的小腿疼痛。它可以帮助缓解僵硬、行走时的疼痛、和/或腿部沉重和疼痛的不愉快感觉。"
            ,"該程式旨在通過新增血流來緩解基本的小腿疼痛。它可以幫助緩解僵硬、行走時的疼痛、和/或腿部沉重和疼痛的不愉快感覺。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_IAE_M.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(22
            ,"Venous inadequacy"
            ,"小腿疼痛缓解-高级"
            ,"小腿疼痛緩解-高級"
            ,"20"
            ,"Lower Leg Pain Relief - Advanced"
            ,"Provides relief for your lower leg pain at an advanced level; \nDelivers a higher intensity and a wider range of waveforms to promote even greater blood circulation…"
            ,"为您的下肢疼痛提供更高阶的缓解；\n提供更高的强度和更广的有效波谱，以促进更大的血液循环…"
            ,"為您的下肢疼痛提供更高階的緩解；\n提供更高的强度和更廣的有效波譜，以促進更大的血液迴圈…"
            ,"This program is designed to relieve lower leg pain by increasing blood flow. If you still experience lower leg pain after trying the \"Lower leg Pain Relief - Basic\" program, you might need to take your relief to the next level. This program delivers a higher intensity and a wider range of  waveforms to promote blood circulation to help manage pain on your worst days. It  can be used interchangeably with \"Lower leg Pain Relief  - Basic\""
            ,"该程序旨在通过增加血流来缓解下肢疼痛。如果您在尝试了\"小腿疼痛缓解-基础\" 程序后仍然感到小腿疼痛，您可能需要将您的缓解带到更高的水平。这个程序提供更高强度和更广泛的波形，以促进血液循环，以帮助管理疼痛。与\"小腿疼痛缓解-基础\" 一起交替使用，效果更佳。"
            ,"該程式旨在通過新增血流來緩解下肢疼痛。如果您在嘗試了\"小腿疼痛緩解-基礎\"程式後仍然感到小腿疼痛，您可能需要將您的緩解帶到更高的水准。這個程式提供更高强度和更廣泛的波形，以促進血液迴圈，以幫助管理疼痛。與\"小腿疼痛緩解-基礎\"一起交替使用，效果更佳。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed five times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过5次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過5次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_IVE_M.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"1"
            ,-1.0))
        
        programList.append(Program.initProgram(23
            ,"Beginner strength building"
            ,"肌肉力量增强-初级"
            ,"肌肉力量增强-初級"
            ,"32"
            ,"Muscle Strengthening - Basic"
            ,"Strengthens muscles at beginner level; \nTrains your muscles to contract more fibers and build up muscle efficiency, or strength, over time - to improve mobility…"
            ,"增强肌肉力量的入门程序；\n训练您更多的肌肉纤维，逐步提高肌肉效率或力量，改善活动能力…"
            ,"增强肌肉力量的入門程式；\n訓練您更多的肌肉纖維，逐步提高肌肉效率或力量，改善活動能力…"
            ,"This program is designed to strengthen muscles especially the muscles around your joints which can helps to improve your moblity. By using electrical pulses to simulate a heavy load or heavy resistence, this program trains your muscles to contract more fibers and build up muscle efficency, or strength, over time.  If you want to get back on the road to recovery from fatigue or muscle weakness from lack of use, this program might be right for you. This is a beginner level training, you should choose an intensity that is comfortable for you. "
            ,"这个计划旨在提示肌肉的力量，尤其是您关节周围肌肉的力量，从而改善您的活动能力。该程序通过使用电脉冲来模拟重负荷或重阻力来训练您的肌肉收缩更多的纤维，逐步增强肌肉的效率或力量。如果您想从疲劳或肌肉无力中恢复过来，就使用这个程序。这是一个初级水平的训练程序，您应该选择一个对您来说很舒服的强度。"
            ,"這個計畫旨在提示肌肉的力量，尤其是您關節周圍肌肉的力量，從而改善您的活動能力。該程式通過使用電脈衝來類比重負荷或重阻力來訓練您的肌肉收縮更多的纖維，逐步增强肌肉的效率或力量。如果您想從疲勞或肌肉無力中恢復過來，就使用這個程式。這是一個初級水准的訓練程式，您應該選擇一個對您來說很舒服的强度。"
            ,"The best intensity setting should be within your bearable range. The greater the intensity, the better the effect."
            ,"最佳的力度设置是在您能承受的范围内，力度越大，效果越好。"
            ,"最佳的力度設置是在您能承受的範圍內，力度越大，效果越好。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_FD_EC.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(24
            ,"Intermediate strength building"
            ,"肌肉力量增强-中级"
            ,"肌肉力量增强-中級"
            ,"32"
            ,"Muscle Strengthening - Intermediate"
            ,"Strengthens muscles at intermediate level to help improve mobility; \nTrains the muscles to contract more fibers and build up muscle efficiency, or strength, over time…"
            ,"增强肌肉力量的中级程序；\n训练您更多的肌肉纤维，逐步提高肌肉效率或力量，改善活动能力…"
            ,"增强肌肉力量的中级程式；\n訓練您更多的肌肉纖維，逐步提高肌肉效率或力量，改善活動能力…"
            ,"This program is designed to strengthen muscles especially the muscles around your joints which can helps to improve your moblity. By using electrical pulses to simulate a heavy load or heavy resistence, this program trains your muscles to contract more fibers and build up muscle efficency, or strength, over time.  If you want to get back on the road to recovery from fatigue or muscle weakness from lack of use, this program might be right for you. This is an intermediate level training, the beginner level and advanced level are also available. You should choose an intensity that is comfortable for you. "
            ,"这个计划旨在提示肌肉的力量，尤其是您关节周围肌肉的力量，从而改善您的活动能力。该程序通过使用电脉冲来模拟重负荷或重阻力来训练您的肌肉收缩更多的纤维，逐步增强肌肉的效率或力量。如果您想从疲劳或肌肉无力中恢复过来，就使用这个程序。这是一个中级训练程序，可以与初级程序和高级程序一起交替使用，这样效果更佳。您应该选择一种对您来说很舒服的强度。"
            ,"這個計畫旨在提示肌肉的力量，尤其是您關節周圍肌肉的力量，從而改善您的活動能力。該程式通過使用電脈衝來類比重負荷或重阻力來訓練您的肌肉收縮更多的纖維，逐步增强肌肉的效率或力量。如果您想從疲勞或肌肉無力中恢復過來，就使用這個程式。這是一個中級訓練程式，可以與初級程式和高級程式一起交替使用，這樣效果更佳。您應該選擇一種對您來說很舒服的强度。"
            ,"The best intensity setting should be within your bearable range. The greater the intensity, the better the effect."
            ,"最佳的力度设置是在您能承受的范围内，力度越大，效果越好。"
            ,"最佳的力度設置是在您能承受的範圍內，力度越大，效果越好。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_FCE_EC.utc"
            ,"1"
            ,"1",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(25
            ,"Advanced strength building"
            ,"肌肉力量增强-高级"
            ,"肌肉力量增强-高級"
            ,"32"
            ,"Muscle Strengthening - Advanced"
            ,"Strengthens muscles at the most advanced level to improve mobility; \nTrains the muscles to contract more fibers and build up muscle efficiency, or strength, over time..."
            ,"增强肌肉力量的高级程序；\n训练您更多的肌肉纤维，逐步提高肌肉效率或力量，改善活动能力…"
            ,"增强肌肉力量的高级程式；\n訓練您更多的肌肉纖維，逐步提高肌肉效率或力量，改善活動能力…"
            ,"This program is designed to strengthen muscles especially the muscles around your joints which can helps to improve your moblity. By using electrical pulses to simulate a heavy load or heavy resistence, this program trains your muscles to contract more fibers and build up muscle efficency, or strength, over time.  If you want to get back on the road to recovery from fatigue or muscle weakness from lack of use, this program might be right for you.  This is the most advanced level training, basic and intermediate are also available. You should choose an intensity that is comfortable for you. "
            ,"这个计划旨在提示肌肉的力量，尤其是您关节周围肌肉的力量，从而改善您的活动能力。该程序通过使用电脉冲来模拟重负荷或重阻力来训练您的肌肉收缩更多的纤维，逐步增强肌肉的效率或力量。如果您想从疲劳或肌肉无力中恢复过来，就使用这个程序。这是一个高级训练程序，可以与初级程序和中级程序一起交替使用，这样效果更佳。您应该选择一种对您来说很舒服的强度。"
            ,"這個計畫旨在提示肌肉的力量，尤其是您關節周圍肌肉的力量，從而改善您的活動能力。該程式通過使用電脈衝來類比重負荷或重阻力來訓練您的肌肉收縮更多的纖維，逐步增强肌肉的效率或力量。如果您想從疲勞或肌肉無力中恢復過來，就使用這個程式。這是一個中級訓練程式，可以與初級程式和高級程式一起交替使用，這樣效果更佳。您應該選擇一種對您來說很舒服的强度。"
            ,"The best intensity setting should be within your bearable range. The greater the intensity, the better the effect."
            ,"最佳的力度设置是在您能承受的范围内，力度越大，效果越好。"
            ,"最佳的力度設置是在您能承受的範圍內，力度越大，效果越好。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_FIE_EC.utc"
            ,"1"
            ,"2",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(26
            ,"Beginner endurance building"
            ,"肌肉力量和耐力增强-初级"
            ,"肌肉力量和耐力增强-初級"
            ,"45"
            ,"Improve Muscle Performance & Endurance - Basic"
            ,"Improves your muscle performance at beginner level;  \nActivates specific fibers which helps to improve muscle endurance and condition…"
            ,"提高肌肉力量和耐力的初级程序；\n激活特定的纤维，以提高肌肉的力量和耐力…"
            ,"提高肌肉力量和耐力的初級程式；\n啟動特定的纖維，以提高肌肉的力量和耐力…"
            ,"This program is designed to improve your muscle performance by sending the electrical impulses to activate specific fibers which help muscle endurance. It helps to keep your muscle in good condition and prevent you from fatigue or strain for longer time during daily work. This is a beginner level training, you should choose an intensity that is comfortable for you. "
            ,"该程序通过运用特定的电波来激活目标纤维来改善您的肌肉功能，这些纤维构成了肌肉的耐力和力量。它还使您的肌肉处于良好的状态，防止您由于长时间工作引发的疲劳或紧张。这是一个初级水平的训练，您应该选择一个对您来说很舒服的强度。"
            ,"該程式通過運用特定的電波來啟動目標纖維來改善您的肌肉功能，這些纖維構成了肌肉的耐力和力量。它還使您的肌肉處於良好的狀態，防止您由於長時間工作引發的疲勞或緊張。這是一個初級水准的訓練，您應該選擇一個對您來說很舒服的强度。"
            ,"The best intensity setting should be within your bearable range. The greater the intensity, the better the effect."
            ,"最佳的力度设置是在您能承受的范围内，力度越大，效果越好。"
            ,"最佳的力度設置是在您能承受的範圍內，力度越大，效果越好。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_ED_EC.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(27
            ,"Intermediate endurance building"
            ,"肌肉力量和耐力增强-中级"
            ,"肌肉力量和耐力增强-中級"
            ,"45"
            ,"Improve Muscle Performance & Endurance - Intermediate"
            ,"Improves your muscle performance at intermediate level; \nActivates specific fibers which helps to improve muscle endurance and condition…"
            ,"提高肌肉力量和耐力的中级程序；\n激活特定的纤维，以提高肌肉的力量和耐力…"
            ,"提高肌肉力量和耐力的中級程式；\n啟動特定的纖維，以提高肌肉的力量和耐力…"
            ,"This program is designed to improve your muscle performance by sending the electrical impulses to activate specific fibers which help muscle endurance. It helps to keep your muscle in good condition and prevent you from fatigue or strain for longer time during daily work. This is an intermediate level training, the beginner level and advanced level are also available. You should choose an intensity that is comfortable for you. "
            ,"该程序通过运用特定的电波来激活目标纤维来改善您的肌肉功能，这些纤维构成了肌肉的耐力和力量。它还使您的肌肉处于良好的状态，防止您由于长时间工作引发的疲劳或紧张。这是一个中级训练程序，可以与初级程序和高级程序一起交替使用，这样效果更佳。您应该选择一个对您来说很舒服的强度。"
            ,"該程式通過運用特定的電波來啟動目標纖維來改善您的肌肉功能，這些纖維構成了肌肉的耐力和力量。它還使您的肌肉處於良好的狀態，防止您由於長時間工作引發的疲勞或緊張。這是一個中級訓練程式，可以與初級程式和高級程式一起交替使用，這樣效果更佳。您應該選擇一個對您來說很舒服的强度。"
            ,"The best intensity setting should be within your bearable range. The greater the intensity, the better the effect."
            ,"最佳的力度设置是在您能承受的范围内，力度越大，效果越好。"
            ,"最佳的力度設置是在您能承受的範圍內，力度越大，效果越好。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_EI_EC.utc"
            ,"1"
            ,"1",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(28
            ,"Advanced endurance building"
            ,"肌肉力量和耐力增强-高级"
            ,"肌肉力量和耐力增强-高級"
            ,"45"
            ,"Improve Muscle Performance & Endurance - Advanced"
            ,"Improves your muscle performance at the most advanced level; \nActivates specific fibers which helps to improve muscle endurance and condition…"
            ,"提高肌肉力量和耐力的高级程序；\n激活特定的纤维，以提高肌肉的力量和耐力…"
            ,"提高肌肉力量和耐力的高級程式；\n啟動特定的纖維，以提高肌肉的力量和耐力…"
            ,"This program is designed to improve your muscle performance by sending the electrical impulses to activate specific fibers which help muscle endurance. It helps to keep your muscle in good condition and prevent you from fatigue or strain for longer time during daily work. This is the most advanced level training, basic and intermediate are also available. You should choose an intensity that is comfortable for you. "
            ,"该程序通过运用特定的电波来激活目标纤维来改善您的肌肉功能，这些纤维构成了肌肉的耐力和力量。它还使您的肌肉处于良好的状态，防止您由于长时间工作引发的疲劳或紧张。这是一个高级训练程序，可以与初级程序和中级级程序一起交替使用，这样效果更佳。您应该选择一个对您来说很舒服的强度。"
            ,"該程式通過運用特定的電波來啟動目標纖維來改善您的肌肉功能，這些纖維構成了肌肉的耐力和力量。它還使您的肌肉處於良好的狀態，防止您由於長時間工作引發的疲勞或緊張。這是一個高級訓練程式，可以與初級程式和中級級程式一起交替使用，這樣效果更佳。您應該選擇一個對您來說很舒服的强度。"
            ,"The best intensity setting should be within your bearable range. The greater the intensity, the better the effect."
            ,"最佳的力度设置是在您能承受的范围内，力度越大，效果越好。"
            ,"最佳的力度設置是在您能承受的範圍內，力度越大，效果越好。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_EC_EC.utc"
            ,"1"
            ,"2",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"2"
            ,-1.0))
        
        programList.append(Program.initProgram(29
            ,"Thorough relaxation"
            ,"充分按摩"
            ,"充分按摩"
            ,"20"
            ,"Complete Massage"
            ,"This program incorporates a variety of techniques for a thorough massage. \nUse for general relaxation or as part of a pain relief recovery routine to feel refreshed…"
            ,"结合了多种疗法进行充分按摩；\n可做各种放松或缓解疼痛康复的组成部分，让您轻松如新…"
            ,"結合了多種療法進行充分按摩；\n可做各種放鬆或緩解疼痛康復的組成部分，讓您輕鬆如新…"
            ,"This comprehensive massage program incorporates a variety of techniques, stimulation patterns, and intensities to penetrate your muscles at all levels for a thorough massage that will leave you feeling refreshed.  It can be used for general relaxation or as part of a pain relief recovery routine. "
            ,"这个综合的按摩程序结合了各种技术，调制模式和强度，以渗透到您的肌肉在各个层面，彻底的按摩，让您感觉如新。它可以用于一般放松或作为缓解疼痛康复例行程序的一部分。"
            ,"這個綜合的按摩程式結合了各種科技，調製模式和强度，以滲透到您的肌肉在各個層面，徹底的按摩，讓您感覺如新。它可以用於一般放鬆或作為緩解疼痛康復例行程式的一部分。"
            ,"The best intensity setting is to let your body feel appropriate numb and contraction. If you do not feel that, you can increase the intensity accordingly but it should be bearable and not too high because excessive intensity will reduce the effect."
            ,"最佳的力度设置是让您的身体感受到适当的麻痹和收缩，如没有这种感觉，可以在身体承受的范围内适当调高力度，但不宜过高，过高的力度会导致效果下降。"
            ,"最佳的力度設置是讓您的身體感受到適當的麻痹和收縮，如沒有這種感覺，可以在身體承受的範圍內適當調高力度，但不宜過高，過高的力度會導致效果下降。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_SHOULDERS.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"3"
            ,-1.0))
        
        programList.append(Program.initProgram(30
            ,"Stress-free massage"
            ,"减压按摩"
            ,"減壓按摩"
            ,"28"
            ,"Stress Relief Massage"
            ,"This program uses massage techniques to relax your nervous system and muscles, to help reduce the effects of stress…"
            ,"使用按摩疗法放松您的神经系统和肌肉，以帮助减少压力的影响…"
            ,"使用按摩療法放鬆您的神經系統和肌肉，以幫助减少壓力的影響…"
            ,"Did you know emotional stress can cause physical stress? The emotional stress you experience in life can actually lead to physical  stress within the body through the tensing & tightening of muscles.  And when the body is tense and sore, that often leads to even more emotional stress - it's a vicious cycle!  This program uses massage techniques to  relax your muscles and nervous system to help reduce the phsyical effects of stress.  "
            ,"这个综合的按摩程序结合了各种技术，调制模式和强度，以渗透到您的肌肉在各个层面，彻底的按摩，让您感觉如新。它可以用于一般放松或作为缓解疼痛康复例行程序的一部分。"
            ,"這個綜合的按摩程式結合了各種科技，調製模式和强度，以滲透到您的肌肉在各個層面，徹底的按摩，讓您感覺如新。它可以用於一般放鬆或作為緩解疼痛康復例行程式的一部分。"
            ,"Did you know emotional stress can cause physical stress? The emotional stress you experience in life can actually lead to physical  stress within the body through the tensing & tightening of muscles.  And when the body is tense and sore, that often leads to even more emotional stress - it's a vicious cycle!  This program uses massage techniques to  relax your muscles and nervous system to help reduce the phsyical effects of stress. "
            ,"您知道情绪压力会引起身体压力吗？您在生活中所经历的情绪压力实际上可以通过肌肉的紧张和紧绷导致身体内部的生理压力。而当身体紧张和疼痛时，往往会导致更多的情绪压力——这是一个恶性循环！这个程序使用按摩技术放松您的肌肉和神经系统，以帮助减少压力的物理影响。"
            ,"您知道情緒壓力會引起身體壓力嗎？您在生活中所經歷的情緒壓力實際上可以通過肌肉的緊張和緊繃導致身體內部的生理壓力。而當身體緊張和疼痛時，往往會導致更多的情緒壓力——這是一個惡性循環！這個程式使用按摩科技放鬆您的肌肉和神經系統，以幫助减少壓力的物理影響。"
            ,"Steps:\n" +
                "1. Follow the guidance of the app to turn on the device and securely pair with the device;\n" +
                "2. Select the needed therapy program and read the instructions carefully;\n" +
                "3. Place the electrode to the body area shown in the picture, covering the pain point or problem area;\n" +
                "4. Click the \"Start\" button in app or the \"+\" button on the device to initiate the therapy;\n" +
                "5. During therapy, you can adjust the intensity either using the device or the app;\n" +
                "6. Each therapy program has a preset timer and will be automatically completed;\n" +
                "7. You can always stop the therapy at any time by pressing the Stop button in the app or the power-off key of the device.\n" +
                "\n" +
                "Suggestions:\n" +
                "1. It is suggested to select the therapy program in the order recommended by the app;\n" +
                "2. Or you can also select the therapy program your own;\n" +
                "3. The recommended therapy can be used in a short term or longer term base depending on if your situation is short term or chronic;\n" +
                "4. Keep relaxed when in therapy;\n" +
            "5. The number of therapies should not exceed three times a day."
            ,"操作步骤：\n" +
                "\n" +
                "1. 按app指引打开设备并进行蓝牙安全配对；\n" +
                "2. 选择所需治疗程序，仔细阅读说明；\n" +
                "3. 按图示将电极贴贴于对应位置，尽可能覆盖到痛点或问题点；\n" +
                "4. 点击app中的 \"开始\"或设备上的\"+\"键，将启动治疗；\n" +
                "5. 随后还可以通过设备或APP控制治疗的有效力度；\n" +
                "6. 每个程序已经预设对应时间，到时间按摩程序将自动停止；\n" +
                "7. 您也可以通过APP或电源键随时停止。\n" +
                "\n" +
                "使用建议：\n" +
                "\n" +
                "1. 建议按推荐治疗程序的顺序来选择使用；\n" +
                "2. 也可以自己选择程序使用；\n" +
                "3. 根据您的问题是短期或是慢性的，推荐的治疗可以短期或长期使用；\n" +
                "4. 治疗时保持放松；\n" +
            "5. 每天的治疗次数不应超过3次。"
            ,"操作步驟：\n" +
                "\n" +
                "1.按app指引打開設備並進行藍牙安全配對；\n" +
                "2.選擇所需治療程式，仔細閱讀說明；\n" +
                "3.按圖示將電極貼貼於對應位置，盡可能覆蓋到痛點或問題點；\n" +
                "4.點擊app中的\"開始\"或設備上的\"+\"鍵，將啟動治療；\n" +
                "5.隨後還可以通過設備或APP控制治療的有效力度；\n" +
                "6.每個程式已經預設對應時間，到時間按摩程式將自動停止；\n" +
                "7.您也可以通過APP或電源鍵隨時停止。\n" +
                "\n" +
                "使用建議：\n" +
                "\n" +
                "1.建議按推薦治療程式的順序來選擇使用；\n" +
                "2.也可以自己選擇程式使用；\n" +
                "3.根據您的問題是短期或是慢性的，推薦的治療可以短期或長期使用；\n" +
                "4.治療時保持放鬆；\n" +
            "5.每天的治療次數不應超過3次。"
            ,"Must not be used together with the following medical equipment:\n" +
                "1. Pacemaker, or other implantable medical devices;\n" +
                "2. Artificial heart-lung device, or other life support devices;\n" +
            "3. Electrocardiogram(ECG) monitor, or other electronic medical devices."
            ,"禁止与以下医用电子器械一起使用：\n" +
                "1、心脏起搏器等体内植入型医用电子器械\n" +
                "2、人工心肺等维持生命医用电子器械\n" +
            "3、心电图仪等医用电子器械"
            ,"禁止與以下醫用電子器械一起使用：\n" +
                "1、心臟起搏器等體內植入型醫用電子器械\n" +
                "2、人工心肺等維持生命醫用電子器械\n" +
            "3、心電圖儀等醫用電子器械"
            ,"U_MNSS_EC.utc"
            ,"1"
            ,"0",4.5
            ,"This massage is quite comfortable, very helpful."
            ,"这个按摩很专业，非常喜欢！"
            ,"這個按摩很專業，非常喜歡！"
            ,"3"
            ,-1.0))
    }
    
    static func initCategoryList(){
        categoryList.append(Category.initCategory(1,"Relieve","镇痛","鎮痛"))
        categoryList.append(Category.initCategory(2,"Strengthen","强身","强身"))
        categoryList.append(Category.initCategory(3,"Relax","放松","放鬆"))
    }
    
    static func initLocationList(){
        locationList.append(Location.initLocation(1,"Shoulder","肩部","肩部","jianbu_01-01","min_shoulder"))
        locationList.append(Location.initLocation(2,"Upper back","背部上方","背部上方","beibushangfang_01-01","min_upper_back"))
        locationList.append(Location.initLocation(3,"Back","背部","背部","beibu_01-01","min_back"))
        locationList.append(Location.initLocation(4,"Lower back","后腰","後腰","yaobu_01-01","min_lower_back"))
        locationList.append(Location.initLocation(5,"Abdomen","腹部","腹部","fubu_01-01","min_abdomen"))
        locationList.append(Location.initLocation(6,"Buttock","臀部","臀部","tunbu_01-01","min_buttock"))
        locationList.append(Location.initLocation(7,"Thigh","大腿","大腿","datui_01-01;datui_02-01;datui_03-01;datui_04-01","min_thigh"))
        locationList.append(Location.initLocation(8,"Knee","膝盖","膝蓋","xigai_01-01","min_knee"))
        locationList.append(Location.initLocation(9,"Calf","小腿","小腿","xiaotui_01-01;xiaotui_02-01","min_calf"))
        locationList.append(Location.initLocation(10,"Ankle","脚踝","脚踝","jiaohuai_01-01;jiaohuai_02-01","min_ankle"))
        locationList.append(Location.initLocation(11,"Foot","脚","脚","jiao_01-01","min_foot"))
        locationList.append(Location.initLocation(12,"Upper arm","上臂","上臂","shangbi_01-01;shangbi_02-01;shangbi_03-01;shangbi_04-01","min_upper_arm"))
        locationList.append(Location.initLocation(13,"Elbow","肘部","肘部","zhoubu_01-01","min_elbow"))
        locationList.append(Location.initLocation(14,"Forearm","前臂","前臂","qianbi_01-01;qianbi_02-01;qianbi_03-01;qianbi_04-01","min_forearm"))
        locationList.append(Location.initLocation(15,"Wrist","手腕","手腕","shouwan_01-01","min_wrist"))
    }
    
    static func initProgramDetail(){
        programDetailList.append(ProgramDetail.initProgramDetail(1,1,1,1));
        programDetailList.append(ProgramDetail.initProgramDetail(2,1,1,2));
        programDetailList.append(ProgramDetail.initProgramDetail(3,1,1,3));
        programDetailList.append(ProgramDetail.initProgramDetail(4,1,1,4));
        programDetailList.append(ProgramDetail.initProgramDetail(5,1,1,5));
        programDetailList.append(ProgramDetail.initProgramDetail(6,1,1,6));
        programDetailList.append(ProgramDetail.initProgramDetail(7,1,1,7));
        programDetailList.append(ProgramDetail.initProgramDetail(8,1,1,8));
        programDetailList.append(ProgramDetail.initProgramDetail(9,1,1,9));
        programDetailList.append(ProgramDetail.initProgramDetail(10,1,1,10));
        programDetailList.append(ProgramDetail.initProgramDetail(11,1,1,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(12,1,2,1));
        programDetailList.append(ProgramDetail.initProgramDetail(13,1,2,2));
        programDetailList.append(ProgramDetail.initProgramDetail(14,1,2,3));
        programDetailList.append(ProgramDetail.initProgramDetail(15,1,2,4));
        programDetailList.append(ProgramDetail.initProgramDetail(16,1,2,5));
        programDetailList.append(ProgramDetail.initProgramDetail(17,1,2,6));
        programDetailList.append(ProgramDetail.initProgramDetail(18,1,2,7));
        programDetailList.append(ProgramDetail.initProgramDetail(19,1,2,8));
        programDetailList.append(ProgramDetail.initProgramDetail(20,1,2,9));
        programDetailList.append(ProgramDetail.initProgramDetail(21,1,2,10));
        programDetailList.append(ProgramDetail.initProgramDetail(22,1,2,11));
        programDetailList.append(ProgramDetail.initProgramDetail(23,1,2,18));
        
        programDetailList.append(ProgramDetail.initProgramDetail(24,1,3,1));
        programDetailList.append(ProgramDetail.initProgramDetail(25,1,3,2));
        programDetailList.append(ProgramDetail.initProgramDetail(26,1,3,3));
        programDetailList.append(ProgramDetail.initProgramDetail(27,1,3,4));
        programDetailList.append(ProgramDetail.initProgramDetail(28,1,3,5));
        programDetailList.append(ProgramDetail.initProgramDetail(29,1,3,6));
        programDetailList.append(ProgramDetail.initProgramDetail(30,1,3,7));
        programDetailList.append(ProgramDetail.initProgramDetail(31,1,3,8));
        programDetailList.append(ProgramDetail.initProgramDetail(32,1,3,9));
        programDetailList.append(ProgramDetail.initProgramDetail(33,1,3,10));
        programDetailList.append(ProgramDetail.initProgramDetail(34,1,3,11));
        programDetailList.append(ProgramDetail.initProgramDetail(35,1,3,19));
        
        programDetailList.append(ProgramDetail.initProgramDetail(36,1,4,1));
        programDetailList.append(ProgramDetail.initProgramDetail(37,1,4,2));
        programDetailList.append(ProgramDetail.initProgramDetail(38,1,4,3));
        programDetailList.append(ProgramDetail.initProgramDetail(39,1,4,4));
        programDetailList.append(ProgramDetail.initProgramDetail(40,1,4,5));
        programDetailList.append(ProgramDetail.initProgramDetail(41,1,4,6));
        programDetailList.append(ProgramDetail.initProgramDetail(42,1,4,7));
        programDetailList.append(ProgramDetail.initProgramDetail(43,1,4,8));
        programDetailList.append(ProgramDetail.initProgramDetail(44,1,4,9));
        programDetailList.append(ProgramDetail.initProgramDetail(45,1,4,10));
        programDetailList.append(ProgramDetail.initProgramDetail(46,1,4,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(47,1,5,1));
        programDetailList.append(ProgramDetail.initProgramDetail(48,1,5,2));
        programDetailList.append(ProgramDetail.initProgramDetail(49,1,5,3));
        programDetailList.append(ProgramDetail.initProgramDetail(50,1,5,4));
        programDetailList.append(ProgramDetail.initProgramDetail(51,1,5,5));
        programDetailList.append(ProgramDetail.initProgramDetail(52,1,5,6));
        programDetailList.append(ProgramDetail.initProgramDetail(53,1,5,7));
        programDetailList.append(ProgramDetail.initProgramDetail(54,1,5,8));
        programDetailList.append(ProgramDetail.initProgramDetail(55,1,5,9));
        programDetailList.append(ProgramDetail.initProgramDetail(56,1,5,10));
        programDetailList.append(ProgramDetail.initProgramDetail(57,1,5,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(58,1,6,1));
        programDetailList.append(ProgramDetail.initProgramDetail(59,1,6,2));
        programDetailList.append(ProgramDetail.initProgramDetail(60,1,6,3));
        programDetailList.append(ProgramDetail.initProgramDetail(61,1,6,4));
        programDetailList.append(ProgramDetail.initProgramDetail(62,1,6,5));
        programDetailList.append(ProgramDetail.initProgramDetail(63,1,6,6));
        programDetailList.append(ProgramDetail.initProgramDetail(64,1,6,7));
        programDetailList.append(ProgramDetail.initProgramDetail(65,1,6,8));
        programDetailList.append(ProgramDetail.initProgramDetail(66,1,6,9));
        programDetailList.append(ProgramDetail.initProgramDetail(67,1,6,10));
        programDetailList.append(ProgramDetail.initProgramDetail(68,1,6,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(69,1,7,1));
        programDetailList.append(ProgramDetail.initProgramDetail(70,1,7,2));
        programDetailList.append(ProgramDetail.initProgramDetail(71,1,7,3));
        programDetailList.append(ProgramDetail.initProgramDetail(72,1,7,4));
        programDetailList.append(ProgramDetail.initProgramDetail(73,1,7,5));
        programDetailList.append(ProgramDetail.initProgramDetail(74,1,7,6));
        programDetailList.append(ProgramDetail.initProgramDetail(75,1,7,7));
        programDetailList.append(ProgramDetail.initProgramDetail(76,1,7,8));
        programDetailList.append(ProgramDetail.initProgramDetail(77,1,7,9));
        programDetailList.append(ProgramDetail.initProgramDetail(78,1,7,10));
        programDetailList.append(ProgramDetail.initProgramDetail(79,1,7,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(80,1,8,1));
        programDetailList.append(ProgramDetail.initProgramDetail(81,1,8,2));
        programDetailList.append(ProgramDetail.initProgramDetail(82,1,8,3));
        programDetailList.append(ProgramDetail.initProgramDetail(83,1,8,4));
        programDetailList.append(ProgramDetail.initProgramDetail(84,1,8,5));
        programDetailList.append(ProgramDetail.initProgramDetail(85,1,8,6));
        programDetailList.append(ProgramDetail.initProgramDetail(86,1,8,7));
        programDetailList.append(ProgramDetail.initProgramDetail(87,1,8,8));
        programDetailList.append(ProgramDetail.initProgramDetail(88,1,8,9));
        programDetailList.append(ProgramDetail.initProgramDetail(89,1,8,10));
        programDetailList.append(ProgramDetail.initProgramDetail(90,1,8,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(91,1,9,1));
        programDetailList.append(ProgramDetail.initProgramDetail(92,1,9,2));
        programDetailList.append(ProgramDetail.initProgramDetail(93,1,9,3));
        programDetailList.append(ProgramDetail.initProgramDetail(94,1,9,4));
        programDetailList.append(ProgramDetail.initProgramDetail(95,1,9,5));
        programDetailList.append(ProgramDetail.initProgramDetail(96,1,9,6));
        programDetailList.append(ProgramDetail.initProgramDetail(97,1,9,7));
        programDetailList.append(ProgramDetail.initProgramDetail(98,1,9,8));
        programDetailList.append(ProgramDetail.initProgramDetail(99,1,9,9));
        programDetailList.append(ProgramDetail.initProgramDetail(100,1,9,10));
        programDetailList.append(ProgramDetail.initProgramDetail(101,1,9,11));
        programDetailList.append(ProgramDetail.initProgramDetail(102,1,9,21));
        programDetailList.append(ProgramDetail.initProgramDetail(103,1,9,22));
        
        programDetailList.append(ProgramDetail.initProgramDetail(104,1,10,1));
        programDetailList.append(ProgramDetail.initProgramDetail(105,1,10,2));
        programDetailList.append(ProgramDetail.initProgramDetail(106,1,10,3));
        programDetailList.append(ProgramDetail.initProgramDetail(107,1,10,4));
        programDetailList.append(ProgramDetail.initProgramDetail(108,1,10,5));
        programDetailList.append(ProgramDetail.initProgramDetail(109,1,10,6));
        programDetailList.append(ProgramDetail.initProgramDetail(110,1,10,7));
        programDetailList.append(ProgramDetail.initProgramDetail(111,1,10,8));
        programDetailList.append(ProgramDetail.initProgramDetail(112,1,10,9));
        programDetailList.append(ProgramDetail.initProgramDetail(113,1,10,10));
        programDetailList.append(ProgramDetail.initProgramDetail(114,1,10,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(115,1,11,1));
        programDetailList.append(ProgramDetail.initProgramDetail(116,1,11,2));
        programDetailList.append(ProgramDetail.initProgramDetail(117,1,11,3));
        programDetailList.append(ProgramDetail.initProgramDetail(118,1,11,4));
        programDetailList.append(ProgramDetail.initProgramDetail(119,1,11,5));
        programDetailList.append(ProgramDetail.initProgramDetail(120,1,11,6));
        programDetailList.append(ProgramDetail.initProgramDetail(121,1,11,7));
        programDetailList.append(ProgramDetail.initProgramDetail(122,1,11,8));
        programDetailList.append(ProgramDetail.initProgramDetail(123,1,11,9));
        programDetailList.append(ProgramDetail.initProgramDetail(124,1,11,10));
        programDetailList.append(ProgramDetail.initProgramDetail(125,1,11,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(126,1,12,1));
        programDetailList.append(ProgramDetail.initProgramDetail(127,1,12,2));
        programDetailList.append(ProgramDetail.initProgramDetail(128,1,12,3));
        programDetailList.append(ProgramDetail.initProgramDetail(129,1,12,4));
        programDetailList.append(ProgramDetail.initProgramDetail(130,1,12,5));
        programDetailList.append(ProgramDetail.initProgramDetail(131,1,12,6));
        programDetailList.append(ProgramDetail.initProgramDetail(132,1,12,7));
        programDetailList.append(ProgramDetail.initProgramDetail(133,1,12,8));
        programDetailList.append(ProgramDetail.initProgramDetail(134,1,12,9));
        programDetailList.append(ProgramDetail.initProgramDetail(135,1,12,10));
        programDetailList.append(ProgramDetail.initProgramDetail(136,1,12,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(137,1,13,1));
        programDetailList.append(ProgramDetail.initProgramDetail(138,1,13,2));
        programDetailList.append(ProgramDetail.initProgramDetail(139,1,13,3));
        programDetailList.append(ProgramDetail.initProgramDetail(140,1,13,4));
        programDetailList.append(ProgramDetail.initProgramDetail(141,1,13,5));
        programDetailList.append(ProgramDetail.initProgramDetail(142,1,13,6));
        programDetailList.append(ProgramDetail.initProgramDetail(143,1,13,7));
        programDetailList.append(ProgramDetail.initProgramDetail(144,1,13,8));
        programDetailList.append(ProgramDetail.initProgramDetail(145,1,13,9));
        programDetailList.append(ProgramDetail.initProgramDetail(146,1,13,10));
        programDetailList.append(ProgramDetail.initProgramDetail(147,1,13,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(148,1,14,1));
        programDetailList.append(ProgramDetail.initProgramDetail(149,1,14,2));
        programDetailList.append(ProgramDetail.initProgramDetail(150,1,14,3));
        programDetailList.append(ProgramDetail.initProgramDetail(151,1,14,4));
        programDetailList.append(ProgramDetail.initProgramDetail(152,1,14,5));
        programDetailList.append(ProgramDetail.initProgramDetail(153,1,14,6));
        programDetailList.append(ProgramDetail.initProgramDetail(154,1,14,7));
        programDetailList.append(ProgramDetail.initProgramDetail(155,1,14,8));
        programDetailList.append(ProgramDetail.initProgramDetail(156,1,14,9));
        programDetailList.append(ProgramDetail.initProgramDetail(157,1,14,10));
        programDetailList.append(ProgramDetail.initProgramDetail(158,1,14,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(159,1,15,1));
        programDetailList.append(ProgramDetail.initProgramDetail(160,1,15,2));
        programDetailList.append(ProgramDetail.initProgramDetail(161,1,15,3));
        programDetailList.append(ProgramDetail.initProgramDetail(162,1,15,4));
        programDetailList.append(ProgramDetail.initProgramDetail(163,1,15,5));
        programDetailList.append(ProgramDetail.initProgramDetail(164,1,15,6));
        programDetailList.append(ProgramDetail.initProgramDetail(165,1,15,7));
        programDetailList.append(ProgramDetail.initProgramDetail(166,1,15,8));
        programDetailList.append(ProgramDetail.initProgramDetail(167,1,15,9));
        programDetailList.append(ProgramDetail.initProgramDetail(168,1,15,10));
        programDetailList.append(ProgramDetail.initProgramDetail(169,1,15,11));
        
        programDetailList.append(ProgramDetail.initProgramDetail(170,2,1,23));
        programDetailList.append(ProgramDetail.initProgramDetail(171,2,1,24));
        programDetailList.append(ProgramDetail.initProgramDetail(172,2,1,25));
        programDetailList.append(ProgramDetail.initProgramDetail(173,2,1,26));
        programDetailList.append(ProgramDetail.initProgramDetail(174,2,1,27));
        programDetailList.append(ProgramDetail.initProgramDetail(175,2,1,28));
        programDetailList.append(ProgramDetail.initProgramDetail(176,2,1,14));
        programDetailList.append(ProgramDetail.initProgramDetail(177,2,1,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(178,2,2,23));
        programDetailList.append(ProgramDetail.initProgramDetail(179,2,2,24));
        programDetailList.append(ProgramDetail.initProgramDetail(180,2,2,25));
        programDetailList.append(ProgramDetail.initProgramDetail(181,2,2,26));
        programDetailList.append(ProgramDetail.initProgramDetail(182,2,2,27));
        programDetailList.append(ProgramDetail.initProgramDetail(183,2,2,28));
        programDetailList.append(ProgramDetail.initProgramDetail(184,2,2,14));
        programDetailList.append(ProgramDetail.initProgramDetail(185,2,2,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(186,2,3,23));
        programDetailList.append(ProgramDetail.initProgramDetail(187,2,3,24));
        programDetailList.append(ProgramDetail.initProgramDetail(188,2,3,25));
        programDetailList.append(ProgramDetail.initProgramDetail(189,2,3,26));
        programDetailList.append(ProgramDetail.initProgramDetail(190,2,3,27));
        programDetailList.append(ProgramDetail.initProgramDetail(191,2,3,28));
        programDetailList.append(ProgramDetail.initProgramDetail(192,2,3,14));
        programDetailList.append(ProgramDetail.initProgramDetail(193,2,3,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(194,2,4,23));
        programDetailList.append(ProgramDetail.initProgramDetail(195,2,4,24));
        programDetailList.append(ProgramDetail.initProgramDetail(196,2,4,25));
        programDetailList.append(ProgramDetail.initProgramDetail(197,2,4,26));
        programDetailList.append(ProgramDetail.initProgramDetail(198,2,4,27));
        programDetailList.append(ProgramDetail.initProgramDetail(199,2,4,28));
        programDetailList.append(ProgramDetail.initProgramDetail(200,2,4,14));
        programDetailList.append(ProgramDetail.initProgramDetail(201,2,4,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(202,2,5,23));
        programDetailList.append(ProgramDetail.initProgramDetail(203,2,5,24));
        programDetailList.append(ProgramDetail.initProgramDetail(204,2,5,25));
        programDetailList.append(ProgramDetail.initProgramDetail(205,2,5,26));
        programDetailList.append(ProgramDetail.initProgramDetail(206,2,5,27));
        programDetailList.append(ProgramDetail.initProgramDetail(207,2,5,28));
        programDetailList.append(ProgramDetail.initProgramDetail(208,2,5,14));
        programDetailList.append(ProgramDetail.initProgramDetail(209,2,5,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(210,2,6,23));
        programDetailList.append(ProgramDetail.initProgramDetail(211,2,6,24));
        programDetailList.append(ProgramDetail.initProgramDetail(212,2,6,25));
        programDetailList.append(ProgramDetail.initProgramDetail(213,2,6,26));
        programDetailList.append(ProgramDetail.initProgramDetail(214,2,6,27));
        programDetailList.append(ProgramDetail.initProgramDetail(215,2,6,28));
        programDetailList.append(ProgramDetail.initProgramDetail(216,2,6,14));
        programDetailList.append(ProgramDetail.initProgramDetail(217,2,6,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(218,2,7,23));
        programDetailList.append(ProgramDetail.initProgramDetail(219,2,7,24));
        programDetailList.append(ProgramDetail.initProgramDetail(220,2,7,25));
        programDetailList.append(ProgramDetail.initProgramDetail(221,2,7,26));
        programDetailList.append(ProgramDetail.initProgramDetail(222,2,7,27));
        programDetailList.append(ProgramDetail.initProgramDetail(223,2,7,28));
        programDetailList.append(ProgramDetail.initProgramDetail(224,2,7,14));
        programDetailList.append(ProgramDetail.initProgramDetail(225,2,7,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(226,2,8,23));
        programDetailList.append(ProgramDetail.initProgramDetail(227,2,8,24));
        programDetailList.append(ProgramDetail.initProgramDetail(228,2,8,25));
        programDetailList.append(ProgramDetail.initProgramDetail(229,2,8,26));
        programDetailList.append(ProgramDetail.initProgramDetail(230,2,8,27));
        programDetailList.append(ProgramDetail.initProgramDetail(231,2,8,28));
        programDetailList.append(ProgramDetail.initProgramDetail(232,2,8,14));
        programDetailList.append(ProgramDetail.initProgramDetail(233,2,8,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(234,2,9,23));
        programDetailList.append(ProgramDetail.initProgramDetail(235,2,9,24));
        programDetailList.append(ProgramDetail.initProgramDetail(236,2,9,25));
        programDetailList.append(ProgramDetail.initProgramDetail(237,2,9,26));
        programDetailList.append(ProgramDetail.initProgramDetail(238,2,9,27));
        programDetailList.append(ProgramDetail.initProgramDetail(239,2,9,28));
        programDetailList.append(ProgramDetail.initProgramDetail(240,2,9,14));
        programDetailList.append(ProgramDetail.initProgramDetail(241,2,9,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(242,2,10,23));
        programDetailList.append(ProgramDetail.initProgramDetail(243,2,10,24));
        programDetailList.append(ProgramDetail.initProgramDetail(244,2,10,25));
        programDetailList.append(ProgramDetail.initProgramDetail(245,2,10,26));
        programDetailList.append(ProgramDetail.initProgramDetail(246,2,10,27));
        programDetailList.append(ProgramDetail.initProgramDetail(247,2,10,28));
        programDetailList.append(ProgramDetail.initProgramDetail(248,2,10,14));
        programDetailList.append(ProgramDetail.initProgramDetail(249,2,10,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(250,2,11,23));
        programDetailList.append(ProgramDetail.initProgramDetail(251,2,11,24));
        programDetailList.append(ProgramDetail.initProgramDetail(252,2,11,25));
        programDetailList.append(ProgramDetail.initProgramDetail(253,2,11,26));
        programDetailList.append(ProgramDetail.initProgramDetail(254,2,11,27));
        programDetailList.append(ProgramDetail.initProgramDetail(255,2,11,28));
        programDetailList.append(ProgramDetail.initProgramDetail(256,2,11,14));
        programDetailList.append(ProgramDetail.initProgramDetail(257,2,11,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(258,2,12,23));
        programDetailList.append(ProgramDetail.initProgramDetail(259,2,12,24));
        programDetailList.append(ProgramDetail.initProgramDetail(260,2,12,25));
        programDetailList.append(ProgramDetail.initProgramDetail(261,2,12,26));
        programDetailList.append(ProgramDetail.initProgramDetail(262,2,12,27));
        programDetailList.append(ProgramDetail.initProgramDetail(263,2,12,28));
        programDetailList.append(ProgramDetail.initProgramDetail(264,2,12,14));
        programDetailList.append(ProgramDetail.initProgramDetail(265,2,12,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(266,2,13,23));
        programDetailList.append(ProgramDetail.initProgramDetail(267,2,13,24));
        programDetailList.append(ProgramDetail.initProgramDetail(268,2,13,25));
        programDetailList.append(ProgramDetail.initProgramDetail(269,2,13,26));
        programDetailList.append(ProgramDetail.initProgramDetail(270,2,13,27));
        programDetailList.append(ProgramDetail.initProgramDetail(271,2,13,28));
        programDetailList.append(ProgramDetail.initProgramDetail(272,2,13,14));
        programDetailList.append(ProgramDetail.initProgramDetail(273,2,13,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(274,2,14,23));
        programDetailList.append(ProgramDetail.initProgramDetail(275,2,14,24));
        programDetailList.append(ProgramDetail.initProgramDetail(276,2,14,25));
        programDetailList.append(ProgramDetail.initProgramDetail(277,2,14,26));
        programDetailList.append(ProgramDetail.initProgramDetail(278,2,14,27));
        programDetailList.append(ProgramDetail.initProgramDetail(279,2,14,28));
        programDetailList.append(ProgramDetail.initProgramDetail(280,2,14,14));
        programDetailList.append(ProgramDetail.initProgramDetail(281,2,14,15));
        
        programDetailList.append(ProgramDetail.initProgramDetail(282,3,1,12));
        programDetailList.append(ProgramDetail.initProgramDetail(283,3,1,13));
        programDetailList.append(ProgramDetail.initProgramDetail(284,3,1,16));
        programDetailList.append(ProgramDetail.initProgramDetail(285,3,1,17));
        programDetailList.append(ProgramDetail.initProgramDetail(286,3,1,20));
        programDetailList.append(ProgramDetail.initProgramDetail(287,3,1,29));
        programDetailList.append(ProgramDetail.initProgramDetail(288,3,1,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(289,3,2,12));
        programDetailList.append(ProgramDetail.initProgramDetail(290,3,2,13));
        programDetailList.append(ProgramDetail.initProgramDetail(291,3,2,16));
        programDetailList.append(ProgramDetail.initProgramDetail(292,3,2,17));
        programDetailList.append(ProgramDetail.initProgramDetail(293,3,2,20));
        programDetailList.append(ProgramDetail.initProgramDetail(294,3,2,29));
        programDetailList.append(ProgramDetail.initProgramDetail(295,3,2,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(296,3,3,12));
        programDetailList.append(ProgramDetail.initProgramDetail(297,3,3,13));
        programDetailList.append(ProgramDetail.initProgramDetail(298,3,3,16));
        programDetailList.append(ProgramDetail.initProgramDetail(299,3,3,17));
        programDetailList.append(ProgramDetail.initProgramDetail(300,3,3,20));
        programDetailList.append(ProgramDetail.initProgramDetail(301,3,3,29));
        programDetailList.append(ProgramDetail.initProgramDetail(302,3,3,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(303,3,4,12));
        programDetailList.append(ProgramDetail.initProgramDetail(304,3,4,13));
        programDetailList.append(ProgramDetail.initProgramDetail(305,3,4,16));
        programDetailList.append(ProgramDetail.initProgramDetail(306,3,4,17));
        programDetailList.append(ProgramDetail.initProgramDetail(307,3,4,20));
        programDetailList.append(ProgramDetail.initProgramDetail(308,3,4,29));
        programDetailList.append(ProgramDetail.initProgramDetail(309,3,4,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(310,3,5,12));
        programDetailList.append(ProgramDetail.initProgramDetail(311,3,5,13));
        programDetailList.append(ProgramDetail.initProgramDetail(312,3,5,16));
        programDetailList.append(ProgramDetail.initProgramDetail(313,3,5,17));
        programDetailList.append(ProgramDetail.initProgramDetail(314,3,5,20));
        programDetailList.append(ProgramDetail.initProgramDetail(315,3,5,29));
        programDetailList.append(ProgramDetail.initProgramDetail(316,3,5,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(317,3,6,12));
        programDetailList.append(ProgramDetail.initProgramDetail(318,3,6,13));
        programDetailList.append(ProgramDetail.initProgramDetail(319,3,6,16));
        programDetailList.append(ProgramDetail.initProgramDetail(320,3,6,17));
        programDetailList.append(ProgramDetail.initProgramDetail(321,3,6,20));
        programDetailList.append(ProgramDetail.initProgramDetail(322,3,6,29));
        programDetailList.append(ProgramDetail.initProgramDetail(323,3,6,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(324,3,7,12));
        programDetailList.append(ProgramDetail.initProgramDetail(325,3,7,13));
        programDetailList.append(ProgramDetail.initProgramDetail(326,3,7,16));
        programDetailList.append(ProgramDetail.initProgramDetail(327,3,7,17));
        programDetailList.append(ProgramDetail.initProgramDetail(328,3,7,20));
        programDetailList.append(ProgramDetail.initProgramDetail(329,3,7,29));
        programDetailList.append(ProgramDetail.initProgramDetail(330,3,7,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(331,3,8,12));
        programDetailList.append(ProgramDetail.initProgramDetail(332,3,8,13));
        programDetailList.append(ProgramDetail.initProgramDetail(333,3,8,16));
        programDetailList.append(ProgramDetail.initProgramDetail(334,3,8,17));
        programDetailList.append(ProgramDetail.initProgramDetail(335,3,8,20));
        programDetailList.append(ProgramDetail.initProgramDetail(336,3,8,29));
        programDetailList.append(ProgramDetail.initProgramDetail(337,3,8,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(338,3,9,12));
        programDetailList.append(ProgramDetail.initProgramDetail(339,3,9,13));
        programDetailList.append(ProgramDetail.initProgramDetail(340,3,9,16));
        programDetailList.append(ProgramDetail.initProgramDetail(341,3,9,17));
        programDetailList.append(ProgramDetail.initProgramDetail(342,3,9,20));
        programDetailList.append(ProgramDetail.initProgramDetail(343,3,9,29));
        programDetailList.append(ProgramDetail.initProgramDetail(344,3,9,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(345,3,10,12));
        programDetailList.append(ProgramDetail.initProgramDetail(346,3,10,13));
        programDetailList.append(ProgramDetail.initProgramDetail(347,3,10,16));
        programDetailList.append(ProgramDetail.initProgramDetail(348,3,10,17));
        programDetailList.append(ProgramDetail.initProgramDetail(349,3,10,20));
        programDetailList.append(ProgramDetail.initProgramDetail(350,3,10,29));
        programDetailList.append(ProgramDetail.initProgramDetail(351,3,10,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(352,3,11,12));
        programDetailList.append(ProgramDetail.initProgramDetail(353,3,11,13));
        programDetailList.append(ProgramDetail.initProgramDetail(354,3,11,16));
        programDetailList.append(ProgramDetail.initProgramDetail(355,3,11,17));
        programDetailList.append(ProgramDetail.initProgramDetail(356,3,11,20));
        programDetailList.append(ProgramDetail.initProgramDetail(357,3,11,29));
        programDetailList.append(ProgramDetail.initProgramDetail(358,3,11,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(359,3,12,12));
        programDetailList.append(ProgramDetail.initProgramDetail(360,3,12,13));
        programDetailList.append(ProgramDetail.initProgramDetail(361,3,12,16));
        programDetailList.append(ProgramDetail.initProgramDetail(362,3,12,17));
        programDetailList.append(ProgramDetail.initProgramDetail(363,3,12,20));
        programDetailList.append(ProgramDetail.initProgramDetail(364,3,12,29));
        programDetailList.append(ProgramDetail.initProgramDetail(365,3,12,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(366,3,13,12));
        programDetailList.append(ProgramDetail.initProgramDetail(367,3,13,13));
        programDetailList.append(ProgramDetail.initProgramDetail(368,3,13,16));
        programDetailList.append(ProgramDetail.initProgramDetail(369,3,13,17));
        programDetailList.append(ProgramDetail.initProgramDetail(370,3,13,20));
        programDetailList.append(ProgramDetail.initProgramDetail(371,3,13,29));
        programDetailList.append(ProgramDetail.initProgramDetail(372,3,13,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(373,3,14,12));
        programDetailList.append(ProgramDetail.initProgramDetail(374,3,14,13));
        programDetailList.append(ProgramDetail.initProgramDetail(375,3,14,16));
        programDetailList.append(ProgramDetail.initProgramDetail(376,3,14,17));
        programDetailList.append(ProgramDetail.initProgramDetail(377,3,14,20));
        programDetailList.append(ProgramDetail.initProgramDetail(378,3,14,29));
        programDetailList.append(ProgramDetail.initProgramDetail(379,3,14,30));
        
        programDetailList.append(ProgramDetail.initProgramDetail(380,3,15,12));
        programDetailList.append(ProgramDetail.initProgramDetail(381,3,15,13));
        programDetailList.append(ProgramDetail.initProgramDetail(382,3,15,16));
        programDetailList.append(ProgramDetail.initProgramDetail(383,3,15,17));
        programDetailList.append(ProgramDetail.initProgramDetail(384,3,15,20));
        programDetailList.append(ProgramDetail.initProgramDetail(385,3,15,29));
        programDetailList.append(ProgramDetail.initProgramDetail(386,3,15,30));
        
    }
}

