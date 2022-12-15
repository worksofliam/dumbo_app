**free

ctl-opt dftactgrp(*no);

dcl-pi P1686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1062.rpgleinc'
/copy 'qrpgleref/P1541.rpgleinc'
/copy 'qrpgleref/P1064.rpgleinc'

dcl-ds theTable extname('T486') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T486 LIMIT 1;

theCharVar = 'Hello from P1686';
dsply theCharVar;
callp localProc();
P1062();
P1541();
P1064();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1686 in the procedure';
end-proc;