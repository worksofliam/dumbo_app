**free

ctl-opt dftactgrp(*no);

dcl-pi P3650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3082.rpgleinc'
/copy 'qrpgleref/P3379.rpgleinc'
/copy 'qrpgleref/P1535.rpgleinc'

dcl-ds T300 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T300 FROM T300 LIMIT 1;

theCharVar = 'Hello from P3650';
dsply theCharVar;
callp localProc();
P3082();
P3379();
P1535();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3650 in the procedure';
end-proc;