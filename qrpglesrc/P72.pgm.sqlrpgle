**free

ctl-opt dftactgrp(*no);

dcl-pi P72;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'

dcl-ds theTable extname('T519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T519 LIMIT 1;

theCharVar = 'Hello from P72';
dsply theCharVar;
callp localProc();
P67();
P6();
P41();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P72 in the procedure';
end-proc;