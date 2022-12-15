**free

ctl-opt dftactgrp(*no);

dcl-pi P142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T1021') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1021 LIMIT 1;

theCharVar = 'Hello from P142';
dsply theCharVar;
callp localProc();
P1();
P101();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P142 in the procedure';
end-proc;