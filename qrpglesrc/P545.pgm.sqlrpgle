**free

ctl-opt dftactgrp(*no);

dcl-pi P545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P545';
dsply theCharVar;
callp localProc();
P430();
P447();
P537();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P545 in the procedure';
end-proc;