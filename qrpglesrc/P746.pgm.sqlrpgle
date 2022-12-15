**free

ctl-opt dftactgrp(*no);

dcl-pi P746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'

dcl-ds theTable extname('T407') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T407 LIMIT 1;

theCharVar = 'Hello from P746';
dsply theCharVar;
callp localProc();
P476();
P637();
P555();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P746 in the procedure';
end-proc;