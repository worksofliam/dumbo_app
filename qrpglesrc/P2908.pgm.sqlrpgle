**free

ctl-opt dftactgrp(*no);

dcl-pi P2908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1307.rpgleinc'
/copy 'qrpgleref/P2812.rpgleinc'
/copy 'qrpgleref/P1190.rpgleinc'

dcl-ds theTable extname('T12') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T12 LIMIT 1;

theCharVar = 'Hello from P2908';
dsply theCharVar;
callp localProc();
P1307();
P2812();
P1190();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2908 in the procedure';
end-proc;