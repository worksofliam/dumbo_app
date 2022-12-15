**free

ctl-opt dftactgrp(*no);

dcl-pi P4985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3235.rpgleinc'
/copy 'qrpgleref/P4856.rpgleinc'
/copy 'qrpgleref/P4562.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P4985';
dsply theCharVar;
callp localProc();
P3235();
P4856();
P4562();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4985 in the procedure';
end-proc;