**free

ctl-opt dftactgrp(*no);

dcl-pi P1385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1000.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'

dcl-ds theTable extname('T721') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T721 LIMIT 1;

theCharVar = 'Hello from P1385';
dsply theCharVar;
callp localProc();
P1000();
P1051();
P825();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1385 in the procedure';
end-proc;