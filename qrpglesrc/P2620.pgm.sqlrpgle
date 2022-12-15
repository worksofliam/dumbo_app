**free

ctl-opt dftactgrp(*no);

dcl-pi P2620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1754.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'

dcl-ds theTable extname('T790') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T790 LIMIT 1;

theCharVar = 'Hello from P2620';
dsply theCharVar;
callp localProc();
P1754();
P900();
P454();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2620 in the procedure';
end-proc;