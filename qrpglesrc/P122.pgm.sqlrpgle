**free

ctl-opt dftactgrp(*no);

dcl-pi P122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds T146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T146 FROM T146 LIMIT 1;

theCharVar = 'Hello from P122';
dsply theCharVar;
callp localProc();
P106();
P34();
P112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P122 in the procedure';
end-proc;