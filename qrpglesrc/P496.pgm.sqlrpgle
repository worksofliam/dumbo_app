**free

ctl-opt dftactgrp(*no);

dcl-pi P496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'

dcl-ds theTable extname('T1845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1845 LIMIT 1;

theCharVar = 'Hello from P496';
dsply theCharVar;
callp localProc();
P76();
P209();
P318();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P496 in the procedure';
end-proc;