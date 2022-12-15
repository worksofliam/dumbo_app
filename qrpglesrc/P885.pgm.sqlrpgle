**free

ctl-opt dftactgrp(*no);

dcl-pi P885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'

dcl-ds T903 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T903 FROM T903 LIMIT 1;

theCharVar = 'Hello from P885';
dsply theCharVar;
callp localProc();
P182();
P58();
P381();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P885 in the procedure';
end-proc;