**free

ctl-opt dftactgrp(*no);

dcl-pi P4047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P3777.rpgleinc'

dcl-ds T898 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T898 FROM T898 LIMIT 1;

theCharVar = 'Hello from P4047';
dsply theCharVar;
callp localProc();
P117();
P844();
P3777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4047 in the procedure';
end-proc;