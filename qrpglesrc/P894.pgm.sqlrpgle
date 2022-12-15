**free

ctl-opt dftactgrp(*no);

dcl-pi P894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P792.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T1233') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1233 LIMIT 1;

theCharVar = 'Hello from P894';
dsply theCharVar;
callp localProc();
P792();
P358();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P894 in the procedure';
end-proc;