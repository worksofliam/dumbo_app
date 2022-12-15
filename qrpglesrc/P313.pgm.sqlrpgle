**free

ctl-opt dftactgrp(*no);

dcl-pi P313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T771') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T771 LIMIT 1;

theCharVar = 'Hello from P313';
dsply theCharVar;
callp localProc();
P128();
P49();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P313 in the procedure';
end-proc;