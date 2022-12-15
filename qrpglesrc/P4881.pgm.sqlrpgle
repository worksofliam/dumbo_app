**free

ctl-opt dftactgrp(*no);

dcl-pi P4881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'
/copy 'qrpgleref/P3716.rpgleinc'

dcl-ds theTable extname('T1685') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1685 LIMIT 1;

theCharVar = 'Hello from P4881';
dsply theCharVar;
callp localProc();
P114();
P649();
P3716();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4881 in the procedure';
end-proc;