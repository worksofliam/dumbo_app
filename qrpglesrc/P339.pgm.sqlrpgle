**free

ctl-opt dftactgrp(*no);

dcl-pi P339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds T55 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T55 FROM T55 LIMIT 1;

theCharVar = 'Hello from P339';
dsply theCharVar;
callp localProc();
P31();
P34();
P48();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P339 in the procedure';
end-proc;