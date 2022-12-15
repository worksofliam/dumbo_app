**free

ctl-opt dftactgrp(*no);

dcl-pi P457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds theTable extname('T1616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1616 LIMIT 1;

theCharVar = 'Hello from P457';
dsply theCharVar;
callp localProc();
P371();
P444();
P128();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P457 in the procedure';
end-proc;