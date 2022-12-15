**free

ctl-opt dftactgrp(*no);

dcl-pi P3585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3460.rpgleinc'
/copy 'qrpgleref/P2318.rpgleinc'
/copy 'qrpgleref/P2868.rpgleinc'

dcl-ds T947 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T947 FROM T947 LIMIT 1;

theCharVar = 'Hello from P3585';
dsply theCharVar;
callp localProc();
P3460();
P2318();
P2868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3585 in the procedure';
end-proc;