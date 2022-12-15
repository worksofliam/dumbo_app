**free

ctl-opt dftactgrp(*no);

dcl-pi P1526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P1179.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds theTable extname('T198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T198 LIMIT 1;

theCharVar = 'Hello from P1526';
dsply theCharVar;
callp localProc();
P647();
P1179();
P256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1526 in the procedure';
end-proc;