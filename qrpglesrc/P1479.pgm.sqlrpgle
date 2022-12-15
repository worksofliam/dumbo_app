**free

ctl-opt dftactgrp(*no);

dcl-pi P1479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P1053.rpgleinc'
/copy 'qrpgleref/P1083.rpgleinc'

dcl-ds T597 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T597 FROM T597 LIMIT 1;

theCharVar = 'Hello from P1479';
dsply theCharVar;
callp localProc();
P256();
P1053();
P1083();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1479 in the procedure';
end-proc;