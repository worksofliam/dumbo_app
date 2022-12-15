**free

ctl-opt dftactgrp(*no);

dcl-pi P3640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P3010.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'

dcl-ds theTable extname('T1139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1139 LIMIT 1;

theCharVar = 'Hello from P3640';
dsply theCharVar;
callp localProc();
P668();
P3010();
P767();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3640 in the procedure';
end-proc;