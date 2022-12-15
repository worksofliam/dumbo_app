**free

ctl-opt dftactgrp(*no);

dcl-pi P972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'

dcl-ds theTable extname('T1781') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1781 LIMIT 1;

theCharVar = 'Hello from P972';
dsply theCharVar;
callp localProc();
P311();
P100();
P664();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P972 in the procedure';
end-proc;