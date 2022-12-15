**free

ctl-opt dftactgrp(*no);

dcl-pi P4952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P4190.rpgleinc'

dcl-ds theTable extname('T1034') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1034 LIMIT 1;

theCharVar = 'Hello from P4952';
dsply theCharVar;
callp localProc();
P399();
P146();
P4190();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4952 in the procedure';
end-proc;