**free

ctl-opt dftactgrp(*no);

dcl-pi P1424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1230.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds theTable extname('T407') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T407 LIMIT 1;

theCharVar = 'Hello from P1424';
dsply theCharVar;
callp localProc();
P1230();
P1169();
P1019();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1424 in the procedure';
end-proc;