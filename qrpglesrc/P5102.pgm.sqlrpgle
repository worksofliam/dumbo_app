**free

ctl-opt dftactgrp(*no);

dcl-pi P5102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4591.rpgleinc'
/copy 'qrpgleref/P3730.rpgleinc'
/copy 'qrpgleref/P2955.rpgleinc'

dcl-ds theTable extname('T1022') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1022 LIMIT 1;

theCharVar = 'Hello from P5102';
dsply theCharVar;
callp localProc();
P4591();
P3730();
P2955();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5102 in the procedure';
end-proc;