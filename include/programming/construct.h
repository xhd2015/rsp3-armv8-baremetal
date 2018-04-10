/*
 * construct.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PROGRAMMING_CONSTRUCT_H_
#define INCLUDE_PROGRAMMING_CONSTRUCT_H_
#include <def.h>
#include <cstring>
#include <type_traits>
enum DefaultConstructPolicy { DEFAULT=true,ABORT=false,CLEAR=3};


//template<typename T> struct HasConstructPolicy {
//    struct Fallback { static constexpr DefaultConstructPolicy CONSTRUCT_POLICY=DefaultConstructPolicy::DEFAULT; }; // introduce member name
//    struct Derived : T, Fallback { };
//
//    template<typename C, C> struct ChT;
//
//    template<typename C> static char (&f(ChT<int Fallback::*, &C::CONSTRUCT_POLICY>*))[1];
//    template<typename C> static char (&f(...))[2];
//
//    static bool const value = sizeof(f<Derived>(0)) == 2;
//};
//
//
//template <class T,int scaleOrHasPolicy=std::is_scalar<T>::value?0:(HasConstructPolicy<T>::value?2:1)>
//class GetConstructPolicy{
//public:
//	static constexpr DefaultConstructPolicy CONSTRUCT_POLICY=DefaultConstructPolicy::DEFAULT;
//};
//template <class T>
//class GetConstructPolicy<T,1>{ // has no policy
//public:
//	static constexpr DefaultConstructPolicy CONSTRUCT_POLICY=DefaultConstructPolicy::DEFAULT;
//};
//template <class T>
//class GetConstructPolicy<T,2>{ //has policy
//public:
//	static constexpr DefaultConstructPolicy CONSTRUCT_POLICY=T::CONSTRUCT_POLICY;
//};


// help to construct
template <class V,DefaultConstructPolicy d=DefaultConstructPolicy::DEFAULT>
class DefaultConstructHelper{
public:
	static AS_MACRO void construct(V *p)
	{
		new (p) V();
	}
};
template <class V>
class DefaultConstructHelper<V,DefaultConstructPolicy::CLEAR>{
public:
	static AS_MACRO void construct(V *p)
	{
		std::memset(p,0,sizeof(*p));
	}
};
template <class V>
class DefaultConstructHelper<V,DefaultConstructPolicy::ABORT>{
public:
	static AS_MACRO void construct(V *p)
	{
		reportError("abort construct,must not be called");// cannot
	}
};



#endif /* INCLUDE_PROGRAMMING_CONSTRUCT_H_ */
