**free

ctl-opt dftactgrp(*no);

dcl-pi P265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T1196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1196 LIMIT 1;

theCharVar = 'Hello from P265';
dsply theCharVar;
P41();
P15();
P7();
return;