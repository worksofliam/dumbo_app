**free

ctl-opt dftactgrp(*no);

dcl-pi P258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds T238 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T238 FROM T238 LIMIT 1;

theCharVar = 'Hello from P258';
dsply theCharVar;
callp localProc();
P243();
P128();
P156();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P258 in the procedure';
end-proc;