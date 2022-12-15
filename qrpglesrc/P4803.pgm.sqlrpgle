**free

ctl-opt dftactgrp(*no);

dcl-pi P4803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3855.rpgleinc'
/copy 'qrpgleref/P4255.rpgleinc'
/copy 'qrpgleref/P821.rpgleinc'

dcl-ds theTable extname('T1040') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1040 LIMIT 1;

theCharVar = 'Hello from P4803';
dsply theCharVar;
callp localProc();
P3855();
P4255();
P821();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4803 in the procedure';
end-proc;