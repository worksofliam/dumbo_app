**free

ctl-opt dftactgrp(*no);

dcl-pi P806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P806';
dsply theCharVar;
callp localProc();
P717();
P361();
P255();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P806 in the procedure';
end-proc;