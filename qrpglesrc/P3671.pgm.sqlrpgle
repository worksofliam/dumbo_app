**free

ctl-opt dftactgrp(*no);

dcl-pi P3671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1881.rpgleinc'
/copy 'qrpgleref/P3233.rpgleinc'
/copy 'qrpgleref/P1796.rpgleinc'

dcl-ds theTable extname('T1133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1133 LIMIT 1;

theCharVar = 'Hello from P3671';
dsply theCharVar;
callp localProc();
P1881();
P3233();
P1796();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3671 in the procedure';
end-proc;