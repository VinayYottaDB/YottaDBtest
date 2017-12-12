/****************************************************************
 *								*
 * Copyright (c) 2017 YottaDB LLC. and/or its subsidiaries.	*
 * All rights reserved.						*
 *								*
 *	This source code contains the intellectual property	*
 *	of its copyright holder(s), and is made available	*
 *	under a license.  If you do not know the terms of	*
 *	the license, please stop and do not read further.	*
 *								*
 ****************************************************************/

#include "libyottadb.h"

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <signal.h>
#include <string.h>

#define	YDB_EOF		0
#define	YDB_SET_S	1

#define assert(x) ((x) ? 1 : (fprintf(stderr, "Assert failed at %s line %d : %s\n", __FILE__, __LINE__, #x), kill(getpid(), SIGQUIT)))

int	fullread(char *buff, int len);

/* Read "len" bytes. If "read()" system call returns less than "len", keep retrying until we have "len" bytes */
int	fullread(char *buff, int len)
{
	int	toread = len, cnt;
	char	*ptr = buff;

	do
	{
		cnt = read(0, ptr, toread);
		assert(cnt > 0);
		toread -= cnt;
		ptr += cnt;
	} while (toread);
	return len;
}

int main()
{
	int		i, status, bufflen = 0, reclen, varnamelen, nsubs, valuelen, len, action;
	ydb_buffer_t	basevar, subscr[32], value;
	char		hdrbuff[8], *buff, *ptr;
	ssize_t		cnt;
	ydb_string_t	zwrarg;
	int		process_id = getpid();

	for ( ; ; )
	{
		cnt = fullread(hdrbuff, 8);
		assert(8 == cnt);
		reclen = *(int *)hdrbuff;
		if (reclen > bufflen)
		{
			if (0 != bufflen)
				free(buff);
			bufflen = reclen;
			buff = malloc(reclen * 2);
			assert(NULL != buff);
		}
		action = *(int *)(hdrbuff + 4);
		if (YDB_EOF == action)
			break;
		assert(YDB_SET_S == action);	/* for now only ydb_set_s is supported; more as other ydb_*_s functions are ready */
		cnt = fullread(buff, reclen);
		assert(cnt == reclen);
		ptr = buff;
		varnamelen = *(int *)buff;
		ptr += 4;
		basevar.buf_addr = ptr;
		basevar.len_used = varnamelen;
		ptr += varnamelen;
		nsubs = *(int *)ptr;
		ptr += 4;
		assert(32 > nsubs);
		for (i = 0; i < nsubs; i++)
		{
			len = *(int *)ptr;
			ptr += 4;
			subscr[i].buf_addr = ptr;
			subscr[i].len_used = len;
			ptr += len;
		}
		valuelen = *(int *)ptr;
		ptr += 4;
		value.buf_addr = ptr;
		value.len_used = valuelen;
		ptr += valuelen;
		/* Now do the set. Since we don't know the # of subscripts, we code it for the max # = 32 */
		status = ydb_set_s(&value, nsubs, &basevar,
				&subscr[0], &subscr[1], &subscr[2], &subscr[3],
				&subscr[4], &subscr[5], &subscr[6], &subscr[7],
				&subscr[8], &subscr[9], &subscr[10], &subscr[11],
				&subscr[12], &subscr[13], &subscr[14], &subscr[15],
				&subscr[16], &subscr[17], &subscr[18], &subscr[19],
				&subscr[20], &subscr[21], &subscr[22], &subscr[23],
				&subscr[24], &subscr[25], &subscr[26], &subscr[27],
				&subscr[28], &subscr[29], &subscr[30], &subscr[31]);
		assert(YDB_OK == status);
	}
	/* Demonstrate our progress by executing a ZWRITE in a call-in */
	zwrarg.address = NULL;
	zwrarg.length = 0;
	status = ydb_ci("driveZWRITE", &zwrarg);
	assert(0 == status);
	return 0;
}