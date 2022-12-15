**free

ctl-opt dftactgrp(*no);

dcl-pi P5069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P4077.rpgleinc'

dcl-ds theTable extname('T525') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T525 LIMIT 1;

theCharVar = 'Hello from P5069';
dsply theCharVar;
callp localProc();
P143();
P194();
P4077();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5069 in the procedure';
end-proc;