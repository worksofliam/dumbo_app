**free

ctl-opt dftactgrp(*no);

dcl-pi P320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'

dcl-ds theTable extname('T977') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T977 LIMIT 1;

theCharVar = 'Hello from P320';
dsply theCharVar;
callp localProc();
P290();
P91();
P287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P320 in the procedure';
end-proc;