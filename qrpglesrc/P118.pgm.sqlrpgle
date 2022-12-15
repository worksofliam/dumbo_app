**free

ctl-opt dftactgrp(*no);

dcl-pi P118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P118';
dsply theCharVar;
callp localProc();
P1();
P45();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P118 in the procedure';
end-proc;