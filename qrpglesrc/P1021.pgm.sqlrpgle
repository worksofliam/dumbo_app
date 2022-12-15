**free

ctl-opt dftactgrp(*no);

dcl-pi P1021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds T683 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T683 FROM T683 LIMIT 1;

theCharVar = 'Hello from P1021';
dsply theCharVar;
callp localProc();
P812();
P699();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1021 in the procedure';
end-proc;