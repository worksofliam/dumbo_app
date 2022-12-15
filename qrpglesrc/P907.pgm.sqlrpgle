**free

ctl-opt dftactgrp(*no);

dcl-pi P907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T59') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T59 LIMIT 1;

theCharVar = 'Hello from P907';
dsply theCharVar;
callp localProc();
P598();
P207();
P192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P907 in the procedure';
end-proc;