**free

ctl-opt dftactgrp(*no);

dcl-pi P2945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1636.rpgleinc'
/copy 'qrpgleref/P2039.rpgleinc'
/copy 'qrpgleref/P2062.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P2945';
dsply theCharVar;
callp localProc();
P1636();
P2039();
P2062();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2945 in the procedure';
end-proc;