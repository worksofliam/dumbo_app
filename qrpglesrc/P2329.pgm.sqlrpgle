**free

ctl-opt dftactgrp(*no);

dcl-pi P2329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P1757.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds theTable extname('T707') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T707 LIMIT 1;

theCharVar = 'Hello from P2329';
dsply theCharVar;
callp localProc();
P307();
P1757();
P1042();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2329 in the procedure';
end-proc;