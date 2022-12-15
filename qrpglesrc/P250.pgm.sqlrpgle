**free

ctl-opt dftactgrp(*no);

dcl-pi P250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'

dcl-ds T973 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T973 FROM T973 LIMIT 1;

theCharVar = 'Hello from P250';
dsply theCharVar;
callp localProc();
P68();
P209();
P242();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P250 in the procedure';
end-proc;