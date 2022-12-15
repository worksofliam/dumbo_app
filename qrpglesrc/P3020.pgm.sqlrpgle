**free

ctl-opt dftactgrp(*no);

dcl-pi P3020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2337.rpgleinc'
/copy 'qrpgleref/P1141.rpgleinc'
/copy 'qrpgleref/P1201.rpgleinc'

dcl-ds theTable extname('T1823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1823 LIMIT 1;

theCharVar = 'Hello from P3020';
dsply theCharVar;
callp localProc();
P2337();
P1141();
P1201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3020 in the procedure';
end-proc;