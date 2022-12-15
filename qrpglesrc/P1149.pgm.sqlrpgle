**free

ctl-opt dftactgrp(*no);

dcl-pi P1149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'

dcl-ds theTable extname('T762') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T762 LIMIT 1;

theCharVar = 'Hello from P1149';
dsply theCharVar;
callp localProc();
P175();
P628();
P608();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1149 in the procedure';
end-proc;