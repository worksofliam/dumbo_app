**free

ctl-opt dftactgrp(*no);

dcl-pi P3565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P2047.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P3565';
dsply theCharVar;
callp localProc();
P549();
P2047();
P192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3565 in the procedure';
end-proc;