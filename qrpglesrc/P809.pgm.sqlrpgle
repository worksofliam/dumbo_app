**free

ctl-opt dftactgrp(*no);

dcl-pi P809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T367 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T367 FROM T367 LIMIT 1;

theCharVar = 'Hello from P809';
dsply theCharVar;
callp localProc();
P524();
P594();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P809 in the procedure';
end-proc;