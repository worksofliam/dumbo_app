**free

ctl-opt dftactgrp(*no);

dcl-pi P13;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T1016') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1016 LIMIT 1;

theCharVar = 'Hello from P13';
dsply theCharVar;
callp localProc();
P1();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P13 in the procedure';
end-proc;