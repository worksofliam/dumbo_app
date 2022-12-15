**free

ctl-opt dftactgrp(*no);

dcl-pi P1924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds T159 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T159 FROM T159 LIMIT 1;

theCharVar = 'Hello from P1924';
dsply theCharVar;
callp localProc();
P1239();
P355();
P66();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1924 in the procedure';
end-proc;