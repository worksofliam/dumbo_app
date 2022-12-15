**free

ctl-opt dftactgrp(*no);

dcl-pi P942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'

dcl-ds T209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T209 FROM T209 LIMIT 1;

theCharVar = 'Hello from P942';
dsply theCharVar;
callp localProc();
P787();
P45();
P842();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P942 in the procedure';
end-proc;