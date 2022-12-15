**free

ctl-opt dftactgrp(*no);

dcl-pi P1160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds T1113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1113 FROM T1113 LIMIT 1;

theCharVar = 'Hello from P1160';
dsply theCharVar;
callp localProc();
P646();
P174();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1160 in the procedure';
end-proc;