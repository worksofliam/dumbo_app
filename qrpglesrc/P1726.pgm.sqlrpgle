**free

ctl-opt dftactgrp(*no);

dcl-pi P1726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P1270.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'

dcl-ds theTable extname('T742') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T742 LIMIT 1;

theCharVar = 'Hello from P1726';
dsply theCharVar;
callp localProc();
P1399();
P1270();
P1169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1726 in the procedure';
end-proc;