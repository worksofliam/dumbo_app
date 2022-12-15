**free

ctl-opt dftactgrp(*no);

dcl-pi P1862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1748.rpgleinc'
/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds theTable extname('T1355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1355 LIMIT 1;

theCharVar = 'Hello from P1862';
dsply theCharVar;
callp localProc();
P1748();
P1259();
P246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1862 in the procedure';
end-proc;