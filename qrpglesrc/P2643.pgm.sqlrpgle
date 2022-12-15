**free

ctl-opt dftactgrp(*no);

dcl-pi P2643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P1996.rpgleinc'
/copy 'qrpgleref/P1951.rpgleinc'

dcl-ds T517 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T517 FROM T517 LIMIT 1;

theCharVar = 'Hello from P2643';
dsply theCharVar;
callp localProc();
P180();
P1996();
P1951();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2643 in the procedure';
end-proc;