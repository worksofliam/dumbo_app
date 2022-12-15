**free

ctl-opt dftactgrp(*no);

dcl-pi P718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P718';
dsply theCharVar;
callp localProc();
P288();
P146();
P195();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P718 in the procedure';
end-proc;