**free

ctl-opt dftactgrp(*no);

dcl-pi P4287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P3980.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'

dcl-ds theTable extname('T1733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1733 LIMIT 1;

theCharVar = 'Hello from P4287';
dsply theCharVar;
callp localProc();
P1333();
P3980();
P900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4287 in the procedure';
end-proc;