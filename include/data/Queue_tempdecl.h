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
