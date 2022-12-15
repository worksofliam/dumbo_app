**free

ctl-opt dftactgrp(*no);

dcl-pi P3145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P2171.rpgleinc'
/copy 'qrpgleref/P943.rpgleinc'

dcl-ds theTable extname('T703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T703 LIMIT 1;

theCharVar = 'Hello from P3145';
dsply theCharVar;
callp localProc();
P925();
P2171();
P943();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3145 in the procedure';
end-proc;