**free

ctl-opt dftactgrp(*no);

dcl-pi P4078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2590.rpgleinc'
/copy 'qrpgleref/P1651.rpgleinc'
/copy 'qrpgleref/P2269.rpgleinc'

dcl-ds theTable extname('T287') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T287 LIMIT 1;

theCharVar = 'Hello from P4078';
dsply theCharVar;
callp localProc();
P2590();
P1651();
P2269();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4078 in the procedure';
end-proc;