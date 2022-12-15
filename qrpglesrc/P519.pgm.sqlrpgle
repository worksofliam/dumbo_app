**free

ctl-opt dftactgrp(*no);

dcl-pi P519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P519';
dsply theCharVar;
callp localProc();
P125();
P393();
P399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P519 in the procedure';
end-proc;