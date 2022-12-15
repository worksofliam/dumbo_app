**free

ctl-opt dftactgrp(*no);

dcl-pi P3479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3315.rpgleinc'
/copy 'qrpgleref/P3145.rpgleinc'
/copy 'qrpgleref/P2730.rpgleinc'

dcl-ds theTable extname('T414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T414 LIMIT 1;

theCharVar = 'Hello from P3479';
dsply theCharVar;
callp localProc();
P3315();
P3145();
P2730();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3479 in the procedure';
end-proc;