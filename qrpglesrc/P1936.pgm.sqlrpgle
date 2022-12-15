**free

ctl-opt dftactgrp(*no);

dcl-pi P1936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'

dcl-ds theTable extname('T1132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1132 LIMIT 1;

theCharVar = 'Hello from P1936';
dsply theCharVar;
callp localProc();
P36();
P772();
P933();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1936 in the procedure';
end-proc;