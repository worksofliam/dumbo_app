**free

ctl-opt dftactgrp(*no);

dcl-pi P785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'

dcl-ds theTable extname('T1182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1182 LIMIT 1;

theCharVar = 'Hello from P785';
dsply theCharVar;
callp localProc();
P274();
P714();
P587();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P785 in the procedure';
end-proc;