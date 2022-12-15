**free

ctl-opt dftactgrp(*no);

dcl-pi P40;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P40';
dsply theCharVar;
callp localProc();
P32();
P5();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P40 in the procedure';
end-proc;