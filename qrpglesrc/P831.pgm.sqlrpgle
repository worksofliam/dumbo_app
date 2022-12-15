**free

ctl-opt dftactgrp(*no);

dcl-pi P831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'

dcl-ds theTable extname('T420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T420 LIMIT 1;

theCharVar = 'Hello from P831';
dsply theCharVar;
callp localProc();
P660();
P41();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P831 in the procedure';
end-proc;