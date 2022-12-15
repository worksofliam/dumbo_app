**free

ctl-opt dftactgrp(*no);

dcl-pi P26;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T904') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T904 LIMIT 1;

theCharVar = 'Hello from P26';
dsply theCharVar;
callp localProc();
P9();
P10();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P26 in the procedure';
end-proc;