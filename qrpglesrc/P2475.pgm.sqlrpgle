**free

ctl-opt dftactgrp(*no);

dcl-pi P2475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1052.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P1490.rpgleinc'

dcl-ds theTable extname('T805') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T805 LIMIT 1;

theCharVar = 'Hello from P2475';
dsply theCharVar;
callp localProc();
P1052();
P408();
P1490();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2475 in the procedure';
end-proc;