**free

ctl-opt dftactgrp(*no);

dcl-pi P2244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P2219.rpgleinc'
/copy 'qrpgleref/P2084.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P2244';
dsply theCharVar;
callp localProc();
P566();
P2219();
P2084();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2244 in the procedure';
end-proc;