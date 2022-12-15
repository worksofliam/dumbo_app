**free

ctl-opt dftactgrp(*no);

dcl-pi P3715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3670.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P1914.rpgleinc'

dcl-ds T713 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T713 FROM T713 LIMIT 1;

theCharVar = 'Hello from P3715';
dsply theCharVar;
callp localProc();
P3670();
P460();
P1914();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3715 in the procedure';
end-proc;