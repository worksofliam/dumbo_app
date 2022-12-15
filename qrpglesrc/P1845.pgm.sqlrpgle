**free

ctl-opt dftactgrp(*no);

dcl-pi P1845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1202.rpgleinc'
/copy 'qrpgleref/P1442.rpgleinc'
/copy 'qrpgleref/P1322.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P1845';
dsply theCharVar;
callp localProc();
P1202();
P1442();
P1322();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1845 in the procedure';
end-proc;