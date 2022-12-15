**free

ctl-opt dftactgrp(*no);

dcl-pi P390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds T96 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T96 FROM T96 LIMIT 1;

theCharVar = 'Hello from P390';
dsply theCharVar;
callp localProc();
P264();
P256();
P166();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P390 in the procedure';
end-proc;