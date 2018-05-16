/*
 * Queue_tempdecl.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_QUEUE_TEMPDECL_H_
#define INCLUDE_DATA_QUEUE_TEMPDECL_H_


#include <def.h>
#include <generic/error.h>
#include <utility>
#include <generic_util.h>

/**
 * 实现一个定容量的ring，元素循环存取
 *
 * 使用_indexRemove,_indexAdd来维持添加和删除操作
 * 不变式： 0<=_indexRemove<_len,0<= _indexAdd<_len
 *
 */
template <class T>
class Queue{
public:
	Queue(size_t len);
    Queue(const Queue &)=delete;
    Queue &operator=(const Queue &)=delete;
    Queue(Queue && rhs);
    Queue & operator=(Queue && rhs);

    ~Queue();
    AS_MACRO void rebase(size_t diff) {_data=pointerInc(_data, diff);}
    /**
     * 将队列长度设置为n，并且下标从0开始
     * 注意：在调用该方法前，确保内部数据时从0~_len的范围内有效。
     * 注意：如果队列为空(empty),则可以安全地调用reset(0)将其恢复到初始化状态，然后
     *     获取内部指针来填充数据，最后使用reset(n)来设置数据的长度
     * @param len
     */
    AS_MACRO void reset(size_t len){ _curLen=len;_indexAdd=len;_indexRemove=0;}

    // 必须保证 empty()==false
    T remove();
    // 必须保证full()==false
    AS_MACRO void put(const T& t) { emplacePut(t);}
    template <class ... Args>
    void emplacePut(Args && ... args);
    /**
     * 返回队列首部元素
     * @return
     */
    AS_MACRO T &peek() { assert(!empty());return _data[_indexRemove];}
    AS_MACRO const T& peek()const{ assert(!empty());return _data[_indexRemove];}

    AS_MACRO size_t capacity()const { return _len;}
    AS_MACRO T * data() { return _data;}
    AS_MACRO const T* data() const{ return _data;}
    AS_MACRO size_t size()const{return _curLen;}
    AS_MACRO bool empty()const{ return _curLen==0;}
    AS_MACRO bool full()const{ return _curLen==_len;}

private:
    T *_data;
    size_t _len;
    size_t _curLen;
    size_t _indexAdd;// 下一个加入的元素应当存放的位置， 当full()时，该值未定义
    size_t _indexRemove; // 队列首部元素的位置，当empty()时，该值未定义
};


#endif /* INCLUDE_DATA_QUEUE_TEMPDECL_H_ */
