**free

ctl-opt dftactgrp(*no);

dcl-pi P2777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P643.rpgleinc'
/copy 'qrpgleref/P2679.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'

dcl-ds theTable extname('T476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T476 LIMIT 1;

theCharVar = 'Hello from P2777';
dsply theCharVar;
callp localProc();
P643();
P2679();
P818();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2777 in the procedure';
end-proc;