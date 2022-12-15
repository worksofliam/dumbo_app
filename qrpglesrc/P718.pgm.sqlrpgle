**free

ctl-opt dftactgrp(*no);

dcl-pi P718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds T347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T347 FROM T347 LIMIT 1;

theCharVar = 'Hello from P718';
dsply theCharVar;
callp localProc();
P44();
P473();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P718 in the procedure';
end-proc;