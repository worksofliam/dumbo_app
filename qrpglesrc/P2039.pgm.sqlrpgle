**free

ctl-opt dftactgrp(*no);

dcl-pi P2039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1782.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P1531.rpgleinc'

dcl-ds T427 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T427 FROM T427 LIMIT 1;

theCharVar = 'Hello from P2039';
dsply theCharVar;
callp localProc();
P1782();
P797();
P1531();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2039 in the procedure';
end-proc;