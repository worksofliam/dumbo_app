**free

ctl-opt dftactgrp(*no);

dcl-pi P110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds T995 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T995 FROM T995 LIMIT 1;

theCharVar = 'Hello from P110';
dsply theCharVar;
callp localProc();
P27();
P32();
P80();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P110 in the procedure';
end-proc;