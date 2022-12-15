**free

ctl-opt dftactgrp(*no);

dcl-pi P3329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P1621.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'

dcl-ds theTable extname('T408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T408 LIMIT 1;

theCharVar = 'Hello from P3329';
dsply theCharVar;
callp localProc();
P393();
P1621();
P893();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3329 in the procedure';
end-proc;