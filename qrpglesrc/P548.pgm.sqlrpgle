**free

ctl-opt dftactgrp(*no);

dcl-pi P548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P548';
dsply theCharVar;
callp localProc();
P321();
P170();
P397();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P548 in the procedure';
end-proc;