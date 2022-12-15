**free

ctl-opt dftactgrp(*no);

dcl-pi P3727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2332.rpgleinc'
/copy 'qrpgleref/P1708.rpgleinc'
/copy 'qrpgleref/P2329.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P3727';
dsply theCharVar;
callp localProc();
P2332();
P1708();
P2329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3727 in the procedure';
end-proc;