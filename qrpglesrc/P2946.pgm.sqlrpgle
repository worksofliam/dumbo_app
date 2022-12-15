**free

ctl-opt dftactgrp(*no);

dcl-pi P2946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2709.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P2198.rpgleinc'

dcl-ds theTable extname('T1224') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1224 LIMIT 1;

theCharVar = 'Hello from P2946';
dsply theCharVar;
callp localProc();
P2709();
P471();
P2198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2946 in the procedure';
end-proc;