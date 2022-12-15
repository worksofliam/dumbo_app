**free

ctl-opt dftactgrp(*no);

dcl-pi P2190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1262.rpgleinc'
/copy 'qrpgleref/P636.rpgleinc'
/copy 'qrpgleref/P2035.rpgleinc'

dcl-ds T845 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T845 FROM T845 LIMIT 1;

theCharVar = 'Hello from P2190';
dsply theCharVar;
callp localProc();
P1262();
P636();
P2035();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2190 in the procedure';
end-proc;