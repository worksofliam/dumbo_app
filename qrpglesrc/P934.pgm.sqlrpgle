**free

ctl-opt dftactgrp(*no);

dcl-pi P934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'

dcl-ds theTable extname('T1202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1202 LIMIT 1;

theCharVar = 'Hello from P934';
dsply theCharVar;
callp localProc();
P450();
P140();
P534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P934 in the procedure';
end-proc;