**free

ctl-opt dftactgrp(*no);

dcl-pi P1869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P1356.rpgleinc'

dcl-ds theTable extname('T874') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T874 LIMIT 1;

theCharVar = 'Hello from P1869';
dsply theCharVar;
callp localProc();
P225();
P362();
P1356();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1869 in the procedure';
end-proc;