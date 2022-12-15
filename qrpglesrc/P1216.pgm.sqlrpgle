**free

ctl-opt dftactgrp(*no);

dcl-pi P1216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds theTable extname('T720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T720 LIMIT 1;

theCharVar = 'Hello from P1216';
dsply theCharVar;
callp localProc();
P720();
P1096();
P643();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1216 in the procedure';
end-proc;