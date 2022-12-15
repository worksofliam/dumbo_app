**free

ctl-opt dftactgrp(*no);

dcl-pi P29;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds T496 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T496 FROM T496 LIMIT 1;

theCharVar = 'Hello from P29';
dsply theCharVar;
callp localProc();
P14();
P7();
P21();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P29 in the procedure';
end-proc;