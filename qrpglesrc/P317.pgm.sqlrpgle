**free

ctl-opt dftactgrp(*no);

dcl-pi P317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'

dcl-ds T103 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T103 FROM T103 LIMIT 1;

theCharVar = 'Hello from P317';
dsply theCharVar;
callp localProc();
P208();
P229();
P280();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P317 in the procedure';
end-proc;