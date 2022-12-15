**free

ctl-opt dftactgrp(*no);

dcl-pi P693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds theTable extname('T1150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1150 LIMIT 1;

theCharVar = 'Hello from P693';
dsply theCharVar;
callp localProc();
P20();
P597();
P678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P693 in the procedure';
end-proc;