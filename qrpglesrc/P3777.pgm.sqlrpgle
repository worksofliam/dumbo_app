**free

ctl-opt dftactgrp(*no);

dcl-pi P3777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T588') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T588 LIMIT 1;

theCharVar = 'Hello from P3777';
dsply theCharVar;
callp localProc();
P407();
P21();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3777 in the procedure';
end-proc;