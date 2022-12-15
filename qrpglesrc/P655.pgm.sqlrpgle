**free

ctl-opt dftactgrp(*no);

dcl-pi P655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'

dcl-ds T64 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T64 FROM T64 LIMIT 1;

theCharVar = 'Hello from P655';
dsply theCharVar;
callp localProc();
P166();
P336();
P566();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P655 in the procedure';
end-proc;