**free

ctl-opt dftactgrp(*no);

dcl-pi P4836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4828.rpgleinc'
/copy 'qrpgleref/P2165.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'

dcl-ds T662 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T662 FROM T662 LIMIT 1;

theCharVar = 'Hello from P4836';
dsply theCharVar;
callp localProc();
P4828();
P2165();
P492();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4836 in the procedure';
end-proc;