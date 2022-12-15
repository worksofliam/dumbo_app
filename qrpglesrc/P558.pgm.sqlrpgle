**free

ctl-opt dftactgrp(*no);

dcl-pi P558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P478.rpgleinc'

dcl-ds theTable extname('T556') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T556 LIMIT 1;

theCharVar = 'Hello from P558';
dsply theCharVar;
callp localProc();
P224();
P137();
P478();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P558 in the procedure';
end-proc;