**free

ctl-opt dftactgrp(*no);

dcl-pi P3858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2046.rpgleinc'
/copy 'qrpgleref/P2478.rpgleinc'
/copy 'qrpgleref/P1081.rpgleinc'

dcl-ds T85 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T85 FROM T85 LIMIT 1;

theCharVar = 'Hello from P3858';
dsply theCharVar;
callp localProc();
P2046();
P2478();
P1081();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3858 in the procedure';
end-proc;