**free

ctl-opt dftactgrp(*no);

dcl-pi P3035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2608.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P2886.rpgleinc'

dcl-ds T1224 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1224 FROM T1224 LIMIT 1;

theCharVar = 'Hello from P3035';
dsply theCharVar;
callp localProc();
P2608();
P1135();
P2886();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3035 in the procedure';
end-proc;