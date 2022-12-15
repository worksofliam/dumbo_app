**free

ctl-opt dftactgrp(*no);

dcl-pi P1112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P1009.rpgleinc'
/copy 'qrpgleref/P804.rpgleinc'

dcl-ds T1784 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1784 FROM T1784 LIMIT 1;

theCharVar = 'Hello from P1112';
dsply theCharVar;
callp localProc();
P964();
P1009();
P804();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1112 in the procedure';
end-proc;