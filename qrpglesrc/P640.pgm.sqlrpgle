**free

ctl-opt dftactgrp(*no);

dcl-pi P640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P600.rpgleinc'

dcl-ds theTable extname('T1184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1184 LIMIT 1;

theCharVar = 'Hello from P640';
dsply theCharVar;
callp localProc();
P8();
P351();
P600();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P640 in the procedure';
end-proc;