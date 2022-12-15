**free

ctl-opt dftactgrp(*no);

dcl-pi P1365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds theTable extname('T286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T286 LIMIT 1;

theCharVar = 'Hello from P1365';
dsply theCharVar;
callp localProc();
P848();
P1239();
P597();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1365 in the procedure';
end-proc;