**free

ctl-opt dftactgrp(*no);

dcl-pi P578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds T327 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T327 FROM T327 LIMIT 1;

theCharVar = 'Hello from P578';
dsply theCharVar;
callp localProc();
P386();
P240();
P314();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P578 in the procedure';
end-proc;