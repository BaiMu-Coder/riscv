// 这段代码是错误码的定义，通常用于表示系统或程序中的不同错误类型。每个错误码都是一个常量，它们代表不同的错误情形。具体来说：
#ifndef	_SBI_ERROR_H
#define	_SBI_ERROR_H

#define SBI_OK		0
#define SBI_EUNKNOWN	-1
#define SBI_EFAIL	-2
#define SBI_EINVAL	-3
#define SBI_ENOENT	-4
#define SBI_ENOTSUPP	-5
#define SBI_ENODEV	-6
#define SBI_ENOSYS	-7
#define SBI_ETIMEDOUT	-8
#define SBI_EIO		-9
#define SBI_EILL	-10

#endif

// SBI_OK：表示操作成功，值为 0。
// SBI_EUNKNOWN：表示未知错误，值为 -1。
// SBI_EFAIL：表示操作失败，值为 -2。
// SBI_EINVAL：表示无效参数错误，值为 -3。
// SBI_ENOENT：表示没有找到指定项（例如文件、设备等），值为 -4。
// SBI_ENOTSUPP：表示不支持的操作，值为 -5。
// SBI_ENODEV：表示设备不存在，值为 -6。
// SBI_ENOSYS：表示系统错误（没有该操作），值为 -7。
// SBI_ETIMEDOUT：表示超时错误，值为 -8。
// SBI_EIO：表示输入输出错误，值为 -9。
// SBI_EILL：表示非法操作，值为 -10。