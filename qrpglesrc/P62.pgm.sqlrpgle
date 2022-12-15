**free

ctl-opt dftactgrp(*no);

dcl-pi P62;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds T64 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T64 FROM T64 LIMIT 1;

theCharVar = 'Hello from P62';
dsply theCharVar;
callp localProc();
P12();
P14();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P62 in the procedure';
end-proc;