**free

ctl-opt dftactgrp(*no);

dcl-pi P2629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P1972.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P2629';
dsply theCharVar;
callp localProc();
P44();
P1972();
P768();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2629 in the procedure';
end-proc;