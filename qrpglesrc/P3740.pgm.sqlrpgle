**free

ctl-opt dftactgrp(*no);

dcl-pi P3740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2318.rpgleinc'
/copy 'qrpgleref/P3646.rpgleinc'
/copy 'qrpgleref/P2834.rpgleinc'

dcl-ds theTable extname('T817') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T817 LIMIT 1;

theCharVar = 'Hello from P3740';
dsply theCharVar;
callp localProc();
P2318();
P3646();
P2834();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3740 in the procedure';
end-proc;