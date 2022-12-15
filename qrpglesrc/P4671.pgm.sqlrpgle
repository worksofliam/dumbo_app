**free

ctl-opt dftactgrp(*no);

dcl-pi P4671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1227.rpgleinc'
/copy 'qrpgleref/P4075.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T1319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1319 LIMIT 1;

theCharVar = 'Hello from P4671';
dsply theCharVar;
callp localProc();
P1227();
P4075();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4671 in the procedure';
end-proc;