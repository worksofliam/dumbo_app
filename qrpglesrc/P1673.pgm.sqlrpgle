**free

ctl-opt dftactgrp(*no);

dcl-pi P1673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P954.rpgleinc'
/copy 'qrpgleref/P1044.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P1673';
dsply theCharVar;
callp localProc();
P954();
P1044();
P357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1673 in the procedure';
end-proc;