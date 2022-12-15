**free

ctl-opt dftactgrp(*no);

dcl-pi P296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T1165') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1165 LIMIT 1;

theCharVar = 'Hello from P296';
dsply theCharVar;
callp localProc();
P56();
P134();
P176();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P296 in the procedure';
end-proc;