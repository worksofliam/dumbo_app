**free

ctl-opt dftactgrp(*no);

dcl-pi P184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P184';
dsply theCharVar;
callp localProc();
P124();
P21();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P184 in the procedure';
end-proc;