**free

ctl-opt dftactgrp(*no);

dcl-pi P1100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1092.rpgleinc'
/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P853.rpgleinc'

dcl-ds T721 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T721 FROM T721 LIMIT 1;

theCharVar = 'Hello from P1100';
dsply theCharVar;
callp localProc();
P1092();
P592();
P853();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1100 in the procedure';
end-proc;