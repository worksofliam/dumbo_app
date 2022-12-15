**free

ctl-opt dftactgrp(*no);

dcl-pi P3361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3265.rpgleinc'
/copy 'qrpgleref/P3294.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T1143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1143 LIMIT 1;

theCharVar = 'Hello from P3361';
dsply theCharVar;
callp localProc();
P3265();
P3294();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3361 in the procedure';
end-proc;