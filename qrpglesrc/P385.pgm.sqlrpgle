**free

ctl-opt dftactgrp(*no);

dcl-pi P385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'

dcl-ds T30 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T30 FROM T30 LIMIT 1;

theCharVar = 'Hello from P385';
dsply theCharVar;
callp localProc();
P207();
P322();
P306();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P385 in the procedure';
end-proc;