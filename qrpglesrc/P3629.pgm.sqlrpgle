**free

ctl-opt dftactgrp(*no);

dcl-pi P3629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P2696.rpgleinc'
/copy 'qrpgleref/P1883.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P3629';
dsply theCharVar;
callp localProc();
P605();
P2696();
P1883();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3629 in the procedure';
end-proc;