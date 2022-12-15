**free

ctl-opt dftactgrp(*no);

dcl-pi P382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds T15 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T15 FROM T15 LIMIT 1;

theCharVar = 'Hello from P382';
dsply theCharVar;
callp localProc();
P60();
P94();
P375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P382 in the procedure';
end-proc;