**free

ctl-opt dftactgrp(*no);

dcl-pi P4240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3767.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P2159.rpgleinc'

dcl-ds T938 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T938 FROM T938 LIMIT 1;

theCharVar = 'Hello from P4240';
dsply theCharVar;
callp localProc();
P3767();
P1660();
P2159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4240 in the procedure';
end-proc;