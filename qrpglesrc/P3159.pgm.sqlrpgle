**free

ctl-opt dftactgrp(*no);

dcl-pi P3159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3091.rpgleinc'
/copy 'qrpgleref/P2665.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'

dcl-ds theTable extname('T1144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1144 LIMIT 1;

theCharVar = 'Hello from P3159';
dsply theCharVar;
callp localProc();
P3091();
P2665();
P1011();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3159 in the procedure';
end-proc;