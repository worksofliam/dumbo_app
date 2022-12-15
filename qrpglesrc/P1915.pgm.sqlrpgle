**free

ctl-opt dftactgrp(*no);

dcl-pi P1915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1036.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P1804.rpgleinc'

dcl-ds theTable extname('T1584') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1584 LIMIT 1;

theCharVar = 'Hello from P1915';
dsply theCharVar;
callp localProc();
P1036();
P774();
P1804();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1915 in the procedure';
end-proc;