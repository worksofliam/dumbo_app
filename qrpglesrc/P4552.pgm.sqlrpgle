**free

ctl-opt dftactgrp(*no);

dcl-pi P4552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3208.rpgleinc'
/copy 'qrpgleref/P4500.rpgleinc'
/copy 'qrpgleref/P2251.rpgleinc'

dcl-ds theTable extname('T1073') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1073 LIMIT 1;

theCharVar = 'Hello from P4552';
dsply theCharVar;
callp localProc();
P3208();
P4500();
P2251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4552 in the procedure';
end-proc;