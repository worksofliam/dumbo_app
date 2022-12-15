**free

ctl-opt dftactgrp(*no);

dcl-pi P4151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P2343.rpgleinc'
/copy 'qrpgleref/P3888.rpgleinc'

dcl-ds theTable extname('T1510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1510 LIMIT 1;

theCharVar = 'Hello from P4151';
dsply theCharVar;
callp localProc();
P1239();
P2343();
P3888();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4151 in the procedure';
end-proc;