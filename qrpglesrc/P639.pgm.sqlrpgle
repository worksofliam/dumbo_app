**free

ctl-opt dftactgrp(*no);

dcl-pi P639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds T894 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T894 FROM T894 LIMIT 1;

theCharVar = 'Hello from P639';
dsply theCharVar;
callp localProc();
P96();
P513();
P208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P639 in the procedure';
end-proc;