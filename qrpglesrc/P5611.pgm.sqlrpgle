**free

ctl-opt dftactgrp(*no);

dcl-pi P5611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P3020.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'

dcl-ds T1736 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1736 FROM T1736 LIMIT 1;

theCharVar = 'Hello from P5611';
dsply theCharVar;
callp localProc();
P277();
P3020();
P844();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5611 in the procedure';
end-proc;