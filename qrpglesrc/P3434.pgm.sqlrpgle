**free

ctl-opt dftactgrp(*no);

dcl-pi P3434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2545.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P1606.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P3434';
dsply theCharVar;
callp localProc();
P2545();
P159();
P1606();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3434 in the procedure';
end-proc;