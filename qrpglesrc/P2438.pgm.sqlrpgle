**free

ctl-opt dftactgrp(*no);

dcl-pi P2438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P1241.rpgleinc'

dcl-ds T348 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T348 FROM T348 LIMIT 1;

theCharVar = 'Hello from P2438';
dsply theCharVar;
callp localProc();
P516();
P1192();
P1241();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2438 in the procedure';
end-proc;