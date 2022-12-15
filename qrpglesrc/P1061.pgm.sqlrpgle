**free

ctl-opt dftactgrp(*no);

dcl-pi P1061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds T565 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T565 FROM T565 LIMIT 1;

theCharVar = 'Hello from P1061';
dsply theCharVar;
callp localProc();
P832();
P215();
P929();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1061 in the procedure';
end-proc;