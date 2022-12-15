**free

ctl-opt dftactgrp(*no);

dcl-pi P2953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P2623.rpgleinc'
/copy 'qrpgleref/P2897.rpgleinc'

dcl-ds theTable extname('T129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T129 LIMIT 1;

theCharVar = 'Hello from P2953';
dsply theCharVar;
callp localProc();
P561();
P2623();
P2897();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2953 in the procedure';
end-proc;