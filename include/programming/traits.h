/*
 * traits.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PROGRAMMING_TRAITS_H_
#define INCLUDE_PROGRAMMING_TRAITS_H_

// TODO 测试error，参见Vector的构造
// do not use it,it has some error
template<typename T>
class IsDefaultConstructiable {
    typedef char yes;
    typedef struct { char arr[2]; } no;

    template<typename U>
    static decltype(U(), yes()) test(int);

    template<typename>
    static no test(...);

public:
//    enum { value=(sizeof(test<T>(0)) == sizeof(yes))};
    static constexpr bool value = (sizeof(test<T>(0)) == sizeof(yes));
};

//
//// help to construct
//template <class V,bool d>
//class DefaultConstructHelper{
//public:
//	static AS_MACRO void construct(V *p)
//	{
//		new (p) V();
//	}
//};
//template <class V>
//class DefaultConstructHelper<V,false>{
//public:
//	static AS_MACRO void construct(V *p)
//	{
//		reportError("must not be called");// cannot
//	}
//};
//


#endif /* INCLUDE_PROGRAMMING_TRAITS_H_ */
