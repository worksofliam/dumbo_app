**free

ctl-opt dftactgrp(*no);

dcl-pi P666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P666';
dsply theCharVar;
callp localProc();
P537();
P399();
P596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P666 in the procedure';
end-proc;