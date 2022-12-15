**free

ctl-opt dftactgrp(*no);

dcl-pi P1739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P1681.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P1739';
dsply theCharVar;
callp localProc();
P24();
P70();
P1681();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1739 in the procedure';
end-proc;