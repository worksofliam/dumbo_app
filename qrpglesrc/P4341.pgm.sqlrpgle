**free

ctl-opt dftactgrp(*no);

dcl-pi P4341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3849.rpgleinc'
/copy 'qrpgleref/P1782.rpgleinc'
/copy 'qrpgleref/P1628.rpgleinc'

dcl-ds T1740 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1740 FROM T1740 LIMIT 1;

theCharVar = 'Hello from P4341';
dsply theCharVar;
callp localProc();
P3849();
P1782();
P1628();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4341 in the procedure';
end-proc;