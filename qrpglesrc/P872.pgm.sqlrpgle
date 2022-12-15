**free

ctl-opt dftactgrp(*no);

dcl-pi P872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'

dcl-ds theTable extname('T1784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1784 LIMIT 1;

theCharVar = 'Hello from P872';
dsply theCharVar;
callp localProc();
P580();
P140();
P407();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P872 in the procedure';
end-proc;