**free

ctl-opt dftactgrp(*no);

dcl-pi P1462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T1646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1646 LIMIT 1;

theCharVar = 'Hello from P1462';
dsply theCharVar;
callp localProc();
P835();
P267();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1462 in the procedure';
end-proc;