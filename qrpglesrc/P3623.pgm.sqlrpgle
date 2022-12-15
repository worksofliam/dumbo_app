**free

ctl-opt dftactgrp(*no);

dcl-pi P3623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P3225.rpgleinc'
/copy 'qrpgleref/P2039.rpgleinc'

dcl-ds theTable extname('T682') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T682 LIMIT 1;

theCharVar = 'Hello from P3623';
dsply theCharVar;
callp localProc();
P147();
P3225();
P2039();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3623 in the procedure';
end-proc;