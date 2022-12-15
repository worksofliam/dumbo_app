**free

ctl-opt dftactgrp(*no);

dcl-pi P913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'

dcl-ds theTable extname('T979') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T979 LIMIT 1;

theCharVar = 'Hello from P913';
dsply theCharVar;
callp localProc();
P107();
P780();
P471();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P913 in the procedure';
end-proc;