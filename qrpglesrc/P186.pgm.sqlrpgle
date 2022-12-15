**free

ctl-opt dftactgrp(*no);

dcl-pi P186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds theTable extname('T269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T269 LIMIT 1;

theCharVar = 'Hello from P186';
dsply theCharVar;
callp localProc();
P96();
P8();
P113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P186 in the procedure';
end-proc;