**free

ctl-opt dftactgrp(*no);

dcl-pi P1549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P1375.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'

dcl-ds T290 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T290 FROM T290 LIMIT 1;

theCharVar = 'Hello from P1549';
dsply theCharVar;
callp localProc();
P612();
P1375();
P382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1549 in the procedure';
end-proc;