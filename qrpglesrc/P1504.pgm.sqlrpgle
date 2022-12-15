**free

ctl-opt dftactgrp(*no);

dcl-pi P1504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1152.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T1430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1430 LIMIT 1;

theCharVar = 'Hello from P1504';
dsply theCharVar;
callp localProc();
P1152();
P733();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1504 in the procedure';
end-proc;