**free

ctl-opt dftactgrp(*no);

dcl-pi P53;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T291') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T291 LIMIT 1;

theCharVar = 'Hello from P53';
dsply theCharVar;
callp localProc();
P49();
P44();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P53 in the procedure';
end-proc;