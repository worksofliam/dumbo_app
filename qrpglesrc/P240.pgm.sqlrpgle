**free

ctl-opt dftactgrp(*no);

dcl-pi P240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P240';
dsply theCharVar;
callp localProc();
P171();
P13();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P240 in the procedure';
end-proc;