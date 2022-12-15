**free

ctl-opt dftactgrp(*no);

dcl-pi P4364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2673.rpgleinc'
/copy 'qrpgleref/P3855.rpgleinc'
/copy 'qrpgleref/P1773.rpgleinc'

dcl-ds theTable extname('T1201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1201 LIMIT 1;

theCharVar = 'Hello from P4364';
dsply theCharVar;
callp localProc();
P2673();
P3855();
P1773();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4364 in the procedure';
end-proc;