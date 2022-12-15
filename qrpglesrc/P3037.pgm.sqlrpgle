**free

ctl-opt dftactgrp(*no);

dcl-pi P3037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2061.rpgleinc'
/copy 'qrpgleref/P2809.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'

dcl-ds theTable extname('T744') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T744 LIMIT 1;

theCharVar = 'Hello from P3037';
dsply theCharVar;
callp localProc();
P2061();
P2809();
P744();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3037 in the procedure';
end-proc;