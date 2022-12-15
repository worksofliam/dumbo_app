**free

ctl-opt dftactgrp(*no);

dcl-pi P2532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P1780.rpgleinc'
/copy 'qrpgleref/P2346.rpgleinc'

dcl-ds theTable extname('T293') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T293 LIMIT 1;

theCharVar = 'Hello from P2532';
dsply theCharVar;
callp localProc();
P423();
P1780();
P2346();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2532 in the procedure';
end-proc;