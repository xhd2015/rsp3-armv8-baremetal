/*
 * define_members.h
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PROGRAMMING_DEFINE_MEMBERS_H_
#define INCLUDE_PROGRAMMING_DEFINE_MEMBERS_H_



#define DEFINE_COPY_COSNTRUCTOR(className) className(const className &rhs)
#define DEFINE_COPY_OPERATOR(className) className & operator=(const className &rhs)
#define DEFINE_MOVE_CONSTRUCTOR(className) className(className &&rhs)
#define DEFINE_MOVE_OPERATOR(className) className & operator=(className &&rhs)


#endif /* INCLUDE_PROGRAMMING_DEFINE_MEMBERS_H_ */
