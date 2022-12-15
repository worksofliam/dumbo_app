**free

ctl-opt dftactgrp(*no);

dcl-pi P2868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2630.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'

dcl-ds theTable extname('T160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T160 LIMIT 1;

theCharVar = 'Hello from P2868';
dsply theCharVar;
callp localProc();
P2630();
P723();
P225();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2868 in the procedure';
end-proc;