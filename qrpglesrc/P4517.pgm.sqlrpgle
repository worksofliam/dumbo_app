**free

ctl-opt dftactgrp(*no);

dcl-pi P4517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P1316.rpgleinc'

dcl-ds theTable extname('T830') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T830 LIMIT 1;

theCharVar = 'Hello from P4517';
dsply theCharVar;
callp localProc();
P564();
P361();
P1316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4517 in the procedure';
end-proc;