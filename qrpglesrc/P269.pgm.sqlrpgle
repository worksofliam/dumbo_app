**free

ctl-opt dftactgrp(*no);

dcl-pi P269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds T645 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T645 FROM T645 LIMIT 1;

theCharVar = 'Hello from P269';
dsply theCharVar;
callp localProc();
P166();
P124();
P252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P269 in the procedure';
end-proc;