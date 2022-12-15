**free

ctl-opt dftactgrp(*no);

dcl-pi P1653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'

dcl-ds theTable extname('T363') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T363 LIMIT 1;

theCharVar = 'Hello from P1653';
dsply theCharVar;
callp localProc();
P440();
P459();
P433();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1653 in the procedure';
end-proc;