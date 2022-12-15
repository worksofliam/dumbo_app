**free

ctl-opt dftactgrp(*no);

dcl-pi P1586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P1485.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'

dcl-ds T1372 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1372 FROM T1372 LIMIT 1;

theCharVar = 'Hello from P1586';
dsply theCharVar;
callp localProc();
P416();
P1485();
P873();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1586 in the procedure';
end-proc;