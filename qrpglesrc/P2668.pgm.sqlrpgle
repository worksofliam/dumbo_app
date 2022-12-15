**free

ctl-opt dftactgrp(*no);

dcl-pi P2668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P1377.rpgleinc'

dcl-ds theTable extname('T280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T280 LIMIT 1;

theCharVar = 'Hello from P2668';
dsply theCharVar;
callp localProc();
P893();
P1151();
P1377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2668 in the procedure';
end-proc;