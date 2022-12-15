**free

ctl-opt dftactgrp(*no);

dcl-pi P3107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P2409.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'

dcl-ds T171 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T171 FROM T171 LIMIT 1;

theCharVar = 'Hello from P3107';
dsply theCharVar;
callp localProc();
P622();
P2409();
P283();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3107 in the procedure';
end-proc;