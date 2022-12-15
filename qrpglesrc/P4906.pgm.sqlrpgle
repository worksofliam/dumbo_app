**free

ctl-opt dftactgrp(*no);

dcl-pi P4906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2101.rpgleinc'
/copy 'qrpgleref/P2921.rpgleinc'
/copy 'qrpgleref/P2498.rpgleinc'

dcl-ds theTable extname('T411') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T411 LIMIT 1;

theCharVar = 'Hello from P4906';
dsply theCharVar;
P2101();
P2921();
P2498();
return;