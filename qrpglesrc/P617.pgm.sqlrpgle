**free

ctl-opt dftactgrp(*no);

dcl-pi P617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds theTable extname('T340') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T340 LIMIT 1;

theCharVar = 'Hello from P617';
dsply theCharVar;
callp localProc();
P358();
P330();
P326();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P617 in the procedure';
end-proc;