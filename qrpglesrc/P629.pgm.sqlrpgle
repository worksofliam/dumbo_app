**free

ctl-opt dftactgrp(*no);

dcl-pi P629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds T277 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T277 FROM T277 LIMIT 1;

theCharVar = 'Hello from P629';
dsply theCharVar;
callp localProc();
P297();
P396();
P386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P629 in the procedure';
end-proc;