**free

ctl-opt dftactgrp(*no);

dcl-pi P5164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3333.rpgleinc'
/copy 'qrpgleref/P2213.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'

dcl-ds theTable extname('T1726') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1726 LIMIT 1;

theCharVar = 'Hello from P5164';
dsply theCharVar;
callp localProc();
P3333();
P2213();
P1499();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5164 in the procedure';
end-proc;