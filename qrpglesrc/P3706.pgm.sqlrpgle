**free

ctl-opt dftactgrp(*no);

dcl-pi P3706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3044.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P3664.rpgleinc'

dcl-ds theTable extname('T685') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T685 LIMIT 1;

theCharVar = 'Hello from P3706';
dsply theCharVar;
callp localProc();
P3044();
P450();
P3664();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3706 in the procedure';
end-proc;