**free

ctl-opt dftactgrp(*no);

dcl-pi P1113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds theTable extname('T1131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1131 LIMIT 1;

theCharVar = 'Hello from P1113';
dsply theCharVar;
callp localProc();
P583();
P657();
P537();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1113 in the procedure';
end-proc;