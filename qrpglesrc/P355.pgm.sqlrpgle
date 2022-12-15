**free

ctl-opt dftactgrp(*no);

dcl-pi P355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T1492') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1492 LIMIT 1;

theCharVar = 'Hello from P355';
dsply theCharVar;
callp localProc();
P235();
P80();
P277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P355 in the procedure';
end-proc;