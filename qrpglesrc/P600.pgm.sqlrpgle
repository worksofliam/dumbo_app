**free

ctl-opt dftactgrp(*no);

dcl-pi P600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P600';
dsply theCharVar;
callp localProc();
P307();
P310();
P339();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P600 in the procedure';
end-proc;