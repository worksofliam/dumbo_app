**free

ctl-opt dftactgrp(*no);

dcl-pi P614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'

dcl-ds T811 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T811 FROM T811 LIMIT 1;

theCharVar = 'Hello from P614';
dsply theCharVar;
callp localProc();
P382();
P128();
P513();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P614 in the procedure';
end-proc;