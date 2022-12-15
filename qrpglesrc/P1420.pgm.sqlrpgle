**free

ctl-opt dftactgrp(*no);

dcl-pi P1420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P758.rpgleinc'
/copy 'qrpgleref/P520.rpgleinc'

dcl-ds theTable extname('T905') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T905 LIMIT 1;

theCharVar = 'Hello from P1420';
dsply theCharVar;
callp localProc();
P91();
P758();
P520();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1420 in the procedure';
end-proc;