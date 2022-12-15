**free

ctl-opt dftactgrp(*no);

dcl-pi P2452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1929.rpgleinc'
/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T1760') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1760 LIMIT 1;

theCharVar = 'Hello from P2452';
dsply theCharVar;
callp localProc();
P1929();
P1088();
P143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2452 in the procedure';
end-proc;