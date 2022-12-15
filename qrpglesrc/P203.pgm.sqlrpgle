**free

ctl-opt dftactgrp(*no);

dcl-pi P203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P203';
dsply theCharVar;
callp localProc();
P120();
P165();
P21();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P203 in the procedure';
end-proc;