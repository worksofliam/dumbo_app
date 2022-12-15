**free

ctl-opt dftactgrp(*no);

dcl-pi P1163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'

dcl-ds T278 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T278 FROM T278 LIMIT 1;

theCharVar = 'Hello from P1163';
dsply theCharVar;
callp localProc();
P177();
P621();
P517();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1163 in the procedure';
end-proc;