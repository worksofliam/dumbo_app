**free

ctl-opt dftactgrp(*no);

dcl-pi P565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P565';
dsply theCharVar;
callp localProc();
P521();
P211();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P565 in the procedure';
end-proc;