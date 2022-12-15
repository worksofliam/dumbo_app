**free

ctl-opt dftactgrp(*no);

dcl-pi P1903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1808.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'
/copy 'qrpgleref/P1535.rpgleinc'

dcl-ds theTable extname('T1119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1119 LIMIT 1;

theCharVar = 'Hello from P1903';
dsply theCharVar;
callp localProc();
P1808();
P974();
P1535();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1903 in the procedure';
end-proc;