**free

ctl-opt dftactgrp(*no);

dcl-pi P2296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1774.rpgleinc'
/copy 'qrpgleref/P2238.rpgleinc'
/copy 'qrpgleref/P1747.rpgleinc'

dcl-ds theTable extname('T940') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T940 LIMIT 1;

theCharVar = 'Hello from P2296';
dsply theCharVar;
callp localProc();
P1774();
P2238();
P1747();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2296 in the procedure';
end-proc;