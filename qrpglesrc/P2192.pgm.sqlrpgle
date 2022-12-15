**free

ctl-opt dftactgrp(*no);

dcl-pi P2192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2103.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'

dcl-ds theTable extname('T105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T105 LIMIT 1;

theCharVar = 'Hello from P2192';
dsply theCharVar;
callp localProc();
P2103();
P580();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2192 in the procedure';
end-proc;