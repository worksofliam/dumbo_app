**free

ctl-opt dftactgrp(*no);

dcl-pi P537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P537';
dsply theCharVar;
callp localProc();
P287();
P148();
P212();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P537 in the procedure';
end-proc;