**free

ctl-opt dftactgrp(*no);

dcl-pi P627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P627';
dsply theCharVar;
callp localProc();
P3();
P130();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P627 in the procedure';
end-proc;