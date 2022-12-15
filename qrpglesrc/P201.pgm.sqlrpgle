**free

ctl-opt dftactgrp(*no);

dcl-pi P201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds theTable extname('T266') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T266 LIMIT 1;

theCharVar = 'Hello from P201';
dsply theCharVar;
callp localProc();
P45();
P128();
P146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P201 in the procedure';
end-proc;