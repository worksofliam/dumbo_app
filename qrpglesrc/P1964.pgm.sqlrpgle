**free

ctl-opt dftactgrp(*no);

dcl-pi P1964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P1848.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P1964';
dsply theCharVar;
callp localProc();
P1479();
P739();
P1848();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1964 in the procedure';
end-proc;