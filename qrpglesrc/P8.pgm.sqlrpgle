**free

ctl-opt dftactgrp(*no);

dcl-pi P8;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P8';
dsply theCharVar;
callp localProc();
P2();
P1();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P8 in the procedure';
end-proc;