**free

ctl-opt dftactgrp(*no);

dcl-pi P4910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4379.rpgleinc'
/copy 'qrpgleref/P938.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P4910';
dsply theCharVar;
callp localProc();
P4379();
P938();
P1484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4910 in the procedure';
end-proc;