**free

ctl-opt dftactgrp(*no);

dcl-pi P323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds T797 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T797 FROM T797 LIMIT 1;

theCharVar = 'Hello from P323';
dsply theCharVar;
callp localProc();
P44();
P242();
P172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P323 in the procedure';
end-proc;