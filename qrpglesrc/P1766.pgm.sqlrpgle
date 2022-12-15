**free

ctl-opt dftactgrp(*no);

dcl-pi P1766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'

dcl-ds theTable extname('T1105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1105 LIMIT 1;

theCharVar = 'Hello from P1766';
dsply theCharVar;
callp localProc();
P233();
P1660();
P922();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1766 in the procedure';
end-proc;