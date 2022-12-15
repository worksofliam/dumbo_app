**free

ctl-opt dftactgrp(*no);

dcl-pi P15;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T332 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T332 FROM T332 LIMIT 1;

theCharVar = 'Hello from P15';
dsply theCharVar;
callp localProc();
P8();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P15 in the procedure';
end-proc;