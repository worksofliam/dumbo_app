**free

ctl-opt dftactgrp(*no);

dcl-pi P1530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P958.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'

dcl-ds T763 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T763 FROM T763 LIMIT 1;

theCharVar = 'Hello from P1530';
dsply theCharVar;
callp localProc();
P958();
P1222();
P679();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1530 in the procedure';
end-proc;