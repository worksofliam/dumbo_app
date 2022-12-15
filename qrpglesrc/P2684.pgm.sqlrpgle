**free

ctl-opt dftactgrp(*no);

dcl-pi P2684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2126.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P874.rpgleinc'

dcl-ds T483 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T483 FROM T483 LIMIT 1;

theCharVar = 'Hello from P2684';
dsply theCharVar;
callp localProc();
P2126();
P785();
P874();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2684 in the procedure';
end-proc;