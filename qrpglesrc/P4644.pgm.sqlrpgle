**free

ctl-opt dftactgrp(*no);

dcl-pi P4644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4048.rpgleinc'
/copy 'qrpgleref/P1215.rpgleinc'
/copy 'qrpgleref/P2712.rpgleinc'

dcl-ds theTable extname('T254') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T254 LIMIT 1;

theCharVar = 'Hello from P4644';
dsply theCharVar;
callp localProc();
P4048();
P1215();
P2712();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4644 in the procedure';
end-proc;