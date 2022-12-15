**free

ctl-opt dftactgrp(*no);

dcl-pi P1688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P544.rpgleinc'
/copy 'qrpgleref/P1680.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'

dcl-ds T728 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T728 FROM T728 LIMIT 1;

theCharVar = 'Hello from P1688';
dsply theCharVar;
callp localProc();
P544();
P1680();
P817();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1688 in the procedure';
end-proc;