**free

ctl-opt dftactgrp(*no);

dcl-pi P1865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P1004.rpgleinc'

dcl-ds T1247 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1247 FROM T1247 LIMIT 1;

theCharVar = 'Hello from P1865';
dsply theCharVar;
callp localProc();
P174();
P185();
P1004();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1865 in the procedure';
end-proc;