**free

ctl-opt dftactgrp(*no);

dcl-pi P1656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P1193.rpgleinc'

dcl-ds theTable extname('T753') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T753 LIMIT 1;

theCharVar = 'Hello from P1656';
dsply theCharVar;
callp localProc();
P497();
P439();
P1193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1656 in the procedure';
end-proc;