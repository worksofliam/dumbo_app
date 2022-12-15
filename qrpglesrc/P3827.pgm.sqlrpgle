**free

ctl-opt dftactgrp(*no);

dcl-pi P3827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'

dcl-ds theTable extname('T1223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1223 LIMIT 1;

theCharVar = 'Hello from P3827';
dsply theCharVar;
callp localProc();
P327();
P583();
P409();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3827 in the procedure';
end-proc;