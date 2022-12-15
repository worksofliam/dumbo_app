**free

ctl-opt dftactgrp(*no);

dcl-pi P1737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1587.rpgleinc'
/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P1444.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P1737';
dsply theCharVar;
P1587();
P1614();
P1444();
return;