**free

ctl-opt dftactgrp(*no);

dcl-pi P983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T564') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T564 LIMIT 1;

theCharVar = 'Hello from P983';
dsply theCharVar;
callp localProc();
P576();
P635();
P393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P983 in the procedure';
end-proc;