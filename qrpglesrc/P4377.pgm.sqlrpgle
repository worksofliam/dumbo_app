**free

ctl-opt dftactgrp(*no);

dcl-pi P4377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1924.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P641.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P4377';
dsply theCharVar;
callp localProc();
P1924();
P265();
P641();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4377 in the procedure';
end-proc;