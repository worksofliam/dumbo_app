**free

ctl-opt dftactgrp(*no);

dcl-pi P224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds T123 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T123 FROM T123 LIMIT 1;

theCharVar = 'Hello from P224';
dsply theCharVar;
callp localProc();
P197();
P20();
P115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P224 in the procedure';
end-proc;