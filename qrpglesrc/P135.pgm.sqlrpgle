**free

ctl-opt dftactgrp(*no);

dcl-pi P135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'

dcl-ds theTable extname('T239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T239 LIMIT 1;

theCharVar = 'Hello from P135';
dsply theCharVar;
callp localProc();
P7();
P129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P135 in the procedure';
end-proc;