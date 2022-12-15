**free

ctl-opt dftactgrp(*no);

dcl-pi P5203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P1377.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds T1645 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1645 FROM T1645 LIMIT 1;

theCharVar = 'Hello from P5203';
dsply theCharVar;
callp localProc();
P782();
P1377();
P240();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5203 in the procedure';
end-proc;