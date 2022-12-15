**free

ctl-opt dftactgrp(*no);

dcl-pi P2061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1996.rpgleinc'
/copy 'qrpgleref/P1969.rpgleinc'
/copy 'qrpgleref/P1496.rpgleinc'

dcl-ds theTable extname('T822') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T822 LIMIT 1;

theCharVar = 'Hello from P2061';
dsply theCharVar;
callp localProc();
P1996();
P1969();
P1496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2061 in the procedure';
end-proc;