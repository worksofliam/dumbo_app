**free

ctl-opt dftactgrp(*no);

dcl-pi P61;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds T347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T347 FROM T347 LIMIT 1;

theCharVar = 'Hello from P61';
dsply theCharVar;
callp localProc();
P48();
P44();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P61 in the procedure';
end-proc;