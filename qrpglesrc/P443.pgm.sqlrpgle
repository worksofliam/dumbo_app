**free

ctl-opt dftactgrp(*no);

dcl-pi P443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T1806') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1806 LIMIT 1;

theCharVar = 'Hello from P443';
dsply theCharVar;
callp localProc();
P234();
P390();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P443 in the procedure';
end-proc;