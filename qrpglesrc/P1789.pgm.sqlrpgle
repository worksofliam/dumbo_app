**free

ctl-opt dftactgrp(*no);

dcl-pi P1789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1132.rpgleinc'
/copy 'qrpgleref/P1750.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T514') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T514 LIMIT 1;

theCharVar = 'Hello from P1789';
dsply theCharVar;
callp localProc();
P1132();
P1750();
P112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1789 in the procedure';
end-proc;