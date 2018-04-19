/*
 * forward_decl.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_FORWARD_DECL_H_
#define INCLUDE_DATA_FORWARD_DECL_H_

// 解决环形依赖问题
// 每个提供了forward_decl.h的目录
// 主要供头文件使用， 实现文件应当使用

// 对于模板类，其相关联的文件
// 按作用分为三类： forward_decl 只包含声明
//             templated_decl  包含定义体，但是没有实现  , 依赖时只引入forward_decl
//             templated_impl  包含定义和声明，应当由源文件引入 , 依赖时只引入templated_decl(因为需要方法声明，域声明）。
//       额外的一类templated_decl & templated_impl，与forward_decl同文件夹，通常是为了方便非模板的源程序引入，屏蔽实现细节。
//  使用模板时，要求模板的实现代码可见（而不仅仅是声明，否则就不能自动实例化模板）
//  当非模板代码使用模板代码时 -- 引入声明和实现即可
//  当模板代码使用非模板代码时 -- 引入声明即可
//  当模板代码使用模板代码时     -- 1.引入声明，即没有实现，极有可能造成undefined reference
//                      -- 2.引入声明和实现， 很有可能造成环形依赖
//                           我们认为情况1是可以解决的，而情况2是无法解决的。因此当模板使用模板时，仅仅引入声明即可
//                            情况1的解决非常简单（相比其他方案），在源文件中单独引入实现文件即可。
// 最终形成了一个体系： forward_decl templated_decl templated_impl 以及 templated_decl&templated_impl
//
//  UPDATE : 现在我们简化了设计， 只需要把声明和实现分离即可。并且保证声明（*_tempdecl.h）不引入实现代码。


template <class T>
class ForwardList;
template <class T>
class ForwardNode;
template <class T>
class Vector;
template <class T>
class VectorRef;

template <class T>
class DoublyLinkedNode;

template <class T>
class DoublyLinkedList;

class String;
class StringRef;
class UniversalString;
template <class T>
class UniversalVector;

#endif /* INCLUDE_DATA_FORWARD_DECL_H_ */
