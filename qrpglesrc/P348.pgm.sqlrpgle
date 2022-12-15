**free

ctl-opt dftactgrp(*no);

dcl-pi P348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P348';
dsply theCharVar;
callp localProc();
P294();
P92();
P321();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P348 in the procedure';
end-proc;