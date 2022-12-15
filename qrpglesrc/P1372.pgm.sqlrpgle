**free

ctl-opt dftactgrp(*no);

dcl-pi P1372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P1372';
dsply theCharVar;
callp localProc();
P294();
P146();
P1312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1372 in the procedure';
end-proc;