**free

ctl-opt dftactgrp(*no);

dcl-pi P1669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'

dcl-ds T192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T192 FROM T192 LIMIT 1;

theCharVar = 'Hello from P1669';
dsply theCharVar;
callp localProc();
P1034();
P389();
P558();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1669 in the procedure';
end-proc;