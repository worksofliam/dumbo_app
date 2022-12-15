**free

ctl-opt dftactgrp(*no);

dcl-pi P5554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1749.rpgleinc'
/copy 'qrpgleref/P5370.rpgleinc'
/copy 'qrpgleref/P2474.rpgleinc'

dcl-ds theTable extname('T211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T211 LIMIT 1;

theCharVar = 'Hello from P5554';
dsply theCharVar;
callp localProc();
P1749();
P5370();
P2474();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5554 in the procedure';
end-proc;