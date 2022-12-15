**free

ctl-opt dftactgrp(*no);

dcl-pi P43;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T1012') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1012 LIMIT 1;

theCharVar = 'Hello from P43';
dsply theCharVar;
callp localProc();
P11();
P3();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P43 in the procedure';
end-proc;