**free

ctl-opt dftactgrp(*no);

dcl-pi P1531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P694.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'
/copy 'qrpgleref/P1260.rpgleinc'

dcl-ds T582 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T582 FROM T582 LIMIT 1;

theCharVar = 'Hello from P1531';
dsply theCharVar;
callp localProc();
P694();
P1024();
P1260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1531 in the procedure';
end-proc;