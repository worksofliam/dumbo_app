**free

ctl-opt dftactgrp(*no);

dcl-pi P89;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T34 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T34 FROM T34 LIMIT 1;

theCharVar = 'Hello from P89';
dsply theCharVar;
callp localProc();
P20();
P4();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P89 in the procedure';
end-proc;