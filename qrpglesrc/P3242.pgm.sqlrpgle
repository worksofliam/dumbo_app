**free

ctl-opt dftactgrp(*no);

dcl-pi P3242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P409.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'
/copy 'qrpgleref/P834.rpgleinc'

dcl-ds theTable extname('T764') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T764 LIMIT 1;

theCharVar = 'Hello from P3242';
dsply theCharVar;
callp localProc();
P409();
P2199();
P834();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3242 in the procedure';
end-proc;