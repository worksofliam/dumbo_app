**free

ctl-opt dftactgrp(*no);

dcl-pi P1990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds theTable extname('T825') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T825 LIMIT 1;

theCharVar = 'Hello from P1990';
dsply theCharVar;
callp localProc();
P265();
P470();
P765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1990 in the procedure';
end-proc;