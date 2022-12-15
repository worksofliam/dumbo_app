**free

ctl-opt dftactgrp(*no);

dcl-pi P2334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P2103.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds T993 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T993 FROM T993 LIMIT 1;

theCharVar = 'Hello from P2334';
dsply theCharVar;
callp localProc();
P548();
P2103();
P243();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2334 in the procedure';
end-proc;