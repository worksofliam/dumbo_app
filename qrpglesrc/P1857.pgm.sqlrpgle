**free

ctl-opt dftactgrp(*no);

dcl-pi P1857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P986.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds theTable extname('T788') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T788 LIMIT 1;

theCharVar = 'Hello from P1857';
dsply theCharVar;
callp localProc();
P986();
P30();
P86();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1857 in the procedure';
end-proc;