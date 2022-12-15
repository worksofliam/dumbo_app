**free

ctl-opt dftactgrp(*no);

dcl-pi P3915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P728.rpgleinc'
/copy 'qrpgleref/P3589.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'

dcl-ds theTable extname('T1526') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1526 LIMIT 1;

theCharVar = 'Hello from P3915';
dsply theCharVar;
callp localProc();
P728();
P3589();
P950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3915 in the procedure';
end-proc;