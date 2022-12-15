**free

ctl-opt dftactgrp(*no);

dcl-pi P2089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1619.rpgleinc'
/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'

dcl-ds theTable extname('T833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T833 LIMIT 1;

theCharVar = 'Hello from P2089';
dsply theCharVar;
callp localProc();
P1619();
P1140();
P984();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2089 in the procedure';
end-proc;