**free

ctl-opt dftactgrp(*no);

dcl-pi P671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds theTable extname('T1196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1196 LIMIT 1;

theCharVar = 'Hello from P671';
dsply theCharVar;
callp localProc();
P329();
P241();
P97();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P671 in the procedure';
end-proc;