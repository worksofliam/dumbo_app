**free

ctl-opt dftactgrp(*no);

dcl-pi P493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P432.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'

dcl-ds T1248 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1248 FROM T1248 LIMIT 1;

theCharVar = 'Hello from P493';
dsply theCharVar;
callp localProc();
P432();
P249();
P242();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P493 in the procedure';
end-proc;