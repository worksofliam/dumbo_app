**free

ctl-opt dftactgrp(*no);

dcl-pi P3182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2437.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'

dcl-ds T881 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T881 FROM T881 LIMIT 1;

theCharVar = 'Hello from P3182';
dsply theCharVar;
callp localProc();
P2437();
P353();
P2070();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3182 in the procedure';
end-proc;