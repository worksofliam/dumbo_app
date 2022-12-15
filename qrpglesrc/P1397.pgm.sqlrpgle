**free

ctl-opt dftactgrp(*no);

dcl-pi P1397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'

dcl-ds theTable extname('T1676') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1676 LIMIT 1;

theCharVar = 'Hello from P1397';
dsply theCharVar;
callp localProc();
P40();
P615();
P913();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1397 in the procedure';
end-proc;