**free

ctl-opt dftactgrp(*no);

dcl-pi P1102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P1013.rpgleinc'

dcl-ds theTable extname('T831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T831 LIMIT 1;

theCharVar = 'Hello from P1102';
dsply theCharVar;
callp localProc();
P165();
P411();
P1013();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1102 in the procedure';
end-proc;