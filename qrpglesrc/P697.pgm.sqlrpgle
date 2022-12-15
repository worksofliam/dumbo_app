**free

ctl-opt dftactgrp(*no);

dcl-pi P697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds theTable extname('T1200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1200 LIMIT 1;

theCharVar = 'Hello from P697';
dsply theCharVar;
callp localProc();
P632();
P459();
P507();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P697 in the procedure';
end-proc;