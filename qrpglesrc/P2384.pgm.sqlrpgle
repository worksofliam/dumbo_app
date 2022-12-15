**free

ctl-opt dftactgrp(*no);

dcl-pi P2384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P2317.rpgleinc'
/copy 'qrpgleref/P1486.rpgleinc'

dcl-ds theTable extname('T115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T115 LIMIT 1;

theCharVar = 'Hello from P2384';
dsply theCharVar;
callp localProc();
P549();
P2317();
P1486();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2384 in the procedure';
end-proc;