**free

ctl-opt dftactgrp(*no);

dcl-pi P3486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1693.rpgleinc'
/copy 'qrpgleref/P2196.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds theTable extname('T1393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1393 LIMIT 1;

theCharVar = 'Hello from P3486';
dsply theCharVar;
callp localProc();
P1693();
P2196();
P86();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3486 in the procedure';
end-proc;