**free

ctl-opt dftactgrp(*no);

dcl-pi P5342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4574.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'
/copy 'qrpgleref/P4236.rpgleinc'

dcl-ds theTable extname('T1563') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1563 LIMIT 1;

theCharVar = 'Hello from P5342';
dsply theCharVar;
callp localProc();
P4574();
P1212();
P4236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5342 in the procedure';
end-proc;