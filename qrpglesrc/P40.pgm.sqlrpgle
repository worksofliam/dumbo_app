**free

ctl-opt dftactgrp(*no);

dcl-pi P40;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds T119 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T119 FROM T119 LIMIT 1;

theCharVar = 'Hello from P40';
dsply theCharVar;
callp localProc();
P12();
P6();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P40 in the procedure';
end-proc;