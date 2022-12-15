**free

ctl-opt dftactgrp(*no);

dcl-pi P3098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2900.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds T936 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T936 FROM T936 LIMIT 1;

theCharVar = 'Hello from P3098';
dsply theCharVar;
callp localProc();
P2900();
P401();
P257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3098 in the procedure';
end-proc;