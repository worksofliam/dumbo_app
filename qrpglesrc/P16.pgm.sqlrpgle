**free

ctl-opt dftactgrp(*no);

dcl-pi P16;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P16';
dsply theCharVar;
callp localProc();
P2();
P1();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P16 in the procedure';
end-proc;