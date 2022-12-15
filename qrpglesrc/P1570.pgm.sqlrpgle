**free

ctl-opt dftactgrp(*no);

dcl-pi P1570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'

dcl-ds theTable extname('T533') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T533 LIMIT 1;

theCharVar = 'Hello from P1570';
dsply theCharVar;
callp localProc();
P17();
P576();
P364();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1570 in the procedure';
end-proc;