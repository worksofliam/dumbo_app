**free

ctl-opt dftactgrp(*no);

dcl-pi P2393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2310.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds theTable extname('T997') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T997 LIMIT 1;

theCharVar = 'Hello from P2393';
dsply theCharVar;
callp localProc();
P2310();
P1423();
P524();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2393 in the procedure';
end-proc;