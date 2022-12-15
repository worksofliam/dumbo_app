**free

ctl-opt dftactgrp(*no);

dcl-pi P383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds T869 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T869 FROM T869 LIMIT 1;

theCharVar = 'Hello from P383';
dsply theCharVar;
callp localProc();
P267();
P209();
P375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P383 in the procedure';
end-proc;