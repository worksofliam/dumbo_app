**free

ctl-opt dftactgrp(*no);

dcl-pi P979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds T60 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T60 FROM T60 LIMIT 1;

theCharVar = 'Hello from P979';
dsply theCharVar;
callp localProc();
P81();
P351();
P76();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P979 in the procedure';
end-proc;