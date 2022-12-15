**free

ctl-opt dftactgrp(*no);

dcl-pi P4619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P1797.rpgleinc'

dcl-ds theTable extname('T1626') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1626 LIMIT 1;

theCharVar = 'Hello from P4619';
dsply theCharVar;
callp localProc();
P879();
P541();
P1797();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4619 in the procedure';
end-proc;