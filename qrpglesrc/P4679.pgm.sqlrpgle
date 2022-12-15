**free

ctl-opt dftactgrp(*no);

dcl-pi P4679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3931.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P4170.rpgleinc'

dcl-ds theTable extname('T335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T335 LIMIT 1;

theCharVar = 'Hello from P4679';
dsply theCharVar;
callp localProc();
P3931();
P1184();
P4170();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4679 in the procedure';
end-proc;