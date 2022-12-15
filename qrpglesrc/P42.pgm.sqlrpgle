**free

ctl-opt dftactgrp(*no);

dcl-pi P42;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T1514') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1514 LIMIT 1;

theCharVar = 'Hello from P42';
dsply theCharVar;
callp localProc();
P15();
P27();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P42 in the procedure';
end-proc;