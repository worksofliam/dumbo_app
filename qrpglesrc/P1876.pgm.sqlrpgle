**free

ctl-opt dftactgrp(*no);

dcl-pi P1876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'
/copy 'qrpgleref/P924.rpgleinc'

dcl-ds theTable extname('T1491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1491 LIMIT 1;

theCharVar = 'Hello from P1876';
dsply theCharVar;
callp localProc();
P1135();
P597();
P924();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1876 in the procedure';
end-proc;