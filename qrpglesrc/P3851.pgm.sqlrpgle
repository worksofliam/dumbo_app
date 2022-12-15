**free

ctl-opt dftactgrp(*no);

dcl-pi P3851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P2418.rpgleinc'
/copy 'qrpgleref/P2014.rpgleinc'

dcl-ds T62 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T62 FROM T62 LIMIT 1;

theCharVar = 'Hello from P3851';
dsply theCharVar;
callp localProc();
P783();
P2418();
P2014();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3851 in the procedure';
end-proc;