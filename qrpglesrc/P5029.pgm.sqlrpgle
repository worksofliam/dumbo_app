**free

ctl-opt dftactgrp(*no);

dcl-pi P5029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P965.rpgleinc'
/copy 'qrpgleref/P2882.rpgleinc'
/copy 'qrpgleref/P4069.rpgleinc'

dcl-ds theTable extname('T1166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1166 LIMIT 1;

theCharVar = 'Hello from P5029';
dsply theCharVar;
callp localProc();
P965();
P2882();
P4069();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5029 in the procedure';
end-proc;