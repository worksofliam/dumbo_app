**free

ctl-opt dftactgrp(*no);

dcl-pi P5361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4258.rpgleinc'
/copy 'qrpgleref/P3224.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'

dcl-ds theTable extname('T1026') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1026 LIMIT 1;

theCharVar = 'Hello from P5361';
dsply theCharVar;
callp localProc();
P4258();
P3224();
P1293();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5361 in the procedure';
end-proc;