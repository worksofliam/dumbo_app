**free

ctl-opt dftactgrp(*no);

dcl-pi P2489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1665.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P2361.rpgleinc'

dcl-ds theTable extname('T937') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T937 LIMIT 1;

theCharVar = 'Hello from P2489';
dsply theCharVar;
callp localProc();
P1665();
P151();
P2361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2489 in the procedure';
end-proc;