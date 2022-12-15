**free

ctl-opt dftactgrp(*no);

dcl-pi P2864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'

dcl-ds T227 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T227 FROM T227 LIMIT 1;

theCharVar = 'Hello from P2864';
dsply theCharVar;
callp localProc();
P1006();
P974();
P531();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2864 in the procedure';
end-proc;