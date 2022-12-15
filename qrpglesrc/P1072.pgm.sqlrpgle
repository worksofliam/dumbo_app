**free

ctl-opt dftactgrp(*no);

dcl-pi P1072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'

dcl-ds T625 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T625 FROM T625 LIMIT 1;

theCharVar = 'Hello from P1072';
dsply theCharVar;
callp localProc();
P203();
P34();
P777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1072 in the procedure';
end-proc;