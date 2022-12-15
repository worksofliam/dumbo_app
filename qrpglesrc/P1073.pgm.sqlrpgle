**free

ctl-opt dftactgrp(*no);

dcl-pi P1073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P911.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P1073';
dsply theCharVar;
callp localProc();
P557();
P911();
P605();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1073 in the procedure';
end-proc;