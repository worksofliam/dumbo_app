**free

ctl-opt dftactgrp(*no);

dcl-pi P236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'

dcl-ds T53 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T53 FROM T53 LIMIT 1;

theCharVar = 'Hello from P236';
dsply theCharVar;
callp localProc();
P33();
P43();
P191();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P236 in the procedure';
end-proc;