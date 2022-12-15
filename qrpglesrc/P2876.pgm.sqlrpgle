**free

ctl-opt dftactgrp(*no);

dcl-pi P2876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P2149.rpgleinc'
/copy 'qrpgleref/P2320.rpgleinc'

dcl-ds theTable extname('T585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T585 LIMIT 1;

theCharVar = 'Hello from P2876';
dsply theCharVar;
callp localProc();
P1700();
P2149();
P2320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2876 in the procedure';
end-proc;