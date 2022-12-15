**free

ctl-opt dftactgrp(*no);

dcl-pi P34;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds T165 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T165 FROM T165 LIMIT 1;

theCharVar = 'Hello from P34';
dsply theCharVar;
callp localProc();
P12();
P0();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P34 in the procedure';
end-proc;