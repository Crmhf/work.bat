::删除C、D、E、F盘的共享
@echo off
net share admin$ /delete
net share c$ /delete
net share d$ /delete
net share e$ /delete
net share f$ /delete

