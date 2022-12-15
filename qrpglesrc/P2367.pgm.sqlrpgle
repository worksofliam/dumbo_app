**free

ctl-opt dftactgrp(*no);

dcl-pi P2367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1401.rpgleinc'
/copy 'qrpgleref/P2073.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'

dcl-ds T726 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T726 FROM T726 LIMIT 1;

theCharVar = 'Hello from P2367';
dsply theCharVar;
callp localProc();
P1401();
P2073();
P923();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2367 in the procedure';
end-proc;