**free

ctl-opt dftactgrp(*no);

dcl-pi P1861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P1314.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P1861';
dsply theCharVar;
callp localProc();
P899();
P208();
P1314();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1861 in the procedure';
end-proc;