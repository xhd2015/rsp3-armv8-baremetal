/*
 * define_members.h
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PROGRAMMING_DEFINE_MEMBERS_H_
#define INCLUDE_PROGRAMMING_DEFINE_MEMBERS_H_



#define DEFINE_COPY_CONSTRUCTOR(className) className(const className &rhs)
#define DEFINE_COPY_OPERATOR(className) className & operator=(const className &rhs)
#define DEFINE_MOVE_CONSTRUCTOR(className) className(className &&rhs)
#define DEFINE_MOVE_OPERATOR(className) className & operator=(className &&rhs)
#define DELETE_COPY(className) DEFINE_COPY_CONSTRUCTOR(className)=delete; \
                               DEFINE_COPY_OPERATOR(className)=delete
#define DELETE_MOVE(className) DEFINE_MOVE_CONSTRUCTOR(className)=delete; \
                               DEFINE_MOVE_OPERATOR(className)=delete
#define DEFINE_MOVE(className) DEFINE_COPY_CONSTRUCTOR(className);\
                               DEFINE_MOVE_OPERATOR(className)


#endif /* INCLUDE_PROGRAMMING_DEFINE_MEMBERS_H_ */
