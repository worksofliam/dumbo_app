**free

ctl-opt dftactgrp(*no);

dcl-pi P574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds T283 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T283 FROM T283 LIMIT 1;

theCharVar = 'Hello from P574';
dsply theCharVar;
callp localProc();
P8();
P409();
P515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P574 in the procedure';
end-proc;