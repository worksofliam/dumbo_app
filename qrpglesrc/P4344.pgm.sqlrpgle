**free

ctl-opt dftactgrp(*no);

dcl-pi P4344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3368.rpgleinc'
/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P3935.rpgleinc'

dcl-ds theTable extname('T1468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1468 LIMIT 1;

theCharVar = 'Hello from P4344';
dsply theCharVar;
callp localProc();
P3368();
P1874();
P3935();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4344 in the procedure';
end-proc;