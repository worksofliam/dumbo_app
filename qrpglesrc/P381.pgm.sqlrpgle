**free

ctl-opt dftactgrp(*no);

dcl-pi P381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds T137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T137 FROM T137 LIMIT 1;

theCharVar = 'Hello from P381';
dsply theCharVar;
callp localProc();
P335();
P224();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P381 in the procedure';
end-proc;