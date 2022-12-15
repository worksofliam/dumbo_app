**free

ctl-opt dftactgrp(*no);

dcl-pi P113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P113';
dsply theCharVar;
callp localProc();
P31();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P113 in the procedure';
end-proc;