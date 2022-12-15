**free

ctl-opt dftactgrp(*no);

dcl-pi P1386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1050.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P1253.rpgleinc'

dcl-ds T844 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T844 FROM T844 LIMIT 1;

theCharVar = 'Hello from P1386';
dsply theCharVar;
callp localProc();
P1050();
P786();
P1253();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1386 in the procedure';
end-proc;