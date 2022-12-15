**free

ctl-opt dftactgrp(*no);

dcl-pi P5620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2807.rpgleinc'
/copy 'qrpgleref/P4955.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'

dcl-ds theTable extname('T467') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T467 LIMIT 1;

theCharVar = 'Hello from P5620';
dsply theCharVar;
callp localProc();
P2807();
P4955();
P741();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5620 in the procedure';
end-proc;