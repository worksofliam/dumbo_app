**free

ctl-opt dftactgrp(*no);

dcl-pi P2227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1958.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P1702.rpgleinc'

dcl-ds T790 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T790 FROM T790 LIMIT 1;

theCharVar = 'Hello from P2227';
dsply theCharVar;
callp localProc();
P1958();
P531();
P1702();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2227 in the procedure';
end-proc;