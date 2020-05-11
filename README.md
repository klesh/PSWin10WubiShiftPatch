# PSWin10WubiShiftPath

基于 [Win10WubiShiftPatch](https://github.com/flowercodec/Win10WubiShiftPatch) 描述的原理，使用 PowerShell script 实现相同的功能，即禁用 Windows 10 自带的微软五笔中 Shift 键切换中英文的功能。

# 使用

右击 `wubi-no-shift.ps1` 选择 `使用 PowerShell 执行` 。执行完后按 `Shift` 应不会导致 `微软五笔` 切换中英文状态。

# 安装

建议先执行 `wubi-no-shift.ps` 验证补丁是否有效，成功后再执行安装操作：
右击 `setup.ps1` 选择 `使用 PowerShell 执行`，添加计划任务在登录后自动打补丁。