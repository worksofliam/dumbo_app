**free

ctl-opt dftactgrp(*no);

dcl-pi P583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P583';
dsply theCharVar;
callp localProc();
P128();
P224();
P103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P583 in the procedure';
end-proc;