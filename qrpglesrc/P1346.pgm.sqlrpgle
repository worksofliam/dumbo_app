**free

ctl-opt dftactgrp(*no);

dcl-pi P1346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds theTable extname('T714') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T714 LIMIT 1;

theCharVar = 'Hello from P1346';
dsply theCharVar;
callp localProc();
P45();
P379();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1346 in the procedure';
end-proc;