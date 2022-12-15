**free

ctl-opt dftactgrp(*no);

dcl-pi P4036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3222.rpgleinc'
/copy 'qrpgleref/P3975.rpgleinc'
/copy 'qrpgleref/P3826.rpgleinc'

dcl-ds T933 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T933 FROM T933 LIMIT 1;

theCharVar = 'Hello from P4036';
dsply theCharVar;
callp localProc();
P3222();
P3975();
P3826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4036 in the procedure';
end-proc;