**free

ctl-opt dftactgrp(*no);

dcl-pi P3131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2651.rpgleinc'
/copy 'qrpgleref/P1273.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'

dcl-ds T624 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T624 FROM T624 LIMIT 1;

theCharVar = 'Hello from P3131';
dsply theCharVar;
callp localProc();
P2651();
P1273();
P148();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3131 in the procedure';
end-proc;