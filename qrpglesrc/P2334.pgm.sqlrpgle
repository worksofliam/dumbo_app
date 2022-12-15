**free

ctl-opt dftactgrp(*no);

dcl-pi P2334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P2334';
dsply theCharVar;
callp localProc();
P1901();
P595();
P426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2334 in the procedure';
end-proc;