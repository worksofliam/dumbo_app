**free

ctl-opt dftactgrp(*no);

dcl-pi P3376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3179.rpgleinc'
/copy 'qrpgleref/P2433.rpgleinc'
/copy 'qrpgleref/P2013.rpgleinc'

dcl-ds theTable extname('T793') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T793 LIMIT 1;

theCharVar = 'Hello from P3376';
dsply theCharVar;
callp localProc();
P3179();
P2433();
P2013();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3376 in the procedure';
end-proc;