**free

ctl-opt dftactgrp(*no);

dcl-pi P1852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T496 LIMIT 1;

theCharVar = 'Hello from P1852';
dsply theCharVar;
callp localProc();
P161();
P900();
P820();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1852 in the procedure';
end-proc;