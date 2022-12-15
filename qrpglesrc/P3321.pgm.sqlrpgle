**free

ctl-opt dftactgrp(*no);

dcl-pi P3321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P2983.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P3321';
dsply theCharVar;
callp localProc();
P689();
P935();
P2983();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3321 in the procedure';
end-proc;