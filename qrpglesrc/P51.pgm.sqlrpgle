**free

ctl-opt dftactgrp(*no);

dcl-pi P51;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P51';
dsply theCharVar;
callp localProc();
P19();
P39();
P36();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P51 in the procedure';
end-proc;