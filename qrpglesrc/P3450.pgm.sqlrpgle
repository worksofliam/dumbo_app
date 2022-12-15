**free

ctl-opt dftactgrp(*no);

dcl-pi P3450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3297.rpgleinc'
/copy 'qrpgleref/P2168.rpgleinc'
/copy 'qrpgleref/P1510.rpgleinc'

dcl-ds theTable extname('T513') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T513 LIMIT 1;

theCharVar = 'Hello from P3450';
dsply theCharVar;
callp localProc();
P3297();
P2168();
P1510();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3450 in the procedure';
end-proc;