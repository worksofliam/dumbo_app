**free

ctl-opt dftactgrp(*no);

dcl-pi P3996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1564.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'

dcl-ds theTable extname('T1579') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1579 LIMIT 1;

theCharVar = 'Hello from P3996';
dsply theCharVar;
callp localProc();
P1564();
P616();
P1126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3996 in the procedure';
end-proc;