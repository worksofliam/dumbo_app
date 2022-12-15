**free

ctl-opt dftactgrp(*no);

dcl-pi P2473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1974.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P1634.rpgleinc'

dcl-ds theTable extname('T982') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T982 LIMIT 1;

theCharVar = 'Hello from P2473';
dsply theCharVar;
callp localProc();
P1974();
P228();
P1634();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2473 in the procedure';
end-proc;