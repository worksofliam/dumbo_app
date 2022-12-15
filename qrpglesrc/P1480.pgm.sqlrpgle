**free

ctl-opt dftactgrp(*no);

dcl-pi P1480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P1480';
dsply theCharVar;
callp localProc();
P95();
P220();
P950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1480 in the procedure';
end-proc;