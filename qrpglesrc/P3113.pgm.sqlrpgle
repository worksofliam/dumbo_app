**free

ctl-opt dftactgrp(*no);

dcl-pi P3113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P1639.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'

dcl-ds T1765 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1765 FROM T1765 LIMIT 1;

theCharVar = 'Hello from P3113';
dsply theCharVar;
callp localProc();
P176();
P1639();
P1237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3113 in the procedure';
end-proc;