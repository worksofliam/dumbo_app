**free

ctl-opt dftactgrp(*no);

dcl-pi P787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'

dcl-ds T1114 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1114 FROM T1114 LIMIT 1;

theCharVar = 'Hello from P787';
dsply theCharVar;
callp localProc();
P26();
P383();
P786();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P787 in the procedure';
end-proc;