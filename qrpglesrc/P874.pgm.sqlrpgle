**free

ctl-opt dftactgrp(*no);

dcl-pi P874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P570.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'

dcl-ds theTable extname('T583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T583 LIMIT 1;

theCharVar = 'Hello from P874';
dsply theCharVar;
callp localProc();
P570();
P147();
P452();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P874 in the procedure';
end-proc;