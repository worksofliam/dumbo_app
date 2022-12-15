**free

ctl-opt dftactgrp(*no);

dcl-pi P1351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P1346.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P1351';
dsply theCharVar;
callp localProc();
P339();
P1346();
P602();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1351 in the procedure';
end-proc;