**free

ctl-opt dftactgrp(*no);

dcl-pi P392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds T4 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T4 FROM T4 LIMIT 1;

theCharVar = 'Hello from P392';
dsply theCharVar;
callp localProc();
P389();
P151();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P392 in the procedure';
end-proc;