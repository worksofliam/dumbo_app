**free

ctl-opt dftactgrp(*no);

dcl-pi P4476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3332.rpgleinc'
/copy 'qrpgleref/P2337.rpgleinc'
/copy 'qrpgleref/P1501.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P4476';
dsply theCharVar;
callp localProc();
P3332();
P2337();
P1501();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4476 in the procedure';
end-proc;