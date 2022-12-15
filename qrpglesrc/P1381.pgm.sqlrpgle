**free

ctl-opt dftactgrp(*no);

dcl-pi P1381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P883.rpgleinc'
/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'

dcl-ds theTable extname('T1351') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1351 LIMIT 1;

theCharVar = 'Hello from P1381';
dsply theCharVar;
callp localProc();
P883();
P508();
P215();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1381 in the procedure';
end-proc;