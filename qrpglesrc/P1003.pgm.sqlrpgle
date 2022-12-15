**free

ctl-opt dftactgrp(*no);

dcl-pi P1003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds T525 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T525 FROM T525 LIMIT 1;

theCharVar = 'Hello from P1003';
dsply theCharVar;
callp localProc();
P242();
P338();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1003 in the procedure';
end-proc;